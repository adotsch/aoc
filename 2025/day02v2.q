//If you need one more, we can just generate enough patterns and intersect
a:raze{x+til 1+y-x}.'"J"$"-"vs'","vs first read0`02.txt             //all numbers (only a few million)
m: "J"${x,x} each string 1+til 99999                                //all repeated patters in the input's range
sum a inter m
m: "J"$raze{-1_1_(10 div count x)(x,)\x} each string 1+til 99999    //all repeated patters in the input's range
sum a inter m