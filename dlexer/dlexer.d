import std.algorithm, std.bitmanip, std.conv, std.exception, std.file,
    std.functional, std.range, std.stream, std.string, std.traits, std.typetuple, std.uni;
static import std.ascii;
import lexer;

/*
 * Tab width for column position.
 */
enum tabWidth = 4;

private alias TokenDeclaration!string tok;

/*
 * These patterns match complete tokens. Hooks are only used to
 * disambiguate the case where a complete token can be the beginning
 * of a different token.
 */
immutable Complete = [
    tok("Lcurly"    , "{"   ),
    tok("Rcurly"    , "}"   ),
    tok("Lparen"    , "("   ),
    tok("Rparen"    , ")"   ),
    tok("Lbracket"  , "["   ),
    tok("Rbracket"  , "]"   ),
    tok("Semicolon" , ";"   ),
    tok("Colon"     , ":"   ),
    tok("Comma"     , ","   ),
    tok("Dot"       , "."    , q{lexDot}), // can be start of float
    tok("Xor"       , "^"   ),
    tok("Xorass"    , "^="  ),
    tok("Assign"    , "="   ),
    tok("Lt"        , "<"   ),
    tok("Gt"        , ">"   ),
    tok("Le"        , "<="  ),
    tok("Ge"        , ">="  ),
    tok("Equal"     , "=="  ),
    tok("Notequal"  , "!="  ),
    tok("Tobool"    , "!!"  ),
    tok("Unord"     , "!<>="),
    tok("Ue"        , "!<>" ),
    tok("Lg"        , "<>"  ),
    tok("Leg"       , "<>=" ),
    tok("Ule"       , "!>"  ),
    tok("Ul"        , "!>=" ),
    tok("Uge"       , "!<"  ),
    tok("Ug"        , "!<=" ),
    tok("Not"       , "!"   ),
    //tok("IsNot"     , "!is" ),
    tok("Shl"       , "<<"  ),
    tok("Shr"       , ">>"  ),
    tok("Ushr"      , ">>>" ),
    tok("Add"       , "+"   ),
    tok("Min"       , "-"   ),
    tok("Mul"       , "*"   ),
    tok("Div"       , "/"   ),
    tok("Mod"       , "%"   ),
    tok("Slice"     , ".."  ),
    tok("Dotdotdot" , "..." ),
    tok("And"       , "&"   ),
    tok("Andand"    , "&&"  ),
    tok("Or"        , "|"   ),
    tok("Oror"      , "||"  ),
    //tok("Array"     , "[]"  ),
    //tok("Index"     , "[i]" ),
    //tok("Address"   , "&"   ),
    //tok("Star"      , "*"   ),
    tok("Tilde"     , "~"   ),
    tok("Dollar"    , "$"   ),
    tok("Plusplus"  , "++"  ),
    tok("Minusminus", "--"  ),
    tok("Question"  , "?"   ),
    //tok("Neg"       , "-"   ),
    //tok("Uadd"      , "+"   ),
    //tok("Var"       , "var" ),
    tok("Addass"    , "+="  ),
    tok("Minass"    , "-="  ),
    tok("Mulass"    , "*="  ),
    tok("Divass"    , "/="  ),
    tok("Modass"    , "%="  ),
    tok("Shlass"    , "<<=" ),
    tok("Shrass"    , ">>=" ),
    tok("Ushrass"   , ">>>="),
    tok("Andass"    , "&="  ),
    tok("Catass"    , "~="  ),
    //tok("Cat"       , "~"   ),
    tok("Orass"     , "|="  ),
    tok("At"        , "@"   ),
    tok("Pow"       , "^^"  ),
    tok("Powass"    , "^^=" ),
    tok("Goesto"    , "=>"  ),
];

/*
 * These patterns match the beginning tokens. Hooks are used to lex
 * the rest of these tokens.
 */
immutable Incomplete = [
    tok("StringLit" , "\""   , q{doubleQuotedString}   ),
    tok("StringLit" , "r\""  , q{wysiwygString}        ),
    tok("StringLit" , "`"    , q{wysiwygString}        ),
    tok("StringLit" , "q\""  , q{delimitedString}      ),
    tok("StringLit" , "q{"   , q{tokenString}          ),
    tok("StringLit" , "x\""  , q{hexString}            ),
    tok("CharLit"   , "'"    , q{lexCharLit}           ),
    tok("CharLit"   , "'\\x" , q{charLexer!(hexChar!2)}),
    tok("CharLit"   , "'\\u" , q{charLexer!(hexChar!4)}),
    tok("CharLit"   , "'\\U" , q{charLexer!(hexChar!8)}),
    tok("CharLit"   , "'\\&" , q{charLexer!namedChar}  ),
    tok("CharLit"   , "'\\"  , q{charLexer!escapeChar} ),

    tok("LComment"  , "//"   , q{lineComment}          ),
    tok("BComment"  , "/*"   , q{blockComment}         ),
    tok("BComment"  , "/+"   , q{blockComment}         ),

    tok("SpecialTokenSeq", "#" , q{specialTokenSeq}),
];

/*
 * Declare additional tokens which come without patterns. These are
 * only matched in hooks. Identifier is also used to mark the start of
 * keywords.
 */
immutable Additional = [
    tok("Number"         ),
    tok("Identifier"     ),
];

