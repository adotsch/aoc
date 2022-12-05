i:read0`05.txt
s:trim@'flip i[til 8;1+4*til 9]
m:{0 -1 -1 + get x where x in .Q.n," "} each 10_i
f:{[o;s;x] @/[s;x 1 2;(x[0]_;o[x[0]#s x 1],)]}
first each s f[reverse]/ m
first each s f[::]/ m
