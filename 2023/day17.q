n:10+count i:read0`17.txt
N:count j:raze (.[-]"j"$(i;"0")),\:10#0N
B:100000
d0:0,(N-1)#B
f1:{[dr;dd;du;v]
    c: til[N]+/:v*til 4; w: sums B^j 3#c;
    min w + B^(dd&du)1_c
 }
f2:{[dr;dd;du;v]
    c: til[N]+/:v*til 11; w: sums B^j 10#c;
    min (3_w) + B^(dd&du)4_c
 }

f:{[n0;n1;dr;dd;du;v]
    c: til[N]+/:v*til 1+n1; w: sums B^j n1#c;
    min ((n0-1)_w) + B^(dd&du)n0 _c
 }
F:{[f;dr;dd;dl;du]
    dr&: f[dr;dd;du;1];
    dd&: f[dd;dl;dr;n];
    dl&: f[dl;du;dd;-1];
    du&: f[du;dr;dl;0-n];
    (dr;dd;dl;du)
 }
first -11#min .[F f[1;3]]/[(d0;d0;d0;d0)]
first -11#min .[F f[4;10]]/[(d0;d0;d0;d0)]