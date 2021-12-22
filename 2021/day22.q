i:{(x like "on*"),2 cut get@[x;where not x in .Q.n,"-";:;" "]} each read0`:22.txt
//part 1
r:{x+til 1 +y-x}
f:{[c;o;x;y;z] .[c;(50+r . x;50+r . y;50+r . z);:;o]}
(sum/) {f[x] . y}/[101 101 101#0b;20#i]
//part 2
//split up cube A so that each subcube is either inside/outside of cube B
sp:{[A;B]
    xs:asc distinct (0 1+A[`X]),0 1+B[`X];
    ys:asc distinct (0 1+A[`Y]),0 1+B[`Y];
    zs:asc distinct (0 1+A[`Z]),0 1+B[`Z];
    `X`Y`Z!/:2 cut' flip[(xs;next[xs]-1)][where xs within A`X] cross 
                    flip[(ys;next[ys]-1)][where ys within A`Y] cross 
                    flip[(zs;next[zs]-1)][where zs within A`Z]
 }
//test if interval(s) in a intersect b
int:{[a;b] (b[0]<=a[;1])&(a[;0]<=b 1)}
//add new cube or remove (sub)cubes
F:{[C;o;x;y;z]
    I:exec i from C where int[X;x],int[Y;y],int[Z;z];   //cubes intersecting (x;y;z)
    if[count I;                                         //remove (sub)cubes inside (x;y;z)
        C1:C I;
        C:delete from C where i in I;
        C1:raze C1 sp\: `X`Y`Z!(x;y;z);                 //split up intersecting cubes
        C:C upsert delete from C1 where int[X;x],int[Y;y],int[Z;z];
    ];
    if[o;C:C upsert `X`Y`Z!(x;y;z)];                    //add new cube
    C
 }
//volume
vol:{[C]exec sum (1+X[;1]-X[;0])*(1+Y[;1]-Y[;0])*(1+Z[;1]-Z[;0]) from C}
vol ([]X:();Y:();Z:()) {F[x] . y}/ i