/*
 * Declare tokens for keywords. These come without a matching pattern
 * because they are lexed as identifiers and looked up in a hash
 * table. The Tok enum names are capitalized to not conflict with D's
 * keywords.
 */
immutable Keywords = [
    tok("This"           ),
    tok("Super"          ),
    tok("Assert"         ),
    tok("Null"           ),
    tok("True"           ),
    tok("False"          ),
    tok("Cast"           ),
    tok("New"            ),
    tok("Delete"         ),
    tok("Throw"          ),
    tok("Module"         ),
    tok("Pragma"         ),
    tok("Typeof"         ),
    tok("Typeid"         ),

    tok("Template"       ),

    tok("Void"           ),
    tok("Byte"           ),
    tok("Ubyte"          ),
    tok("Short"          ),
    tok("Ushort"         ),
    tok("Int"            ),
    tok("Uint"           ),
    tok("Long"           ),
    tok("Ulong"          ),
    tok("Cent"           ),
    tok("Ucent"          ),
    tok("Float"          ),
    tok("Double"         ),
    tok("Real"           ),

    tok("Bool"           ),
    tok("Char"           ),
    tok("Wchar"          ),
    tok("Dchar"          ),

    tok("Ifloat"         ),
    tok("Idouble"        ),
    tok("Ireal"          ),

    tok("Cfloat"         ),
    tok("Cdouble"        ),
    tok("Creal"          ),

    tok("Delegate"       ),
    tok("Function"       ),

    tok("Is"             ),
    tok("If"             ),
    tok("Else"           ),
    tok("While"          ),
    tok("For"            ),
    tok("Do"             ),
    tok("Switch"         ),
    tok("Case"           ),
    tok("Default"        ),
    tok("Break"          ),
    tok("Continue"       ),
    tok("Synchronized"   ),
    tok("Return"         ),
    tok("Goto"           ),
    tok("Try"            ),
    tok("Catch"          ),
    tok("Finally"        ),
    tok("With"           ),
    tok("Asm"            ),
    tok("Foreach"        ),
    tok("Foreach_reverse"),
    tok("Scope"          ),

    tok("Struct"         ),
    tok("Class"          ),
    tok("Interface"      ),
    tok("Union"          ),
    tok("Enum"           ),
    tok("Import"         ),
    tok("Mixin"          ),
    tok("Static"         ),
    tok("Final"          ),
    tok("Const"          ),
    tok("Typedef"        ),
    tok("Alias"          ),
    tok("Override"       ),
    tok("Abstract"       ),
    tok("Volatile"       ),
    tok("Debug"          ),
    tok("Deprecated"     ),
    tok("In"             ),
    tok("Out"            ),
    tok("Inout"          ),
    tok("Lazy"           ),
    tok("Auto"           ),

    tok("Align"          ),
    tok("Extern"         ),
    tok("Private"        ),
    tok("Package"        ),
    tok("Protected"      ),
    tok("Public"         ),
    tok("Export"         ),

    tok("Body"           ),
    tok("Invariant"      ),
    tok("Unittest"       ),
    tok("Version"        ),

    tok("Ref"            ),
    tok("Macro"          ),
    tok("Pure"           ),
    tok("Nothrow"        ),
    tok("Shared"         ),
    tok("Immutable"      ),
];

/*
 * These tokens match the internal keywords listed in the pattern
 * column. We're still lexing them as identifiers and use a hash table
 * lookup.
 */
immutable InternalKeywords = [
    tok("ArgTypes"   , "__argTypes"    ),
    tok("Thread"     , "__thread"      ),
    tok("GShared"    , "__gshared"     ),
    tok("Traits"     , "__traits"      ),
    tok("Overloadset", "__overloadset" ),
    tok("DATE"       , "__DATE__"      ),
    tok("EOF"        , "__EOF__"       ),
    tok("TIME"       , "__TIME__"      ),
    tok("TIMESTAMP"  , "__TIMESTAMP__" ),
    tok("VENDOR"     , "__VENDOR__"    ),
    tok("VERSION"    , "__VERSION__"   ),
    tok("FILE"       , "__FILE__"      ),
    tok("LINE"       , "__LINE__"      ),
];

/// concat all declarations to declate the Tok enum
immutable TokenSpec = Complete ~ Incomplete ~ Additional ~ Keywords ~ InternalKeywords;

/**
 * Tok enum.
 */
alias LexerEnum!(TokenSpec) Tok;

/**
 * Keyword -> Tok
 */
immutable Tok[string] keywords;

/**
 * Tok -> string
 */
immutable string[Tok] tokToString;

private static string keywordTab()
{
    string tab = "[";
    foreach(decl; Keywords)
        tab ~= "\"" ~ decl._name ~ "\": Tok." ~ decl._name ~ ", ";
    foreach(decl; InternalKeywords)
        tab ~= "\"" ~ decl._pattern ~ "\": Tok." ~ decl._name ~ ", ";
    tab ~= "]";
    return tab;
}

private static string tokToStringTab()
{
    string tab = "[";
    foreach(i, decl; Complete)
        tab ~= "Tok." ~ decl._name ~ " : `" ~ decl._pattern ~ "`,\n";
    foreach(i, decl; Keywords)
        tab ~= "Tok." ~ decl._name ~ " : `" ~ toLower(decl._name) ~ "`,\n";
    foreach(i, decl; InternalKeywords)
        tab ~= "Tok." ~ decl._name ~ " : `" ~ decl._pattern ~ "`,\n";
    tab ~= "]";
    return tab;
}

