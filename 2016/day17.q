i:first read0`17.txt
moves:.[{[x;y;s]
    o:(2_.Q.s1 2#md5 s)in"bcdef";
    r:();
    if[(0<y)&o 0; r,:enlist(x;y-1;s,"U")];
    if[(3>y)&o 1; r,:enlist(x;y+1;s,"D")];
    if[(0<x)&o 2; r,:enlist(x-1;y;s,"L")];
    if[(3>x)&o 3; r,:enlist(x+1;y;s,"R")];
    r
 }]
q:enlist(0;0;i)
while[not 3 3 in 2#'q;
    q:raze moves peach q
 ];
count[i] _ last q (2#'q) ? 3 3  //part 1
q:enlist(0;0;i)
n:0;N:0;
while[count q;
    n+:1;
    q:raze moves peach q;
    e:3 3~/:2#'q;
    if[sum 0b,e;N:n];
    q:q where not e; 
 ];
N                               //part2
