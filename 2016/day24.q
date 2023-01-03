i:read0`24.txt
w:count i 0
l:(mod[;w];div[;w])@\:/:raze[i]?"01234567"
moves:.[{
    r:();
    if["#"<>i[y;x-1];r,:enlist(x-1;y)];
    if["#"<>i[y;x+1];r,:enlist(x+1;y)];
    if["#"<>i[y-1;x];r,:enlist(x;y-1)];
    if["#"<>i[y+1;x];r,:enlist(x;y+1)];
    r
 }]
f:{[s]
    v:(`g#enlist s)!1#0;
    q:enlist s;
    n:0;
    while[count q;
        n+:1;
        q:distinct[raze moves peach q] except key v;
        v[q]:n;
    ];
    v
 }
d:f'[l]@\:l                         //distance matrix
p:0,/:{$[1=count x;x;raze x,''.z.s@'x except/:x]}1_til 8
min {sum d ./: 1_(,)':[x]} each p   //part 1
p:p,\:0;
min {sum d ./: 1_(,)':[x]} each p   //part 2