shared static this()
{
    keywords = mixin(keywordTab());
    tokToString = mixin(tokToStringTab());
    pragma(msg, tokToStringTab());
}

/**
 * Source location
 */
static struct Loc
{
    this(uint line=1, ushort col=0)
    {
        _line = line;
        _col = col;
    }

    string toString()
    {
        auto app = appender!string();
        writeTo(app);
        return app.data;
    }

    void writeTo(R)(R outp) if(isOutputRange!(R, dchar))
    {
        std.format.formattedWrite(outp, "(%d,%d)", _line, _col);
    }

    uint _line;
    uint _col;

    alias _line this;
}

/**
 * Lexer element type
 */
static struct DToken
{
    this(Tok id, Loc loc)
    {
        _id = id;
        _loc = loc;
    }

    this(Tok id, string text, Loc loc, StringSuffix suffix=StringSuffix.none)
    {
        this(id, loc);
        _text = text;
        _stringSuffix = suffix;
    }

    this(Tok id, string text, Loc loc, NumberType ntype)
    {
        this(id, text, loc);
        _numberType = ntype;
    }

    string toString()
    {
        auto app = appender!(string)();
        std.format.formattedWrite(app, "%s", _id);
        _loc.writeTo(app);
        while (app.data.length < 20)
            app.put(' ');
        app.put(": ");
        writeTo(app);
        if (_id == Tok.Number)
        {
            app.put(' ');
            app.put(to!string(_numberType));
        }
        return app.data;
    }

    size_t writeTo(R)(ref R outp) if (isOutputRange!(R, dchar))
    {
        alias std.format.formattedWrite fmt;
        size_t len;

        if (_id < Tok.Goesto || _id > Tok.Identifier) // complete tokens || keyword tokens
        {
            auto s = *enforce(_id in tokToString, to!string(_id));
            for (size_t i; i < s.length; ++len)
                outp.put(std.utf.decode(s, i));
        }
        else
        {
            switch (_id)
            {
            // incomplete and additional tokens
            case Tok.StringLit:
            case Tok.CharLit:
            case Tok.LComment:
            case Tok.BComment:
            case Tok.SpecialTokenSeq:
            case Tok.Number:
            case Tok.Identifier:
                for (size_t i; i < _text.length; ++len)
                    outp.put(std.utf.decode(_text, i));
                break;

            default:
                assert(0);
            }
        }
        return len;
    }

    string _text;
    Tok _id;
    Loc _loc;

    enum StringSuffix { none, c, w, d }
    enum NumberType
    {
        Int,
        UInt,
        Long,
        ULong,
        Double,
        Float,
        Real,
        IDouble,
        IFloat,
        IReal,
    }

    mixin(bitfields!(
              StringSuffix, "_stringSuffix", 2,
              NumberType  , "_numberType"  , 4,
              uint, "", 2,
          ));
}

struct DLexer(R) if(is(ElementType!R : dchar))
{
    DToken.StringSuffix stringSuffix(ref R input)
    {
        DToken.StringSuffix suffix;
        if (!input.empty)
        switch (input.front)
        {
        case 'c': suffix = DToken.StringSuffix.c; break;
        case 'w': suffix = DToken.StringSuffix.w; break;
        case 'd': suffix = DToken.StringSuffix.d; break;
        default:  break;
        }
        if (suffix != DToken.StringSuffix.none)
        {
            input.popFront; ++_loc._col;
        }
        return suffix;
    }

    dchar peek(R input)
    {
        dchar result;
        if (!input.empty)
        {
            auto saved = input.save;
            saved.popFront;
            result = saved.front;
        }
        return result;
    }

    /*
     * Makes a lex function out of a dchar(ref R input) function.
     * Allows to reuse string helpers as lexers.
     */
    DToken charLexer(alias fun)(Tok id, ref R input, size_t len)
    {
        auto start = input.save;
        auto loc = _loc;
        popFrontN(input, len); _loc._col += len;
        dchar c = fun(input);
        len = _loc._col - loc._col;
        enforce(!input.empty && input.front == '\'',
                error("Unterminated char constant '%s'.",
                      capture(start, len)));
        input.popFront; ++len; ++_loc._col;
        return DToken(id, capture(start, len), loc);
    }

    static bool isIdStartLetter(dchar d)
    {
        return std.ascii.isAlpha(d) || d == '_' || isAlpha(d);
    }

    static bool isIdLetter(dchar d)
    {
        return std.ascii.isAlphaNum(d) || d == '_' || isAlpha(d);
    }

    static bool isNewLine(dchar c)
    {
        switch (c)
        {
        case '\n':
        case '\r':
        case std.uni.lineSep:
        case std.uni.paraSep:
            return true;
        default:
            return false;
        }
    }

    uint getDigit(int radix:16)(dchar c)
    {
        enforce(isDigit!radix(c),
                error("Hex digit expected, not '%s'.", c));
        c |= 0x20; // toLower
        return c >= 'a' ? 10 + c - 'a' : c - '0';
    }

