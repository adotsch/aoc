i:first read0`:11.txt
a:.Q.a except "iol"
c3:{x where 3=count@'x}(prev[.Q.a],'.Q.a,'next[.Q.a])except\:" iol"
nx:{a 23 vs 1+23 sv a ? x}
r1:{any (x 0 1 2+/:0 1 2 3 4 5) in c3}
r3:{c:count@'where[(<>)':[x]]cut x;$[any 3<c;1b;1<sum 1<c]}
-1 p1:{while[1;if[r1 x;if[r3 x;:x]];x:nx x]} i;
-1 p2:{while[1;if[r1 x;if[r3 x;:x]];x:nx x]} nx p1;
