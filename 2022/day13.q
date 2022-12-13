c:{get ssr/[x^!["[],";"{};"]x;("{}";"{";"}");("()";"enlist[";"]")]}
I:2#/:3 cut c@'read0`13.txt
cmp:{
    $[(-7=type x)&-7=type y;    signum x-y;
      (0=count x)|0=count y;    signum count[x]-count y;
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
/