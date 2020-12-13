`d`s set'("J"$;{"J"$/:","vs x})@'read0`:13.txt;
/ part 1
(s first where t=m)*m:min t:neg[d] mod s
/ part 2
up:{i: first where y[1]=mod[x[1]+x[0]*til y 0;y 0];(p;mod[x[1]+i*x 0;p:x[0]*y[0]])}
a:s i:where not null s; b:(a-i)mod a
last(up/)flip(a;b)