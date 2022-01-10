I:read0`:07.txt
AND:{2 sv min (16#2)vs/:x,y}
OR:{2 sv max (16#2)vs/:x,y}
NOT:65535- 
LSHIFT:{AND[65535] prd x,y#2}
RSHIFT:{x div prd y#2}
v:@[()!();(1#'.Q.a),.Q.a cross .Q.a;:;0];
GET:{$[x[0] in .Q.a;v[x];get x]}
exe:{x:" -> " vs x;e:" "vs x 0;v[x 1]:$[1=c:count e;GET e 0;2=c;NOT GET e 1;get[e 1][GET e 0][GET e 2]]}
{exe each I;v}/[];
v[1#"a"]
J:@[I;first where I like "*-> b";:;string[v 1#"a"]," -> b"]
{exe each J;v}/[];
v[1#"a"]


