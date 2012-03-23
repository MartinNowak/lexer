module lexer;

import std.algorithm, std.conv, std.exception, std.functional, std.range, std.string, std.traits, std.typetuple;

/*
 * TokenDeclaration
 *   name    - used to define enum member
 *   pattern - used as lexer pattern
 *   action  - expression to evaluate when pattern is matched
 */
struct TokenDeclaration(R)
{
    string _name;
    R _pattern;
    string _action;
}

/*
 * First stage of lexer. Defines an enum from the token names.
 * Template Parameters:
 *      R - type of input range
 *      TokenSpec - An array which is used to declare an enum and
 *          define matching patterns. Entries are sequential. Each
 *          entry should consist of a name of type string, a pattern
 *          of type R and optionally an action of type string. A
 *          pattern might be empty in which case an enum member is
 *          declared but it is never matched. Names can be duplicated
 *          to declare multiple patterns that match the same token.
 *          Actions need to be a string expression of a callable with
 *          the signature Token(Tok id, ref R start, size_t len).

Example:
----
alias TokenDeclaration!string tok;

enum TokenSpec = [
    tok("gt"   , ">" ,              ),
    tok("ge"   , ">=",              ),
    tok("lt"   , "<" ,              ),
    tok("le"   , "<=",              ),
    tok("plus" , "a+", q{binary!'+'}),
    tok("plus" , "+a", q{unary!'+'} ),
    tok("tilde", "~" ,
];
----
 */
template Lexer1(R, alias decls)
{
    alias defineToken!(eagerMap!q{a._name}(decls)) Lexer1;
}

/*
 * Second stage of lexer. Declares lexer fields, methods and range interface.
 * This mixin is intended to be instatiated at struct scope.
 * Template Parameters:
 *      R - type of input range
 *      defaultAction - called when a token pattern is matched
 *      skipAction - called once when input is set and then after each match
 *      recoverAction - called when input could not be matched
 *      TokenSpec - same as for Lexer1
 *

Example:
----
module beanlexer;

import std.conv, std.stdio, std.range, std.typetuple, lexer;

struct Bean
{
    int opCmp(in Bean rhs) const
    {
        return c - rhs.c;
    }

    dchar c;
}

struct BeanLexer
{
    alias TokenDeclaration!(Bean[]) tok;

    enum TokenSpec = [
        tok("hello" , [Bean('H'), Bean('e'), Bean('l'), Bean('l'), Bean('o')]),
        tok("world" , [Bean('w'), Bean('o'), Bean('r'), Bean('l'), Bean('d')]),
        tok("escape", [Bean('$')], q{onEscape}),
        tok("error" , null),
        tok("", [Bean('A')], q{onA}),
    ];

    alias Lexer1!(Bean[], TokenSpec) Tok;

    struct Token
    {
        this(Tok id, Bean[] match)
        {
            assert(id != Tok.error);
            _id = id;
            _match = match;
        }

        this(Tok id, string text)
        {
            assert(id == Tok.error);
            _id = id;
            _text = text;
        }

        string toString()
        {
            if (_id == Tok.error)
                return "Error: " ~ _text;
            else
                return to!string(_match);
        }

        Tok       _id;
        union
        {
            Bean[] _match;
            string _text;
        }
    }

    // Hook for constructing a custom user value
    Token defaultMatch(Tok id, ref Bean[] input, size_t len)
    {
        auto tok = Token(id, input[0 .. len]);
        input.popFrontN(len);
        return tok;
    }

    // Hook for skipping input
    void skip(ref Bean[] input)
    {
        // capture is empty so we can skip right away
        while (!input.empty && input.front == Bean(' '))
            input.popFront;
    }

    // Fallthrough hook
    Token noMatch(ref Bean[] input)
    {
        auto saved = input.save;
        // consume input up to the next space or until end
        while (!input.empty && input.front != Bean(' '))
            input.popFront;
        // return an error token
        return Token(Tok.error, "Can't match input: " ~ to!string(saved[0 .. $ - input.length]));
    }

    Token onEscape(Tok id, ref Bean[] input, size_t len)
    {
        input.popFrontN(len);

        // skip opening braces '{'
        if (input.empty || input.front != Bean('{'))
            return Token(Tok.error, "Missing '{' after escape '$'.");
        input.popFront;

        auto start = input.save;
        // save everything from front to the next '}'
        while (!input.empty && input.front != Bean('}'))
            input.popFront;

        if (input.empty)
            return Token(Tok.error, "Missing '}' after escape sequence.");

        auto res = Token(Tok.escape, start[0 .. $ - input.length]);
        input.popFront; // skip '}'
        return res;
    }

    Token onA(ref Bean[] input, size_t len)
    {
        auto tok = Token(Tok.hello, input[0 .. len]);
        input.popFrontN(len);
        return tok;
    }

    mixin Lexer2!(Bean[], defaultMatch, skip, noMatch, TokenSpec);
}

void main()
{
    BeanLexer lexer;
    alias BeanLexer.Tok Tok;

    auto input = [
        Bean('H'), Bean('e'), Bean('l'), Bean('l'), Bean('o'), Bean(' '),
        Bean('$'), Bean('{'), Bean('n'), Bean('a'), Bean('m'), Bean('e'), Bean('}'),
        Bean('A'),
    ];
    lexer.input = input;

    foreach(tok; lexer)
    {
        writeln(tok);
    }
}
----
 */
