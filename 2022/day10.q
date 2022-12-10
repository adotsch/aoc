noop:0;addx:0,
i:1+\get","sv read0`10.txt
sum i[c-2]*c:20+40*til 6
show".#"40 cut 2>abs(-1_1,i)-240#til 40

/
 first solution:

i:read0`10.txt
f:{$[x~"noop";0;0,"J"$last" "vs x]}
sum(sums 1,raze f each i)[c-1]*c:20+40*til 6
show".#"2>abs til[40]-/:40 cut -1_(sums 1,raze f each i)