    uint getDigit(int radix)(dchar c) if (radix <= 10)
    {
        enforce(isDigit!radix(c),
                error("Digit within radix %s expected, not '%s'.",
                      radix, c));
        return c - '0';
    }

    static bool isDigit(int radix:16)(dchar c) { return std.ascii.isHexDigit(c); }
    static bool isDigit(int radix:10)(dchar c) { return std.ascii.isDigit(c); }
    static bool isDigit(int radix:2)(dchar c) { return c == '0' || c == '1'; }

    DToken defaultAction(Tok id, ref R input, size_t len)
    {
        auto tok = DToken(id, _loc);
        popFrontN(input, len); _loc._col += len;
        return tok;
    }

    void skip(ref R input)
    {
        while (!input.empty)
        {
            if (skipNewLine(input))
                continue;

            dchar c = input.front;
            if (c < 0x7F)
            {
                if (c == ' ' || c == '\t')
                {
                    immutable width = c == ' ' ? 1 : tabWidth;
                    static if (isSomeString!R)
                    {
                        const pend = input.ptr + input.length;
                        auto p = input.ptr;
                        do {
                            ++p;
                        } while (p < pend && *p == c);
                        immutable diff = p - input.ptr;
                        _loc._col += diff * width;
                        input = input[diff .. $];
                    }
                    else
                    {
                        do {
                            input.popFront; _loc._col += width;
                        } while (!input.empty && (c = input.front) == ' ' || c == '\t');
                    }
                    continue;
                }
            }
            else if (c == '\u00A0')
            {
                input.popFront;  ++_loc._col;
                continue;
            }
            else if (c >= '\u1680' && c <= '\u3000')
            {
                if (c == '\u1680' || c == '\u180e' ||
                    c >= '\u2000' && c <= '\u200a' ||
                    c == '\u2028' || c == '\u2029' ||
                    c == '\u202f' || c == '\u205f' ||
                    c == '\u3000'
                )
                {
                    input.popFront; ++_loc._col;
                    continue;
                }
            }

            return;
        }
    }

    size_t skipNewLine(ref R input)
    {
        size_t len;
        switch (input.front)
        {
        case '\r':
            input.popFront;
            ++len;
            ++_loc._line; _loc._col = 0;
            if (!input.empty && input.front == '\n')
                goto case;
            break;

        case '\n':
        case '\v':
        case '\f':
        case '\u0085':
        case std.uni.lineSep:
        case std.uni.paraSep:
            input.popFront;
            ++len;
            ++_loc._line; _loc._col = 0;
            break;

        default:
            break;
        }
        return len;
    }

    DToken lexFallThrough(ref R input)
    {
        if (isIdStartLetter(input.front))
        {
            auto tok = lexIdentifier(input);
            if (auto pid = tok._text in keywords)
                return DToken(*pid, tok._loc);
            return tok;
        }
        else if (isDigit!10(input.front))
        {
            return lexNumber(input);
        }
        else
        {
            auto saved = input.save;
            size_t len;
            for (; !input.empty && !isNewLine(input.front); input.popFront)
            {
                ++len; ++_loc._col;
            }
            throw new Exception(
                error("Lexical error '%s'.", capture(saved, len)));
        }
    }

    DToken doubleQuotedString(Tok id, ref R input, size_t len)
    {
        assert(id == Tok.StringLit);
        assert(input.front == '"');

        auto start = input.save;
        auto loc = _loc;
        popFrontN(input, len); _loc._col += len;

        while (!input.empty)
        {
            dchar c = input.front;
            if (c == '"')
                break;
            else if (auto cnt = skipNewLine(input))
                len += cnt;
            else if (c == '\\')
            {
                input.popFront; ++_loc._col; ++len;
                auto ocol = _loc._col;
                escapeChar(input);
                len += _loc._col - ocol;
            }
            else
            {
                input.popFront; ++_loc._col; ++len;
                continue;
            }
        }
        enforce(!input.empty,
                error("Unterminated string literal '%s'.",
                      capture(start, len)));
        input.popFront; ++_loc._col; ++len;
        auto ocol = _loc._col;
        auto suffix = stringSuffix(input);
        len += _loc._col - ocol;
        return DToken(Tok.StringLit, capture(start, len), loc, suffix);
    }

    DToken wysiwygString(Tok id, ref R input, size_t len)
    {
        assert(id == Tok.StringLit);
        auto delim = input.front == 'r' ? '"' : '`';

        auto start = input.save;
        auto loc = _loc;
        popFrontN(input, len); _loc._col += len;

        while (!input.empty && input.front != delim)
        {
            // TODO: consider replacing \r\n with \n
            if (auto cnt = skipNewLine(input))
                len += cnt;
            else
            {   input.popFront;
                ++len; ++_loc._col;
            }
        }
        enforce(!input.empty,
                error("Unterminated string literal '%s'.",
                      capture(start, len)));
        input.popFront; ++_loc._col; ++len;
        auto ocol = _loc._col;
        auto suffix = stringSuffix(input);
        len += _loc._col - ocol;
        return DToken(Tok.StringLit, capture(start, len), loc, suffix);
    }

