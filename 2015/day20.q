i:33100000
N:1000000
n:1+til N
//part 1
a:N#0
{@[`a;x*((N-1) div x)#n;+;10*x]} each n;
first where i<=a
//part 2
a:N#0
{@[`a;x*(50&(N-1) div x)#n;+;11*x]} each n;
first where i<=a
