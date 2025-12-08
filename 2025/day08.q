N:count i:get@'read0`08.txt
d:i{sum d*d:x-y}\:flip i
//part 1
c:d<(ds:asc raze[d] except 0)2000           //assuming 1000 different distances
prd 3#distinct desc sum {0<x$x:0f+x}/[c]    //assuming 3 different circuit sizes
//part 2
f:{sum first{0<x$x:0f+x}/[d<ds 2*x]}        //how many the 1st node is connected to
r1:f i1:1; r2:f i2:div[N*N-1;2]-1           //find when fully connected
while[1<i2-i1;rm:f im:div[i1+i2;2];$[rm<N;[i1:im;r1:rm];[i2:im;r2:rm]]]
first prd i raze where@'d=distinct[ds]i1