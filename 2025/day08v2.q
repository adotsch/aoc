N:count I:get@'read0`08.txt
E:`d xasc update d:{sum flip d*d:I[x]-I[y]}[a;b] from select from ([]a:til N) cross ([]b:til N) where a<b
G:([]n:1#'til N)
//part 1
merge:{[a;b]
    v: exec any@'(a;b) in/:n from G;
    (delete from `G where v) upsert select enlist raze n from G where v;
 }
exec merge'[a;b] from 1000#E;
prd 3#desc exec count'[n] from G
//part 2
e:{1<count G}{merge . E[x;`a`b];x+1}/1000
first prd I E[e-1;`a`b]