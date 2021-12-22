\l aoc.q
i:"J"$''read0`:15.txt
dijkstra:{
    n::flip 4#'nei[(-1 0;1 0;0 -1;0 1);i];
    last {x:j+min x n;x[0]:0;x}/[0*j::raze i]
 }
\t 0N!`part1,dijkstra[]
i:1+mod[;9] 2(flip raze til[5]+\:)/i-1
\t 0N!`part2,dijkstra[]