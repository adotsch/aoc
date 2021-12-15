i:"J"$''read0`:15.txt
dijkstra:{
    I:(2#2+n:count i)#0W;
    s::1+til n;
    I[s;s]:0;
    f:{x[s;s]:i+min(x[s;s-1];x[s-1;s];x[s;s+1];x[s+1;s]);x[1;1]:0;x};
    f/[I] . 2#n
 }
dijkstra[]
i:1+mod[;9] 2(flip raze til[5]+\:)/i-1
dijkstra[]