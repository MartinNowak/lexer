import std.stdio;
import dlexer;

int main(string[] args)
{
    if (args.length < 2)
    {
        stderr.writeln("usage: lexer [--echo] <sources>");
        return 1;
    }

    if (args[1] == "--echo")
    {
        foreach(arg; args[2 .. $])
            putTokens(lexFile(arg), stdout.lockingTextWriter());
    }
    else
    {
        foreach(arg; args[1 .. $])
        {
            auto lexer = lexFile(arg);
            size_t sum;
            foreach(tok; lexer)
            {
                ++sum;
                // writeln(tok);
            }
            writeln(sum);
        }
    }
    return 0;
}
