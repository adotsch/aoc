# Day 2

## Part 1

My first solution for Part 1 relies on the fact that the numbers we are looking for within a range are of the form `n*11, n*101, n*1001, ...` that is, multiples of numbers with `2,4,6,...` digits, respectively.
It’s straightforward to adjust the `[𝑥,𝑦]` interval so that it includes only numbers with an even number of digits, and it’s also easy to generate all solutions of the form like `x<=n*11<=y` or `x<=n*101<=y`, etc.
The result is a very fast solution.

## Part 1,2

Part 2 asks for numbers whose digits repeat not just twice, but any number of times. Generalizing the approach from Part 1 seemed unnecessarily time-consuming, and I also realized that the intervals contain only a few million numbers, small enough to simply check each one directly.
So I implemented a function that verifies whether a number is composed of repeated digit blocks. The idea is simple: for a 9-digit string `s`, the expression `s~9#3#s` tells you whether it consists of a 3-digit block repeated three times. The same principle extends naturally to other lengths and periods, just need to test all relevant periods, which becomes `any s~/:n#'p#\:s` after finding all relevant periods.

## Part 1,2 KDB-X

Both parts can be solved easily by matching the numbers against the regular expressions `^(.+)\1$` and `^(.+)\1+$`, respectively.
Fortunately, KDB-X now supports full regular expressions.

## Part 1,2 v2

The input appears to be at most 10 digits long, so the total search space is small enough to enumerate all possible repeating patterns exhaustively.
For instance, the two-digit repeating case (like 1010101010, 1212121212, etc.) can be generated in q as:

```q
raze (101010101;1010101;10101;101)*\:10+til 90
```

A handful of similar expressions will cover the other repetition lengths (three-digit, four-digit, etc.). Once we have all these candidates, we can simply take the intersection with the actual input numbers and sum the matches.
The whole process is straightforward and finishes almost instantly.

# Day 9

Some help.

We can compress this:
```
  1 1 1 1 1 1 1 1 1 1 1 1 1 1
1 . . . . . . . . . . . . . .
1 . . . . . . . . . . . . . .
1 . . . . . . . # . . . # . .
1 . . . . . . . . . . . . . .
1 . . . . . . . . . . . . . .
1 . . . . . . . . . . . . . .
1 . . # . . . . # . . . . . .
1 . . . . . . . . . . . . . .
1 . . . . . . . . . . . . . .
1 . . . . . . . . . . . . . .
1 . . # . . . . . . . . # . .
1 . . . . . . . . . . . . . .
1 . . . . . . . . . . . . . .
```
to this (note the weights on rows and cols):
```
  2 1 4 1 3 1 2
2 . . . . . . .
1 . . . # . # .
3 . . . . . . .
1 . # . # . . .
3 . . . . . . .
1 . # . . . # .
2 . . . . . . .
```
Let's draw the lines.

```
  2 1 4 1 3 1 2
2 . . . . . . .
1 . . . # # # .
3 . . . # . # .
1 . # # # . # .
3 . # . . . # .
1 . # # # # # .
2 . . . . . . .
```
How can we fill this shape? Let's keep those `#` that has one below them too.
```
  2 1 4 1 3 1 2
2 . . . . . . .
1 . . . # . # .
3 . . . # . # .
1 . # . . . # .
3 . # . . . # .
1 . . . . . . .
2 . . . . . . .
```
Now, do "parity fill", ie. running sums of 0/1s (`.`/`#`) with mod 2 on each line (that is `mod[sums x;2]`):
```
  2 1 4 1 3 1 2
2 . . . . . . .
1 . . . # # . .
3 . . . # # . .
1 . # # # # . .
3 . # # # # . .
1 . . . . . . .
2 . . . . . . .
```
OR this with the original.
```
  2 1 4 1 3 1 2
2 . . . . . . .
1 . . . # # # .
3 . . . # # # .
1 . # # # # # .
3 . # # # # # .
1 . # # # # # .
2 . . . . . . .
```
Your shape is filled. (Try this on other shapes, it work.)

You can do the rest from here.

# Day 10

This was a hard one! Let me give you some help to solve it without a sledgehammer like linprog (see `day10p2.py`) or z3. You can stop at the first sentence if you like:

You can solve the "parity" of the joltages the same way as in part 1. For each parity solution, subtract it from the joltages and divide the result by two. This reduces the problem to a smaller instance of the same type, which can be solved recursively. Some branches will succeed while others will fail. Just assign a large penalty to failed cases and return the best result at each level.

# Day 11