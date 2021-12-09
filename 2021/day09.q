i:"J"$''read0`:09.txt
w:count i;h:count i 0;cs:til[w] cross til[h]
b:{y where y within 0,x-1}
n:{[a;x;y] a[b[w]x+-1 1;y],a[x;b[h]y+-1 1]}
//1
j:{i[x;y]<min n[i;x;y]} .'' h cut cs
sum raze j*i+1
//2
j*:h cut 1+til w*h
{{
   if[9=i[x;y];:()];
   if[any g:i[x;y]>n[i;x;y];
     j[x;y]:n[j;x;y] first where g];
 } .' cs;
 j}/[j];
prd 3#desc count@'group raze[j] except 0