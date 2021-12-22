\l aoc.q
a:"#"=first i:read0`:20.txt 
m:.[200 200#0b;(til 100;til 100);:;"#"=2_i]
f:{a 2 sv (-1 0 1 cross -1 0 1) rot\: x} 
\t 0N!`part1,sum raze 2 f/ m
\t 0N!`part2,sum raze 50 f/ m