i:{get"(",x,")"} each ssr[;"->";";"] each read0`:05.txt
TIL:{$[x=0;0;x>0;til 1+x;neg til 1-x]}
line:{[a;b] flip a+TIL@'b-a}
sum 1<count@'group raze line .' i where 0 in/:(-).'i
sum 1<count@'group raze line .' i