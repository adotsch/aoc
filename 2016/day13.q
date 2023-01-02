i:get first read0`13.txt
N:100
m:c {mod[;2]sum 2 vs i+(x*x)+(3*x)+(2*x*y)+y+y*y}\:/: c:til N;
d:(0 1;0 -1;1 0;-1 0)
moves:{
    x where 0 = m ./: x:x +/:d
 }
s:1 1
e:39 31
v:`g#enlist s
q:enlist s
n:()
while[not e in v;
    n,:count v;
    q:distinct[raze moves each q] except v;
    v,:q
 ];
count n //part 1
while[51>count n;
    n,:count v;
    q:distinct[raze moves each q] except v;
    v,:q
 ]
n 50    //part 2