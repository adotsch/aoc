n:count i:read0`22.txt
I:`z0 xasc `x0`y0`z0`x1`y1`z1!/:(raze'){(x&y;x|y)}.'(get'')"~"vs'i
isect:{[a0;a1;b0;b1] 0>=(a0-b1)*(a1-b0)}
fall:{[I;b]
    below:max exec z1 from I 
        where isect[x0;x1;b`x0;b`x1], isect[y0;y1;b`y0;b`y1];
    b[`z0`z1]-:b[`z0]-1+0|below;
    I upsert b
 }
J:(0#I) fall/ I;
support:{[I;b]
    exec i from I where z0=b[`z1]+1, 
        isect[x0;x1;b`x0;b`x1], isect[y0;y1;b`y0;b`y1]
 }
S:`s xgroup ungroup select id:i, s:support[J]'[J] from J
n-count distinct raze exec id from S where 1=count'[id]     //part 1
collapse:{[S;j]
    S:update id:id except\: j from S;
    (S;exec s from S where 0=count'[id])
 }
sum {                                                       //part 2
    count exec s from first[.[collapse]/[(S;x)]] where 0=count'[id]
 } each til n