mixin template Lexer2
(R, alias defaultAction, alias skipAction, alias recoverAction, alias decls) if(decls.length)
{
    import std.range, std.traits;

    alias defineToken!(eagerMap!q{a._name}(decls)) _TokId;

    alias typeof(defaultAction(_TokId.init, _input, 0)) Token;

    this(R input)
    {
        this.input = input;
    }

    /*
     * Reset the input of the lexer. Will initially call skipAction
     * and clear any buffered token.
     */
    @property void input(R input)
    {
        _input = input;
        skipAction(_input);
        _token = Token.init;
        _hasFront = false;
    }

    @property R input()
    {
        return _input;
    }

    // Range interface

    bool empty()
    {
        return !_hasFront && _input.empty;
    }

    void popFront()
    {
        _hasFront = false;
    }

    Token front()
    {
        if (!_hasFront)
        {
            _token = nextToken(_input);
            skipAction(_input);
            _hasFront = true;
        }
        return _token;
    }

private:
    Token nextToken(ref R input)
    {
        auto saved = input.save;
        auto tok = nextTokenImpl(saved, input.save);
        input = saved;
        return tok;
    }

    Token nextTokenImpl(ref R saved, R input)
    {
        enum _trie = makeTrie(decls);
        enum _elems = _trie.elems; // needed by mixin code

        mixin(_trie.makeCode());
    }

    R _input;
    Token _token;
    bool _hasFront;
}

/*
 * Turns sorted pattern definitions into a trie like switch function.
 */
Trie!R makeTrie(R)(TokenDeclaration!R[] decls)
// public to be accessible from mixin
{
    Trie!R trie;

    foreach(d; decls)
    {
        if (d._pattern.empty)
            continue;

        string actexp;
        if (d._action.empty)
        {
            assert(!d._name.empty, "Cannot have empty name without action.");
            actexp = "defaultAction(_TokId."~d._name~", saved, "~to!string(walkLength(d._pattern))~")";
        }
        else if (!d._name.empty)
            actexp = d._action ~ "(_TokId."~d._name~", saved, "~to!string(walkLength(d._pattern))~")";
        else
            actexp = d._action ~ "(saved, "~to!string(walkLength(d._pattern))~")";

        trie.insert(d._pattern, actexp);
    }

    return trie;
}

auto eagerMap(alias fun, R)(R r)
// public to be accessible from mixin
{
    alias unaryFun!fun _fun;
    alias typeof(_fun(ElementType!(R).init)) E;

    static if (hasLength!R)
    {
        E[] result;
        result.length = r.length;
        foreach(i, e; r)
            result[i] = _fun(e);
    }
    else
    {
        E[] result;
        foreach(e; r)
            result ~= _fun(e);
    }
    return result;
}

