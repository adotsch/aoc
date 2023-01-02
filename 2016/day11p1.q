w:`e`m1`m2`m3`m4`m5`g1`g2`g3`g4`g5

s:1,1 3 3 3 3,1 2 2 2 2
e:count[w]#4

elim:{[r]
    r:flip w!flip r;
    r:delete from r where m1<>g1, any m1=/:(   g2;g3;g4;g5);
    r:delete from r where m2<>g2, any m2=/:(g1;   g3;g4;g5);
    r:delete from r where m3<>g3, any m3=/:(g1;g2;   g4;g5);
    r:delete from r where m4<>g4, any m4=/:(g1;g2;g3;   g5);
    r:delete from r where m5<>g5, any m5=/:(g1;g2;g3;g4   );
    value each r
 }
moves0:{
    is:0,'i:1_where x=x 0;
    is,:0,'{raze x,/:'x where@'x>/:x}i;
    r:();
    if[1<x 0;r,:@[x;;-;1] each is];
    if[4>x 0;r,:@[x;;+;1] each is];
    r
 }

v:`g#enlist s
q:enlist s
n:0
while[not e in v;
    0N!n+:1;
    m1:elim distinct raze moves0 peach q;
    m1:m1 except v;
    q:m1;
    v,:m1;
 ];
\\