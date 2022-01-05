i:{x[6],get@[x;where not x in .Q.n;:;" "]} each read0`:06.txt
t:" fn"!{1-x},{0},{1}
f:{.[`m;(x[1]+til 1+x[3]-x[1];x[2]+til 1+x[4]-x[2]);t x 0]}
m:1000 1000#0
f each i;
(sum/)m
t:" fn"!{2+x},{0|x-1},{1+x}
m:1000 1000#0
f each i;
(sum/)m
