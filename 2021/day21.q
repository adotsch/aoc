i:"J"$-2#'read0`:21.txt
//1
f:{[s;p;d]
    i:(d-1) mod 2;
    p[i]:1+mod[;10] -1+p[i]+sum d+0 1 2; d+:3;
    s[i]+:p[i];
    (s;p;d)
 }
{(x[2]-1)*min x 0} last {1000>max x 0} (f .)\ (0 0;i;1)
//2
t:([]c:1#1;s1:0;s2:0;p1:i 0;p2:i 1)
dirac:{([]S:key x;C:value x)}count@'group sum flip 2(1 2 3 cross)/1 2 3
F:{[c;t;r]
    t:t cross dirac;
    t:$[0=r mod 2;
        update s1+p1 from update p1:1+mod[;10]p1+S-1 from t;
        update s2+p2 from update p2:1+mod[;10]p2+S-1 from t
    ];
    t:0!select sum c*C by s1,s2,p1,p2 from t;
    c[0]+:exec sum c from t where s1>=21;
    c[1]+:exec sum c from t where s2>=21;
    t:delete from t where (s1>=21)|s2>=21;
    (c;t;r+1)
 }
max first {count x 1} (F .)/ (0 0;t;0)