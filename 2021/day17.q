`X`Y set' 2 cut i:get @[i;where 1-(i:first read0`:17.txt) in "-",.Q.n;:;" "];
N:1+2*max abs i
XVs:til[N]
YVs:til[N] - N div 2
XVs:{x where {any sums[0|x-til N] within X}'[x]} XVs  // <-- opti
YVs:{x where {any sums[x-til N] within Y}'[x]} YVs    // <-- opti
f:{[vx;vy]
    xp:sums 0|vx-ns:til N;
    yp:sums vy-ns;
    h:where (xp within X) & (yp within Y);
    $[count h;max (1+max h)#yp;-0W]
 }
\t show (max;{sum -0W<x}) @\: (f .) peach XVs cross YVs
