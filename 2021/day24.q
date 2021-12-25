i:read0`:24.txt
j:(where i like "inp*") _ i
.q.add:+;.q.mul:*;.q.eql:=
cc:{[is]f:"{[x;y;z;w] ",raze{p:" "vs x;p[1],":",p[1]," ",p[0]," ",p[2],";"}each 1_is;get f,"z}"}
F: cc each j
D:1+til 9
ZD:`z`d!/:p:til[250000] cross D
S:{[f;a]
    t:update v:f[0;0;z;d] from ZD;
    t:select from t where v in a;
    select from t where d = (aggr;d) fby z
 }
T:([]v:1#0;ds:enlist())
aggr:max
10 sv 2 last/ T {[T;f]select v:z, ds:(d,'ds) from S[f;T`v] lj 1!T}/ reverse F
aggr:min
10 sv 2 last/ T {[T;f]select v:z, ds:(d,'ds) from S[f;T`v] lj 1!T}/ reverse F
