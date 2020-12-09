i:get each read0`:9.txt
{x}r:i 25+first where not {any (last[x]-p) in' p except/: p:25#x} each i til[26]+/:til count[i]-25
sum (min;max)@\:{(1+where[r=sums x])#x} s first where any each r = sums each s:til[count[i]-1]_\:i