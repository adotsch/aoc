i:read0`:19.txt
//part 1
p:{(),`$where[x in .Q.A] _ x}
m:p last i
r:{(`$;p)@'" => "vs x} each -2_i
t:{x!count[x]#.Q.a}asc distinct(raze/)m,r
m:t m;r:t''[r]
R:exec a!b from `a xgroup `a`b!/:r
count distinct raze {$[m[x] in key R;(x#m),/:R[m x],\:((x+1)_m);()]}@' til count m
//part 2
red:{[m;r]$[0<count i:m ss r 1;(i#\:m),'r[0],'((i+count[r 1])_\:m);enlist m]}
{while[1;
    a:{{x rand where min[l]=l:count'[x]}raze x red/: r}\[m];
    if[1=count last[a];:count[a]-1];]
 }`