i:read0`22.txt
//part 1
I:2 cut get"(0;",(ssr[;"L";";-1;"]ssr[;"R";";1;"]last i),")"
J:(sums[I[;0]] mod 4) where I[;1]
D:(1 0;0 1;-1 0;0 -1)
M:-2_i
M:" ",/:((max count each M)$M),\:" "
M:{enlist[x],y,enlist x}[count[M 0]#" ";M]

f1:{[d]
    x1:X+D[d]0;y1:Y+D[d]1;
    if[" "=M[y1;x1];
        j:50;
        while[M[Y-j*D[d]1;X-j*D[d]0] in ".#";j+:50];
        x1:X-(j-1)*D[d]0; y1:Y-(j-1)*D[d]1;
    ];
    if["."=M[y1;x1];X::x1;Y::y1];
 }

X:X0:1+min M[1]?".#"; Y:1
f1 each J;
sum 1000 4 1 * Y,X,last J   //97356

//part 2

/        --- --- 
/       | 1 | 2 |
/        --- --- 
/       | 3 |
/    --- --- 
/   | 4 | 5 |
/    --- --- 
/   | 6 |
/    --- 

C:(" 12";
   " 3 ";
   "45 ";
   "6  ")

tile:{[X;Y] C[(Y-1) div 50;(X-1) div 50]}

f2:{[d]
    di:">v<^" d0:mod[d+dc;4];
    x1:X+D[d0]0;y1:Y+D[d0]1;dc1:dc;
    if[" "=M[y1;x1];
        t:tile[X;Y];
        if[(t;di)~"1^"; x1:1;     y1:X+100; dc1+:1];    / >6
        if[(t;di)~"1<"; x1:1;     y1:151-Y; dc1+:2];    / >4
        if[(t;di)~"2^"; x1:X-100; y1:200;   dc1+:0];    / ^6
        if[(t;di)~"2>"; x1:100;   y1:151-Y; dc1+:2];    / <5
        if[(t;di)~"2v"; x1:100;   y1:X-50;  dc1+:1];    / <3
        if[(t;di)~"3>"; x1:50+Y;  y1:50;    dc1-:1];    / ^2
        if[(t;di)~"5>"; x1:150;   y1:151-Y; dc1-:2];    / <2
        if[(t;di)~"5v"; x1:50;    y1:100+X; dc1+:1];    / <6
        if[(t;di)~"6>"; x1:Y-100; y1:150;   dc1-:1];    / ^5
        if[(t;di)~"6v"; x1:100+X; y1:1;     dc1+:0];    / v2
        if[(t;di)~"6<"; x1:Y-100; y1:1;     dc1+:3];    / v1
        if[(t;di)~"4<"; x1:51;    y1:151-Y; dc1+:2];    / >1
        if[(t;di)~"4^"; x1:51;    y1:50+X;  dc1+:1];    / >3
        if[(t;di)~"3<"; x1:Y-50;  y1:101;   dc1-:1];    / v4
    ];
    if["."=M[y1;x1];X::x1;Y::y1;dc::dc1];
 }

X:X0; Y:1; dc:0
f2 each J;
sum 1000 4 1 * Y,X,(dc+last J)mod 4     //120175