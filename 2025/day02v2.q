//If you need one more, we can just generate enough patterns and intersect
a:raze{x+til 1+y-x}.'"J"$"-"vs'","vs first read0`02.txt             //all numbers (only a few million)
m :11*1+til 9                                                       //all repeated patters in the input's range
m,:101*10+til 90
m,:1001*100+til 900
m,:10001*1000+til 9000
m,:100001*10000+til 90000
sum a inter m
m :raze (11111111;1111111;111111;11111;1111;111;11)*\:1+til 9       //all repeated patters in the input's range
m,:raze (101010101;1010101;10101;101)*\:10+til 90
m,:raze (1001001001;1001001;1001)*\:100+til 900
m,:raze (100010001;10001)*\:1000+til 9000
m,:100001*10000+til 90000
sum a inter m