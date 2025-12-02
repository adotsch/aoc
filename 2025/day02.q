a:raze{x+til 1+y-x}.'"J"$"-"vs'","vs first read0`02.txt             //all numbers (only a few million)
t:{$[mod[c:count s:string x]2;0b;s~c#(c div 2)#s]}                  //repeated twice?
sum a where t'[a]
r:{p@:where 0=n mod p:1_til n:count s:string x;any s~/:n#'p#\:s}    //repeated 1+ times?
sum a where r'[a]
