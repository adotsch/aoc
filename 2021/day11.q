i:raze "J"$''read0`:11.txt
w:{x where within[x:x+-1 0 1]0 9}
n:{[y;x]sum@'1 10 */: w[x] cross w[y]} .' til[10] cross til 10;
f:{[m]
    m+:1;
    fl:m>9;
    f0:fl;
    while[sum nf:0|sum'[f0 n]-1000*fl;
        m+:nf;
        f0:0<(m>9)-fl;
        fl+:f0;
    ];
    m*m<10
  }
2 sum/ 0 = 100 f\ i
(1000 f\i) ? 100#0 
