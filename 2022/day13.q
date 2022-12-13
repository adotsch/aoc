c:{$[count x;.j.k x;::]}
I:2#'3 cut c@'read0`13.txt
cmp:{
    $[(0>type x)&0>type y;      `long$x-y;
      (0=count x)|0=count y;    count[x]-count y;
      r:cmp[first x;first y];   r;
                                cmp[1_(),x;1_(),y]]
 }
sum 1+where 1>cmp .' I              //1
qs:{$[2>count x;x;qs[x where 0>r],(x where 0=r),qs[x where 0<r:x cmp\: x 0]]}
J:qs(a:c"[[2]]";b:c"[[6]]"),raze I
prd 1+(where a~/:J;where b~/:J)     //2

\
5605
24969

First parser before I realized it's JSON :)

c:{get ssr/[x^!["[],";"{};"]x;("{}";"{";"}");("()";"enlist[";"]")]}

/