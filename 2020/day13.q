`d`s set'("J"$;{"J"$/:","vs x})@'read0`:13.txt;
/ part 1
(s first where t=m)*m:min t:neg[d] mod s
/ part 2
up:{i: first where y[1]=mod[x[1]+x[0]*til y 0;y 0];(p;mod[x[1]+i*x 0;p:x[0]*y[0]])}
a:s i:where not null s; b:(a-i)mod a
last(up/)flip(a;b)

/ A hint for part 2:
/
/ Let's say t has to satisfy
/  t = x*p + a
/  t = y*q + b
/ where p,q are coprimes and 0<=a,b, a<p, b<q.
/ We can find (the smallest) c, 0<=c<p*q such that
/  t = z*p*q + c
/ satisfies both.
/ 
/ This is what the up function does, convers (p;a),(q;b) to (p*q,c).
/
/ In the example, t has to satisfy
/
/ t = x*7  + 0
/ t = y*13 + (13-1)
/ t = z*59 + (59-4)
/ t = q*31 + (31-6)
/ t = r*19 + (19-7)
/
/ and you can reduce that by (up/)(7 0;13 12;59 55;31 25;19 12) to
/
/ t = x*3162341 + 1068781
/
/ So, the first good t is 1068781