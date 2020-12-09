i:get each read0`:9.txt
{x}r:i 25+first where {2>count (last[x]-p) inter p:25#x} each i til[26]+/:til count[i]-25
sum (min;max)@\:{(1+where r=sums x)#x} s first where any each r = sums each s:til[count[i]-1]_\:i