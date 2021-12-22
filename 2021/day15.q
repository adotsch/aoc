i:"J"$''read0`:15.txt
dijkstra:{
    I:.[(2#2+n)#0W;(s;s::1+til n:count i);:;0];
    f:{x[s;s]:i+min(x[s;s-1];x[s-1;s];x[s;s+1];x[s+1;s]);x[1;1]:0;x};
    f/[I] . 2#n
 }
\t 0N!`part1,dijkstra[]
i:1+mod[;9] 2(flip raze til[5]+\:)/i-1
\t 0N!`part2,dijkstra[]