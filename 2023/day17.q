n:10+count i:read0`17.txt
N:count j:raze (.[-]"j"$(i;"0")),\:10#0N
B:100000
d0:0,(N-1)#B
f1:{[dr;dd;du;v]
    c: til[N]+/:v*til 4; w: sums B^j 3#c;
    min w + B^(dd&du)1_c
 }
F:{[f;dr;dd;dl;du]
    dr&: f[dr;dd;du;1];
    dd&: f[dd;dl;dr;n];
    dl&: f[dl;du;dd;-1];
    du&: f[du;dr;dl;0-n];
    (dr;dd;dl;du)
 }
first -11#min .[F f1]/[(d0;d0;d0;d0)]

f2:{[dr;dd;du;v]
    c: til[N]+/:v*til 11; w: sums B^j 10#c;
    min (3_w) + B^(dd&du)4_c
 }
first -11#min .[F f2]/[(d0;d0;d0;d0)]