i:read0`:13.txt
h:{x:" "vs x;(x[0 10;0];(-1;1)["gain"~x[2]]*get x 3)} each i
m:(!) . flip h
m+:(!) . flip (reverse;::)@'/:h
p:{$[1=count x;x;raze{x,/:y}'[x;.z.s each x except/:x]]}
f:distinct i[;0]
d:{sum m x,'1 rotate x}
max d each f[0],/:p 1_f     //part 1
m[("*" cross f),f cross "*"]:0
max d each "*",/:p f        //part 2

