i:get first read0`:06.txt
//1st take
count 80 {((7*g)+x-1),sum[g:0=x]#8}/ i
sum 256 {@[1_x,0;6 8;+;x 0]}/ I:0^count'[group i]til 9
//2nd take, just because it's interesting
S:sum@'1000 {@[1_x,0;6 8;+;x 0]}\ 0 0 0 0 0 0 0 0 1
sum (9#80_S)  * reverse I
sum (9#256_S) * reverse I