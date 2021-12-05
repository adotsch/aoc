i:{get"(",x,")"} each ssr[;"->";";"] each read0`:05.txt
m:1000#enlist 1000#0
f1:{[a;b]
    if[a[0]=b 0;m[a 0;{x+til 1+y-x}. asc a[1],b 1]+:1];
    if[a[1]=b 1;m[{x+til 1+y-x}. asc a[0],b 0;a 1]+:1]
 }
f2:{[a;b]
    if[abs[a[0]-b 0]<>d:abs a[1]-b 1;:0];
    n:til 1+d;
    if[b[0]<a 0;c:a;a:b;b:c];
    {m[x;y]+:1}'[a[0]+n;$[a[1]<b 1;a[1]+n;a[1]-n]]
 }
f1 .' i; 2 sum/ 1<m
f2 .' i; 2 sum/ 1<m