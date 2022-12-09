i:{x where y}.("CJ";" ")0:`09.txt
s:("UDLR"!(0 -1;0 1;-1 0;1 0))
f:{if[1<max abs x-y;x+:signum y-x];x}
count distinct 1 {0 0 f\ x}/ sums s i
count distinct 9 {0 0 f\ x}/ sums s i