    DToken delimitedString(Tok id, ref R input, size_t len)
    {
        assert(id == Tok.StringLit);
        assert(input.front == 'q');
        assert(peek(input) == '"');

        auto start = input.save;
        auto loc = _loc;
        popFrontN(input, len); _loc._col += len;
        dchar delimL, delimR;
        string ident;
        uint nested = 1;

        dchar c = input.front;
        switch (input.front)
        {
        case '[': delimR = ']'; goto LnestedChar;
        case '(': delimR = ')'; goto LnestedChar;
        case '<': delimR = '>'; goto LnestedChar;
        case '{': delimR = '}';
        LnestedChar:
            delimL = c;
            input.popFront; ++_loc._col;
            len = _loc._col - loc._col;
            break;

        default:
            if (isIdStartLetter(c))
            {
                auto tok = lexIdentifier(input);
                len = _loc._col - loc._col;
                len += enforce(skipNewLine(input),
                               error("No newline after Identifier '%s'.",
                                     capture(start, len)));

                ident = tok._text;
                goto Lnewline;
            }
            else
            {
                delimR = c;
                input.popFront; ++_loc._col;
                len = _loc._col - loc._col;
            }
        }

        while (!input.empty)
        {
            c = input.front;
            if (c == delimR)
            {
                if (--nested == 0)
                {
                    input.popFront; ++len; ++_loc._col;
                    break;
                }
            }
            else if (c == delimL)
                ++nested;
            else if (ident && isNewLine(c))
            {
                len += skipNewLine(input);
            Lnewline:
                if (!input.empty && input.front == ident.front)
                {
                    assert(_loc._col == 0);
                    auto tok = lexIdentifier(input);
                    len += _loc._col;
                    if (tok._text == ident)
                        break;
                }
            }
            else if (auto cnt = skipNewLine(input))
            {   len += cnt;
                continue;
            }
            input.popFront; ++len; ++_loc._col;
        }
        enforce(!input.empty,
                error("Unterminated string literal '%s'.",
                      capture(start, len)));
        enforce(input.front == '"',
                error("Delimited string '%s' must end with %s\"",
                      capture(start, len), ident ? ident : to!string(delimR)));

        input.popFront; ++len; ++_loc._col;
        return DToken(Tok.StringLit, capture(start, len), loc);
    }

    DToken tokenString(Tok id, ref R input, size_t len)
    {
        assert(input.front == 'q' && peek(input) == '{');

        auto start = input.save;
        auto loc = _loc;
        popFrontN(input, len); _loc._col += len;

        skip(input);

        uint nest = 1, denest;
        // tokenize
        while (!input.empty)
        {
            auto tok = nextToken(input);
            if (tok._id == Tok.Lcurly)
                ++nest;
            else if (tok._id == Tok.Rcurly)
            {   if (++denest == nest)
                    break;
            }
            skip(input);
        }

        static if (hasLength!R || isSomeString!R)
            len = start.length - input.length;
        else
        {
            // rewind and count elements
            len = 0;
            input = start;
            size_t cnt = denest;
            for (input = start; !input.empty && cnt; ++len, input.popFront)
            {
                if (input.front == '}')
                    --cnt;
            }
        }

        enforce(nest == denest,
                error("Unterminated string literal '%s'.",
                      capture(start, len)));
        return DToken(Tok.StringLit, capture(start, len), loc);
    }

    DToken hexString(Tok id, ref R input, size_t len)
    {
        assert(input.front == 'x' && peek(input) == '"');

        uint v;
        size_t n;

        auto start = input.save;
        auto loc = _loc;

        popFrontN(input, len); _loc._col += len;

        while (!input.empty)
        {
            if (auto cnt = skipNewLine(input))
            {   len += cnt;
                continue;
            }

            dchar c = input.front;
            if (c == '"')
                break;
            else if (!isWhite(c))
            {
                getDigit!16(c);
                ++n;
            }
            input.popFront; ++_loc._col; ++len;
        }
        enforce(!(n & 1),
                error("Odd number (%s) of hex characters in '%s'.",
                      loc, n, capture(start, len)));
        enforce(!input.empty,
                error("Unterminated string literal '%s'.",
                      loc, capture(start, len)));
        input.popFront; ++_loc._col; ++len;
        auto ocol = _loc._col;
        auto suffix = stringSuffix(input);
        len += ocol - _loc._col;
        return DToken(Tok.StringLit, capture(start, len), loc, suffix);
    }

    DToken lexCharLit(Tok id, ref R input, size_t len)
    {
        assert(id == Tok.CharLit);
        assert(input.front == '\'');

        auto start = input.save;
        auto loc = _loc;
        popFrontN(input, len); _loc._col += len;

        if (!input.empty)
        {
            input.front; input.popFront; ++_loc._col;

            if (!input.empty && input.front == '\'')
            {
                input.popFront; ++_loc._col;
                len = _loc._col - loc._col;
                return DToken(Tok.CharLit, capture(start, len), loc);
            }
        }
        len = _loc._col - loc._col;
        throw new Exception(
            error(loc, "Unterminated char constant '%s'.",
                  capture(start, len)));
    }

    // lex hex escaped char '\x..' input at ..
    dchar hexChar(size_t sz)(ref R input)
    {
        dchar c = 0;
        auto cnt = sz+1;
        while (--cnt && !input.empty && isDigit!16(input.front))
        {
            c = c << 4 | getDigit!16(input.front);
            input.popFront; ++_loc._col;
        }
        enforce(!cnt,
                error("Unterminated hex char '%s'.", to!string(c)));
        return c;
    }

