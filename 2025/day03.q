i:read0`03.txt
f:{a:max -1_x;b:max(1+first x?a)_x;get a,b}
sum f each i
g:{[n;x]a:max(1-n)_x;$[n=1;a;a,g[n-1](1+first x?a)_x]}
sum {get g[12]x} each i