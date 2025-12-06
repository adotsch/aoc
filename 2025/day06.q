n:flip get each 4#i:read0`06.txt
o:i[4] inter "+*"
sum{get[x] over y}'[o;n]
n:{(0,where null x)_x}"J"$flip 4#i
sum{get[x] over y}'[o;n]