    // things like '\n' with input behind the backslash
    dchar escapeChar(ref R input)
    {
        dchar c = input.front; input.popFront; ++_loc._col;
        switch (c)
        {
        case 'x': c = hexChar!2(input); break;
        case 'u': c = hexChar!4(input); break;
        case 'U': c = hexChar!8(input); break;
        case '&': c = namedChar(input); break;

        case 'a': c = '\a'; break;
        case 'b': c = '\b'; break;
        case 'f': c = '\f'; break;
        case 'n': c = '\n'; break;
        case 'r': c = '\r'; break;
        case 't': c = '\t'; break;
        case 'v': c = '\v'; break;

        case '\'': break;
        case '"' : break;
        case '?' : break;
        case '\\': break;

        default:
            alias std.ascii.isOctalDigit isoct;
            auto loc = _loc;
            if (isoct(c))
            {
                c -= '0';
                auto cnt = 3;
                while (--cnt && !input.empty && isoct(input.front))
                {
                    c = c << 3 | input.front - '0';
                    input.popFront; ++_loc._col;
                }

                enforce(c <= 0xFF,
                        error("0%03o is larger than a byte", cast(uint)c));
            }
            else
                throw new Exception(
                    error(loc, "Illegal escape char '%s'.", to!string(c)));
        }
        return c;
    }

    /*
     * Lex a named char entity (\&amp) input is behind &
     */
    dchar namedChar(ref R input)
    {
        import entity;

        auto saved = input.save;
        dchar c;
        auto loc = _loc;
        if (isIdStartLetter(input.front))
        {
            auto tok = lexIdentifier(input);
            return *enforce(tok._text in namedCharacters,
                            error("Unknown character entity %s.", tok._text));
        }
        throw new Exception(
            error(loc, "Expected identifier for named character entity."));
    }

    DToken lexNumber(ref R input)
    {
        auto save = input.save;
        bool isfloat, seendigit;
        ushort radix = 10;
        dchar c = input.front;
        auto loc = _loc;
        if (c == '0')
        {
            input.popFront; ++_loc._col;
            if (!input.empty)
            {
                c = input.front;
                switch (c | 0x20)
                {
                case 'x': goto Lhex;
                case 'b': goto Lbin;
                default: break;
                }
            }
        }

        for (; !input.empty; input.popFront, ++_loc._col)
        {   c = input.front;
            if (!(c == '_' || isDigit!10(c)))
                break;
        }

        if (c == '.')
        {
            isfloat = true;
            input.popFront; ++_loc._col;
            for (; !input.empty; input.popFront, ++_loc._col)
            {   c = input.front;
                if (!(c == '_' || isDigit!10(c)))
                    break;
            }
        }

        if ((c | 0x20) == 'e')
            goto Lexp;
        goto Lsuffix;

    Lbin:
        radix = 2;
        assert((input.front | 0x20) == 'b');
        input.popFront; ++_loc._col;

        for (; !input.empty; input.popFront, ++_loc._col)
        {   c = input.front;
            if (isDigit!2(c))
                seendigit = true;
            else if (c != '_')
                break;
        }
        enforce(seendigit, error("Binary digit expected"));
        goto Lsuffix;

    Lhex:
        radix = 16;
        assert((input.front | 0x20) == 'x');
        input.popFront; ++_loc._col;

        for (; !input.empty; input.popFront, ++_loc._col)
        {   c = input.front;
            if (isDigit!16(c))
                seendigit = true;
            else if (c != '_')
                break;
        }
        if (c == '.')
        {
            isfloat = true;
            input.popFront; ++_loc._col;
            for (; !input.empty; input.popFront, ++_loc._col)
            {   c = input.front;
                if (isDigit!16(c))
                    seendigit = true;
                else if (c != '_')
                    break;
            }
        }
        enforce(seendigit, error("Hex digit expected"));

        if ((c | 0x20) == 'p')
        {
    Lexp:
            isfloat = true;
            input.popFront; ++_loc._col;

            if (!input.empty)
            {
                c = input.front;
                if (c == '+' || c == '-')
                {
                    input.popFront; ++_loc._col;
                    if (!input.empty)
                        c = input.front;
                }
            }
            enforce(isDigit!10(c), error("Exponent expected."));
            do {
                input.popFront; ++_loc._col;
            } while (!input.empty && isDigit!10((c = input.front)));
        }
        else if (isfloat)
        {
            throw new Exception(error("Binary exponent part required."));
        }

    Lsuffix:
        alias DToken.NumberType NT;
        NT ntype = void;

        if (isfloat || radix == 10 && ((c | 0x20) == 'f' || c == 'i'))
        {
            ntype = NT.Double;

            if ((c | 0x20) == 'f' || c == 'L')
            {
                if (c == 'L')
                    ntype += NT.Real - NT.Double;
                else
                    ntype += NT.Float - NT.Double;
                input.popFront; ++_loc._col;
                if (!input.empty)
                    c = input.front | 0x20;
            }
            else if (c == 'l')
                throw new Exception(error("'l' suffix is deprecated, use 'L' instead"));

            if (c == 'i')
            {
                ntype += NT.IDouble - NT.Double;
                input.popFront; ++_loc._col;
            }
        }
        else
        {
            ntype = NT.Int;

            foreach(_; 0 .. 2)
            {
                if ((c | 0x20) == 'u' || c == 'L')
                {
                    if (c == 'L')
                        ntype += NT.Long - NT.Int;
                    else
                        ntype += NT.UInt - NT.Int;

                    input.popFront; ++_loc._col;
                    if (input.empty)
                        break;
                    c = input.front;
                }
                else if (c == 'l')
                {
                    throw new Exception(error("'l' suffix is deprecated, use 'L' instead"));
                }
                else
                    break;
            }
        }

        if ((ntype == NT.Int || ntype == NT.Long) && !input.empty && input.front == 'i')
        {
            input.popFront; ++_loc._col;
            if (ntype == NT.Int)
                ntype = NT.IDouble;
            else
                ntype = NT.IReal;
        }

        immutable len = _loc._col - loc._col;
        return DToken(Tok.Number, capture(save, len), loc, ntype);
    }

