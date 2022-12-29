i:({x!x}.Q.a)read0`07.txt
abba:{any{$[x~x 3 2 1 0;x[0]<>x 1;0b]}@'4#'-4_((1_)\)x}
0 +/ {10b~{(any abba@'first@'x;any abba@'last@'-1_x)}2 cut " "vs x} each i                        //part 1
abas:{x where {$[x~x 2 1 0;x[0]<>x 1;0b]}@'x:3#'-3_((1_)\)x}
0 +/ {{0<count inter[raze abas@'first@'x;{x 1 0 1}@'raze abas@'last@'-1_x]}2 cut " "vs x} each i  //part 2
