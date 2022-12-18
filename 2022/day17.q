i:first read0`17.txt

{x}S:flip@'(
    (0 0;0 1;0 2;0 3);
    (0 1;1 0;1 1;1 2;2 1);
    (2 2;1 2;0 0;0 1;0 2);
    (0 0;1 0;2 0;3 0);
    (0 0;0 1;1 0;1 1));
ws:4 3 3 1 2
hs:count each S

free:{[j;x;y]
    if[x<0;:0b];
    if[7<x+ws j;:0b];
    :0=count C inter flip`y`x!(y;x)+S j;
 }

f:{[j]
    ws:4 3 3 1 2;
    y0:y:(exec max y from C)+4;
    x:2;
    move:1b;
    while[move;
        //gas
        mx:("<>"!-1 1)i mi mod count i;
        if[free[j;x+mx;y];
            x+:mx];
        mi+::1;
        //fall
        $[free[j;x;y-1];y-:1;move:0b]
    ];
    `C upsert flip`y`x!(y;x)+S j;
    R[y+S[j;0]]+:1;
    if[1<count fr:where 7=R;
        delete from `C where y<max fr;
        R :: til[max fr] _ R;
    ]
 }

//part 1
C:([]y:0;x:til 7);R:(1#0)!1#7;mi:0
f each til[2022] mod 5;
max C.y

//part 2
C:([]y:0;x:til 7);R:(1#0)!1#7;mi:0
t:{r:`j`I`mi`H!(x mod 5;x;mi mod count i;max C.y);f x mod 5;r}
    each til count i; // 3*count i for test input

rep:first select from t where 1<(count;I)fby([]j;mi)

rep:(1#.q),first select from 
    (select j,I,dI:deltas I,mi,H,dH:deltas H from t where j=rep`j,mi=rep`mi) 
    where 
        dI in (where 1<count each group dI), 
        dH in (where 1<count each group dH);

h:rep.H + rep.dH * div[1000000000000 - rep.I; rep.dI];
rem:mod[1000000000000 - rep.I; rep.dI];
h+: t[rep.I+rem;`H] - rep.H;
show h