n:3+count i:read0`17.txt
N:count j:raze (.[-]"j"$(i;"0")),\:3#0N
B:100000
d0:0,(N-1)#B

f:{[dr;dd;du;v]
    c1: til[N]+v;
    c2: c1+v;
    c3: c2+v;
    w1: j;
    w2: w1 + B^j c1;
    w3: w2 + B^j c2;
    min(w1 + B^dd c1 ;w1 + B^du c1;
        w2 + B^dd c2 ;w2 + B^du c2;
        w3 + B^dd c3 ;w3 + B^du c3)
 }

F:{[dr;dd;dl;du]
    dr&: f[dr;dd;du;1];
    dd&: f[dd;dl;dr;n];
    dl&: f[dl;du;dd;-1];
    du&: f[du;dr;dl;0-n];
    (dr;dd;dl;du)
 }

first -4#min .[F]/[(d0;d0;d0;d0)]