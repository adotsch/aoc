.q,:use`kx.fusion:pcre2
a:raze{x+til 1+y-x}.'"J"$"-"vs'","vs first read0`02.txt             //all numbers (only a few million)
t:{count first match["^(.+)\\1$";string x;::]}                      //repeated twice?
sum a where t'[a]
r:{count first match["^(.+)\\1+$";string x;::]}                     //repeated 1+ times?
sum a where r'[a]
