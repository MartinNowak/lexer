import std.stdio, std.getopt;
import dlexer;

enum usage = "usage: lexer [-e|--echo] [-v|--verbose] <sources>";

int printUsage() { writeln(usage); return 0; }
int errorUsage() { stderr.writeln(usage); return 1; }

version (unittest) {} else
int main(string[] args)
{
    bool echo, help, verbose;
    try
        getopt(args,
               "e|echo", &echo,
               "h|help", &help,
               "v|verbose", &verbose);
    catch (Exception e)
        return errorUsage();

    if (args.length < 2)
        return errorUsage();

    if (help)
        return printUsage();

    if (echo)
    {
        foreach(arg; args[1 .. $])
            putTokens(lexFile(arg), stdout.lockingTextWriter());
    }
    else
    {
        foreach(arg; args[1 .. $])
        {
            auto lexer = lexFile(arg);
            size_t sum;
            if (verbose)
            {
                foreach(tok; lexer)
                {
                    ++sum;
                    writeln(tok);
                }
            }
            else
            {
                foreach(tok; lexer)
                    ++sum;
            }
            writefln("%s: %s tokens", arg, sum);
        }
    }
    return 0;
}
