i:read0`10.txt
f:{$[x~"noop";0;0,"J"$last" "vs x]}
sum(sums 1,raze f each i)[c-1]*c:20+40*til 6
show".#"2>abs(6 40#til 40)-40 cut -1_(sums 1,raze f each i)
