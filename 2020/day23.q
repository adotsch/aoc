i:"J"$/:"219748365"
init:{@[(1+N)#0;x;:;1 rotate x]}
f:{first C[(x;d;p 2)]:(C p 2;p 0;C d:first(1+(x - 2 3 4 5)mod N)except p:1_3 C\x)}
/ part 1
N:9;C:init i;f/[100;i 0];
10 sv 1_8 C\1
/ part 2
N:1000000;C:init i,10+til 999991;f/[10000000;i 0];
prd 2 C\1