i:read0`:02.txt
s1:cross/[("ABC";" ";"XYZ")] ! (9#1 2 3) + raze 1 0 -1 rotate\: 0 3 6
sum s1 i
s2:cross/[("ABC";" ";"XYZ")] ! (9#0 3 6) + raze -1 0 1 rotate\: 1 2 3
sum s2 i



/

A shorter vesion with less insights.

i:read0`02.txt
s1:asc[distinct i]!3 6 0 0 3 6 6 0 3+9#1 2 3 
sum s1 i
s2:asc[distinct i]!3 1 2 1 2 3 2 3 1+9#0 3 6
sum s2 i

