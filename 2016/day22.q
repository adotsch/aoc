t:`n`s`u`a`p!/:{@[;1 2 3 4;"J"$-1_]" "vs ssr[;"  ";" "]/[x]} each 2_read0`22.txt
//part 1
j:til count t
0+/0+/j {(x<>y)&(t[x;`u]>0)&(t[x;`u]<=t[y;`a])}\:/: j
//part 2
e:19 6  //empty
g:36 0  //goal
d:{sum abs x-y}
D:d[e;0 3]+d[0 3;g - 1 0]   //there is a wall at y=3 with one gap
g[0]-:1;D+:1    //1st step
D+:5*g 0        //the other steps
D
