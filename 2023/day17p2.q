n:10+count i:read0`17.txt
N:count j:raze (.[-]"j"$(i;"0")),\:10#0N
B:100000
d0:0,(N-1)#B

f:{[dr;dd;du;v]
    c1: til[N]+v;
    c2: c1+v;
    c3: c2+v;
    c4: c3+v;
    c5: c4+v;
    c6: c5+v;
    c7: c6+v;
    c8: c7+v;
    c9: c8+v;
    c10:c9+v;
    w1: j;
    w2: w1 + B^j c1;
    w3: w2 + B^j c2;
    w4: w3 + B^j c3;
    w5: w4 + B^j c4;
    w6: w5 + B^j c5;
    w7: w6 + B^j c6;
    w8: w7 + B^j c7;
    w9: w8 + B^j c8;
    w10:w9 + B^j c9;
    min(w4 + B^dd c4 ;w4 + B^du c4;
        w5 + B^dd c5 ;w5 + B^du c5;
        w6 + B^dd c6 ;w6 + B^du c6;
        w7 + B^dd c7 ;w7 + B^du c7;
        w8 + B^dd c8 ;w8 + B^du c8;
        w9 + B^dd c9 ;w9 + B^du c9;
        w10+ B^dd c10;w10+ B^du c10)
 }

F:{[dr;dd;dl;du]
    dr&: f[dr;dd;du;1];
    dd&: f[dd;dl;dr;n];
    dl&: f[dl;du;dd;-1];
    du&: f[du;dr;dl;0-n];
    (dr;dd;dl;du)
 }

first -11#min .[F]/[(d0;d0;d0;d0)]