    DToken lexDot(Tok id, ref R input, size_t len)
    {
        assert(len == 1 && input.front == '.');

        if (isDigit!10(peek(input)))
        {
            return lexNumber(input);
        }
        else
        {
            auto tok = DToken(Tok.Dot, _loc);
            input.popFront; ++_loc._col;
            return tok;
        }
    }

    DToken lexIdentifier(ref R input)
    {
        assert(isIdStartLetter(input.front));

        auto saved = input.save;
        size_t len = 1;
        input.popFront;

        while (!input.empty)
        {
            dchar c = input.front;

            static if (isSomeString!R)
            {
                if (c < 0x7F)
                {
                    const pend = input.ptr + input.length;
                    auto p = input.ptr;
                    do {
                        c |= 0x20;
                        if (c < '0' || c > '9' && c < 'a' ||
                            c > 'z' && c != ('_'|0x20))
                            break;
                    } while (++p < pend && (c = *p) < 0x7F);
                    immutable cnt = p - input.ptr;
                    input = input[cnt .. $];
                    len += cnt;
                    if (p < pend && c < 0x7F)
                        break;
                }
                else if (isAlpha(c))
                {
                    input.popFront;
                    ++len;
                }
                else
                    break;
            }
            else
            {
                if (isIdLetter(c))
                {
                    input.popFront;
                    ++len;
                }
                else
                    break;
            }
        }
        auto tok = DToken(Tok.Identifier, capture(saved, len), _loc);
        _loc._col += len;
        return tok;
    }

    DToken lineComment(Tok id, ref R input, size_t len)
    {
        assert(id == Tok.LComment);
        assert(input.front == '/' && peek(input) == '/');

        auto saved = input.save;
        popFrontN(input, len);
        for (; !input.empty && !isNewLine(input.front); input.popFront)
            ++len;
        auto res = DToken(id, capture(saved, len), _loc);
        if (!input.empty)
            skipNewLine(input);
        return res;
    }

    DToken blockComment(Tok id, ref R input, size_t len)
    {
        assert(input.front == '/');

        dchar delim = peek(input);

        auto loc = _loc;
        auto start = input.save;
        popFrontN(input, len); _loc._col += len;

        uint nested = 1;
        while (!input.empty)
        {
            if (input.front == '/' && delim == '+')
            {
                input.popFront; ++len; ++_loc._col;
                if (!input.empty && input.front == '+')
                {
                    input.popFront;
                    ++nested; ++len; ++_loc._col;
                }
            }
            else if (input.front == delim)
            {
                input.popFront; ++len; ++_loc._col;
                if (!input.empty && input.front == '/')
                {
                    input.popFront; ++len; ++_loc._col;
                    if (--nested == 0)
                        break;
                }
            }
            else if (auto cnt = skipNewLine(input))
                len += cnt;
            else
            {
                input.popFront; ++len; ++_loc._col;
            }
        }
        enforce(!input.empty,
                error("Unbalanced block comment '%s'.",
                      capture(start, len)));
        return DToken(id, capture(start, len), loc);
    }

    // #line linenum ["file"]
    DToken specialTokenSeq(Tok id, ref R input, size_t len)
    {
        assert(input.front == '#');

        auto start = input.save;
        auto loc = _loc;

        input.popFront; ++_loc._col;
        if (!isIdStartLetter(input.front))
            goto Lerr;
        auto tok = nextToken(input);
        if (tok._id != Tok.Identifier || tok._text != "line")
            goto Lerr;

        skip(input);
        if (_loc._line != loc._line)
            goto Lerr;

        tok = nextToken(input);
        if (tok._id != Tok.Number || tok._numberType >= DToken.NumberType.Double)
            goto Lerr;

        len = _loc._col - loc._col;
        if (!skipNewLine(input))
            goto Lerr;
        return DToken(Tok.SpecialTokenSeq, capture(start, len), loc);

    Lerr:
        throw new Exception(
            error("#line integer [filename]\\n expected"));
    }

    DToken specialToken(string s:"EOF")(Tok id, ref R input, size_t len)
    {
        assert(id == Tok.EOF);
        static if (hasSlicing!R && hasLength!R || isSomeString!R)
            input = input[$ .. $];
        else
        {
            while (!input.empty)
                input.popFront;
        }
        return DToken(Tok.EOF, _loc);
    }

