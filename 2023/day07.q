I:`C`B!/:"*J"$/:" "vs/:read0`07.txt
hist:count each group@
h:(1 1 1 1 1;1 1 1 2;1 2 2;1 1 3;2 3;1 4;1#5)!til 7
//part 1
l1:"23456789TJQKA"
update J1:l1?C from `I;
update H1:{h asc value hist x}'[C] from `I;
sum exec B*i+1 from `H1`J1 xasc I
//part 2
l2:"J23456789TQKA"
update J2:l2?C from `I;
joker:{$[n:count x;@[x;n-1;+;5-sum x];1#5]}
update H2:{h joker asc value hist x except"J"}'[C] from `I;
sum exec B*i+1 from `H2`J2 xasc I
