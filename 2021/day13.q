i:read0`:13.txt
d:flip get@'(i?"")#i
f:(first;get@2_)@\:/:11_'(1+i ? "")_i
fold:{[a;c]$[a="x";{(z-abs z-x;y)};{(x;z-abs z-y)}][;;c]}
// 1
count distinct flip (fold . f 0) . d
// 2
S:6 39#0;
({S[y;x]:1}') . d {(fold . y) . x}/ f;
-1 raze@'("  ";"##")S;  //<-- read it