private:

template defineToken(alias names) if(names.length)
{
    mixin(enumMixin(names));
}

string enumMixin()(string[] names)
{
    /*
     * Make enum members unique. Use index sort to preserve the
     * declared order.
     */
    auto sorted = makeIndex(names);
    auto src = sorted;
    auto tgt = sorted;
    while (!src.empty)
    {
        immutable idx = src.front;
        src.popFront;
        while (!src.empty && names[idx] == names[src.front])
            src.popFront;
        if (names[idx].empty)
            continue;
        tgt.front = idx;
        tgt.popFront;
    }
    auto onames = sort!compare(sorted[0 .. $-tgt.length]);

    string res = "enum defineToken\n{\n";
    foreach(idx; onames)
    {
        res ~= "    " ~ names[idx] ~ ",\n";
    }
    res ~= "}\n";
    return res;
}

/*
 * IR for sorting patterns and associating actions.
 */
struct Trie(R)
{
    alias ElementType!R E;

    static struct Node
    {
        ref Node getNode(E e)
        {
            auto idx = transitionIndex!q{a.elem < b}(children, e);
            if (idx == children.length || children[idx].elem != e)
                children = children[0 .. idx] ~ Node(e) ~ children[idx .. $];
            return children[idx];
        }

        E elem;
        string payload;
        Node[] children;
    }

    void insert(R pattern, string payload)
    {
        Node *p = &root;
        foreach(e; pattern)
        {
            auto eidx = transitionIndex(elems, e);
            if (eidx == elems.length || elems[eidx] != e)
            {
                version (none) // BUG 6815
                {
                    elems = elems[0 .. eidx] ~ e ~ elems[eidx .. $];
                }
                else
                {
                    E[] nelems = [];
                    if (eidx)
                        nelems = elems[0 .. eidx];
                    nelems ~= e;
                    if (eidx < elems.length)
                        nelems ~= elems[eidx .. $];
                    elems = nelems;
                }
            }
            p = &p.getNode(e);
        }
        p.payload = payload;
    }

    string makeCode() const
    {
        enum tabw = 4;
        enum spaces = "                                                                "; // 64

        string code;
        size_t indent;

        void write(string s, size_t add=0)
        {
            add += tabw * indent;
            foreach(_; 0 .. add / spaces.length)
                code ~= spaces;
            code ~= spaces[0 .. add % spaces.length];
            code ~= s;
        }

        void writeln(string s, size_t add=0)
        {
            if (s.length)
                write(s, add);
            code ~= std.ascii.newline;
        }

        string elemString(E e)
        {
            // try to provide readable elements
            static if (is(E == dchar))
                return charLit(e);
            else static if (isIntegral!E)
                return to!string(e);
            else
            {   // fall back on index into constant _elems
                immutable idx = transitionIndex(elems, e);
                assert(elems[idx] == e);
                return "_elems["~to!string(idx)~"]";
            }
        }

        void emit(in Node[] children)
        {
            auto cmp = elemString(children[$/2].elem);

            if (children.length >= 2)
            {   // narrow interval using a binary search
                writeln("if (e < "~cmp~")");
                writeln("{");
                ++indent;
                emit(children[0 .. $/2]);
                --indent;
                writeln("}");
                writeln("else");
                writeln("{");
                ++indent;
                emit(children[$/2 .. $]);
                --indent;
                writeln("}");
            }
            else
            {   // recurse on pattern if not exhausted, add
                // fallthrough return for accepting nodes
                auto node = children.front;

                writeln("if (e == "~cmp~")");
                writeln("{");

                if (!node.children.empty)
                {
                    ++indent;
                    writeln("if (!input.empty)");
                    writeln("{");
                    ++indent;
                    writeln("e = input.front;");
                    writeln("input.popFront;");
                    emit(node.children);
                    --indent;
                    writeln("}");
                    --indent;
                }

                if (node.payload)
                {
                    ++indent;
                    writeln("return "~node.payload~";");
                    --indent;
                }

                writeln("}");
            }
        }

        // save input, get first element and recurse on root, recover
        // on fallthrough
        writeln("if (!input.empty)");
        writeln("{");
        ++indent;
        writeln("Unqual!(ElementType!(typeof(input))) e = input.front;");
        writeln("input.popFront;");
        emit(root.children);
        --indent;
        writeln("}");
        writeln("return recoverAction(saved);");

        return code;
    }

