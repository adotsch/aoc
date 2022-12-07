i:read0`07.txt
p:(1#`:) {$[y~"$ cd /";1#x;y~"$ cd ..";-1_x;y like"$ cd *";x,.Q.dd[last x]`$5_y;x]} \ i
s:"J"$first@'" "vs/:i
d:exec sum s by p from ungroup ([]p;s)
sum d where d<=100000
min d where d>=d[`:]-40000000

/

^-- ungroup and exec idea from Péter Györök
