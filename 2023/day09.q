i:get'[read0`09.txt]
f:{$[all 0=y _ x;x,0;sums f[deltas x;y+1]]}
sum {last f[x;0]} each i
sum {last f[x;0]} each reverse'[i]