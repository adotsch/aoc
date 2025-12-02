# Part 1

My first solution for Part 1 relies on the fact that the numbers we are looking for within a range are of the form `n*11, n*101, n*1001, ...` that is, multiples of numbers with `2,4,6,...` digits, respectively.
It’s straightforward to adjust the `[𝑥,𝑦]` interval so that it includes only numbers with an even number of digits, and it’s also easy to generate all solutions of the form like `x<=n*11<=y` or `x<=n*101<=y`, etc.
The result is a very fast solution.

# Part 2

Part 2 asks for numbers whose digits repeat not just twice, but any number of times. Generalizing the approach from Part 1 seemed unnecessarily time-consuming, and I also realized that the intervals contain only a few million numbers, small enough to simply check each one directly.
So I implemented a function that verifies whether a number is composed of repeated digit blocks. The idea is simple: for a 9-digit string `s`, the expression `s~9#3#s` tells you whether it consists of a 3-digit block repeated three times. The same principle extends naturally to other lengths and periods, just need to test all relevant periods, which becomes `any s~/:n#'p#\:s` after finding all relevant periods.