import std.stdio : writefln, File;
import std.array : split;
import std.conv : to;

int solve()
{
    auto file = File("input.txt");
    auto lines = file.byLine();

    int x = 0;
    int aim = 0;
    int depth = 0;

    foreach (line; lines)
    {
        auto operation = line.split;
        int operand = to!int(operation[1]);

        switch (operation[0])
        {
        case "forward":
            x += operand;
            depth += aim * operand;
            break;

        case "down":
            aim += operand;
            break;

        case "up":
            aim -= operand;
            break;

        default:
            throw new Exception("Unreachable");
        }
    }

    return depth * x;
}

void main()
{
    writefln("ANSWER: %d", solve());
}