    string error(Args...)(string fmt, Args args)
    {
        return error(_loc, fmt, args);
    }

    string error(Args...)(Loc loc, string fmt, Args args)
    {
        return format("Error %s(%s): ", _filename, loc) ~
            format(fmt, args);
    }

    /*
     * Second stage of lexer template. Provides the actual definitions
     * and methods. It adds a range compatible interface for token
     * lexing. It will also instatiate our actions which is fine now,
     * because the functions are defined.
     */
    mixin Lexer2!(R, defaultAction, skip, lexFallThrough, TokenSpec);

    static string capture(R input, size_t len)
    {
        static if (hasSlicing!R && hasLength!R || isSomeString!R)
        {
            auto saved = input.save;
            popFrontN(input, len);
            return to!string(saved[0 .. $ - input.length]);
        }
        else
            return to!string(takeExactly(input, len));
    }

    Loc _loc = Loc(1);
    string _filename;
}

/**
 * Reads file at $(D_Param path) and return a DLexer for it.
 */
DLexer!string lexFile()(string path)
{
    auto buf = cast(ubyte[])std.file.read(path);
    auto text = toUtf8(buf);

    DLexer!string lexer;

    if (text.length >= 2 && text[0] == '#' && text[1] == '!')
    {
        alias DLexer!string.isNewLine isnl;
        text = text[2 .. $];
        while (!text.empty && !isnl(text.front))
            text.popFront;
    }

    lexer.input = text;
    lexer._filename = path;
    return lexer;
}

string toUtf8(ubyte[] buf)
{
    BOM bom = cast(BOM)-1;
    if (buf.length >= 4)
    {
        if (buf[0 .. 4] == std.stream.ByteOrderMarks[BOM.UTF32LE])
            bom = BOM.UTF32LE;
        else if (buf[0 .. 4] == std.stream.ByteOrderMarks[BOM.UTF32BE])
            bom = BOM.UTF32BE;
    }
    if (bom == -1 && buf.length >= 2)
    {
        if (buf[0 .. 2] == std.stream.ByteOrderMarks[BOM.UTF16LE])
            bom = BOM.UTF16LE;
        else if (buf[0 .. 2] == std.stream.ByteOrderMarks[BOM.UTF16BE])
            bom = BOM.UTF16BE;
    }
    if (bom == -1 && buf.length >= 3)
    {
        if (buf[0 .. 3] == std.stream.ByteOrderMarks[BOM.UTF8])
            bom = BOM.UTF8;
    }

    if (bom != -1)
        buf.popFrontN(ByteOrderMarks[bom].length);
    else
    {
        if (buf.length >= 4 && !(buf[1] | buf[2]))
        {
            if (buf[3] == 0)
                bom = BOM.UTF32LE;
            else if (buf[0] == 0)
                bom = BOM.UTF32BE;
        }
        if (bom == -1 && buf.length >= 2)
        {
            if (buf[1] == 0)
                bom = BOM.UTF16LE;
            else if (buf[0] == 0)
                bom = BOM.UTF16BE;
        }
        if (bom == -1)
        {
            enforce(!(buf[0] & 0x80), "First char in source file must be ascii not "~to!string(buf[0]));
            bom = BOM.UTF8;
        }
    }

    final switch (bom)
    {
    case BOM.UTF8:
        return cast(string)buf;

    case BOM.UTF16LE:
        version (BigEndian)
        {
            auto range = cast(ushort[])buf;
            foreach(ref e; range)
                e = swapEndian(e);
        }
        return to!string(cast(wstring)buf);

    case BOM.UTF16BE:
        version (LittleEndian)
        {
            auto range = cast(ushort[])buf;
            foreach(ref e; range)
                e = swapEndian(e);
        }
        return to!string(cast(wstring)buf);

    case BOM.UTF32LE:
        version (BigEndian)
        {
            auto range = cast(uint[])buf;
            foreach(ref e; range)
                e = swapEndian(e);
        }
        return to!string(cast(dstring)buf);

    case BOM.UTF32BE:
        version (LittleEndian)
        {
            auto range = cast(uint[])buf;
            foreach(ref e; range)
                e = swapEndian(e);
        }
        return to!string(cast(dstring)buf);
    }
}

void putTokens(RI, RO)(DLexer!RI lexer, auto ref RO outp)
    if (isOutputRange!(RO, dchar))
{
    Loc loc = lexer._loc;
    foreach(tok; lexer)
    {
        while (tok._loc._line > loc._line)
        {   ++loc._line; loc._col = 0;
            foreach(c; std.ascii.newline)
                put(outp, c);
        }
        while (tok._loc._col > loc._col)
        {   ++loc._col;
            put(outp, ' ');
        }

        if (tok._id == Tok.BComment || tok._id == Tok.StringLit)
        {
            tok.writeTo(outp);
            auto s = tok._text;
            dchar c = s.front;
            for (; !s.empty; s.popFront)
            {
                if (lexer.isNewLine(s.front) && !(c == '\r' && s.front == '\n'))
                {
                    ++loc._line; loc._col = 0;
                }
                else
                    ++loc._col;
            }
        }
        else
            loc._col += tok.writeTo(outp);
    }
    foreach(c; std.ascii.newline)
        put(outp, c);
}
