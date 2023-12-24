n:count i:read0`24.txt
I1:2#''I2:`p`v!/:(get'')"@"vs'i
R:200000000000000 400000000000000
det:{(x[0]*y 1)-x[1]*y 0}
ts:{[p0;v0;p1;v1] 
    $[0=d:det[v0;v1];0 0;(det[p1-p0;v1];det[v0;p0-p1])%d]
 }
test:{[p0;v0;p1;v1] 
    t: ts[p0;v0;p1;v1];
    all (0<t),(p0+v0*t 0) within R
 }
sum exec test'[I1.p a;I1.v a;I1.p b;I1.v b]         //part 1
    from (`a`b!/:cross[til n;til n]) where a<b

crss:{[a;b] (det[a 1 2;b 1 2];det[a 2 0;b 2 0];det[a 0 1;b 0 1])}
dl:{[p0;v0;p1;v1] n: crss[v0;v1]; n%: sqrt sum n*n; sum n * p1-p0}
dt01:{[j;t0;t1]
    p0: I2[j 0;`p]+t0*I2[j 0;`v]; v0:(I2[j 1;`p]+t1*I2[j 1;`v])-p0;
    dl[p0;v0;I2[j 2;`p];I2[j 2;`v]]
 }
S:{[j;x;y] 
    vx:dt01[j;;y]'[x+-0.1 0 0.1]; if[vx[0]<>vx[2]; x-:.1*vx[1]%5*vx[2]-vx 0];
    vy:dt01[j;x;]'[y+-0.1 0 0.1]; if[vy[0]<>vy[2]; y-:.1*vy[1]%5*vy[2]-vy 0];
    (x;y)
 }
S3:{[j;x;y] 10 .[S[j 0 1 4]]/ 10 .[S[j 0 1 3]]/ 10 .[S[j 0 1 2]]/(x;y) }
t:floor .5 + .[S3[0 1 2 3 4]]/[0 0];
p0:I2[0;`p]+t[0]*I2[0;`v]; p1:I2[1;`p]+t[1]*I2[1;`v];
floor sum p0-t[0]*(p1-p0)%(t[1]-t 0)                //part 2