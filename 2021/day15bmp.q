\l bmp.q
saveBmp:{[f]
    path:{not 1 1~x} {[x]c:x+/:(-1 0;1 0;0 -1;0 1); c first where {x = min x}(J .)'[c]}\ 2#count i;
    b:raze J[s;s];b%:max b;b*:255;b:"j"$b;
    tr:1-@[b*0;sum (count i;1) * flip -1+path;:;1];
    tr:raze reverse count[i] cut tr;
    b:raze reverse count[i] cut b;
    f 1: .bmp.genFromRGB[count i;count i] tr*/:(b div 2;b;255-b)
 }

i:"J"$''read0`:15.txt
dijkstra:{
    I:(2#2+n:count i)#0W;
    s::1+til n;
    I[s;s]:0;
    f:{x[s;s]:i+min(x[s;s-1];x[s-1;s];x[s;s+1];x[s+1;s]);x[1;1]:0;x};
    J::f/[I];
    J . 2#n
 }
dijkstra[]
saveBmp`:day15_1.bmp
i:1+mod[;9] 2(flip raze til[5]+\:)/i-1
dijkstra[]
saveBmp`:day15_2.bmp