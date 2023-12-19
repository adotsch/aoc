i:read0`19.txt; S:first[where""~/:i]
c:upper ssr/[;("AR,:{}");("ACCEPT";"REJECT";";";";";":{[X;M;A;S]$[";"]}")]@
ACCEPT:`A set sum; REJECT:`R set {0}; get each c'[S#i]; I:get each((S+1)_i)except\:.Q.a,"={}"
sum (@).'{{100=type first x}.[{(x . y;y)}]/(IN;x)} each I   //part 1
C:{ 
    c:upper ssr/[x;"AR";("ACCEPT";"REJECT")]; b:c?"{";n:b#c; l:","vs -1_(1+b)_ c;
    l0:";"sv{p:":"vs x;c:p 0;f:p 1;"T:",c[0],";",c[0],":",c[0]," where ",c,
              ";res+:",f,"[X;M;A;S];",c[0],":","T where not T",1_c} each -1_l;
    n,":{[X;M;A;S]res:0;",l0,";res+",last[l],"[X;M;A;S]}"
 }
ACCEPT:{[x;m;a;s]0+prd count'[(x;m;a;s)]}; REJECT:{[x;m;a;s]0}; get each C'[S#i];
IN[P;P;P;P:1+til 4000]                                      //part 2