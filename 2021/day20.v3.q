\l aoc.q
a:"#"=first i:read0`:20.txt 
m:.[200 200#0b;(til 100;til 100);:;"#"=2_i]
n:tnei[-1 0 1 cross -1 0 1;m]
f:{a 2 sv x n} 
\t 0N!`part1,sum 2 f/ raze m
\t 0N!`part2,sum 50 f/ raze m