    E[] elems;
    Node root;
}

/*
 * Returns a string that will be lexed as $(D_Param c).
 */
public string charLit()(dchar c)
{
    string res;
    void put(string s) { res ~= s; }

    put("'");
    if (std.uni.isGraphical(c))
    {
        if (c == '\"' || c == '\\' || c == '\'')
            put("\\");

        put(to!string(c));
    }
    else
    {
        static char toHex(uint v)
        {
            assert(v < 16);
            return cast(char)(v < 10 ? '0' + v : 'a' + v - 10);
        }

        put("\\");
        switch (c)
        {
        case '\a': put("a");  break;
        case '\b': put("b");  break;
        case '\f': put("f");  break;
        case '\n': put("n");  break;
        case '\r': put("r");  break;
        case '\t': put("t");  break;
        case '\v': put("v");  break;
        default:
            char[8] buf;
            size_t cnt;
            if (c <= 0xFF)
            {   put("x");
                cnt = 2;
            }
            else if (c <= 0xFFFF)
            {   put("u");
                cnt = 4;
            }
            else
            {   put("U");
                cnt = 8;
            }

            version (BigEndian)
            {
                import std.bitmanip;
                c = swapEndian(c);
            }

            foreach_reverse(i; 0 .. cnt)
            {
                buf[i] = toHex(c & 0xF);
                c >>= 4;
            }
            put(cast(string)buf[0 .. cnt]);
        }
    }
    put("'");
    return res;
}

int compare(R)(R lhs, R rhs) if(isInputRange!R)
{
    for (; !lhs.empty && !rhs.empty; lhs.popFront, rhs.popFront)
    {
        if (lhs.front < rhs.front)
            return -1;
        else if (lhs.front == rhs.front)
            continue;
        else
            return 1;
    }
    if (lhs.empty && rhs.empty)
        return 0;
    else if (lhs.empty)
        return -1;
    else
        return 1;
}

int compare(R)(R lhs, R rhs) if(!isInputRange!R)
{
     if (lhs < rhs) return -1;
     else if (lhs == rhs) return 0;
     else return 1;
}

R[] sort(alias pred, R)(R[] range)
{
    if (range.length <= 1)
        return range;

    R[] lessEq, greater;
    auto pivot = range.front;
    range.popFront;
    foreach(e; range)
    {
        if (pred(e, pivot) == 1)
            greater ~= e;
        else
            lessEq ~= e;
    }

    return sort!pred(lessEq) ~ pivot ~ sort!pred(greater);
}

unittest {
    auto toSort = "qwertzuiopasdfghjklyxcvbnm"d.dup;
    assert(sort!compare(toSort) == "abcdefghijklmnopqrstuvwxyz"d);
}

size_t[] makeIndex(R)(R[] range)
{
    size_t[] indices;
    indices.length = range.length;
    foreach(i; 0 .. range.length)
        indices[i] = i;

    int pred(size_t a, size_t b)
    {
        return compare(range[a], range[b]);
    }
    return sort!pred(indices);
}

size_t transitionIndex(alias pred="a < b", R, E)(R haystack, E needle)
{
    alias binaryFun!pred _pred;

    size_t lo = 0, hi = haystack.length;
    while (lo < hi)
    {
        immutable it = lo + (hi - lo) / 2;
        if (_pred(haystack[it], needle))
            lo = it + 1;
        else
            hi = it;
    }
    return lo;
}
