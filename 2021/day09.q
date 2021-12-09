i:"J"$''read0`:09.txt
w:count i;h:count i 0
b:{y where y within 0,x-1}
cs:til[w] cross til[h]
//1
j:0>i
{j[x;y]:i[x;y]<min i[b[w]x+-1 1;y],i[x;b[h]y+-1 1]} .' cs;
sum raze j*i+1
//2
j*:h cut 1+til w*h
{{
   if[9=i[x;y];:()];
   if[any g:i[x;y]>i[b[w]x+-1 1;y],i[x;b[h]y+-1 1];
     j[x;y]:(j[b[w]x+-1 1;y],j[x;b[h]y+-1 1]) first where g];
 } .' cs;
 j}/[j];
prd 3#desc count@'group raze[j] except 0