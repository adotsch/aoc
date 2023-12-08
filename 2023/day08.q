i:read0`08.txt
N:count d:"R"=i 0
g:.[!]flip`${@[x;1;", "vs]}each" = ("vs/:-1_'2_i
//part 1
f1:{j:0;while[x<>`ZZZ;x:g[x;d j mod N];j+:1];j}
f1 `AAA
//part 2
lcm:{x*y div last first .[{(y mod x;x)}]/x,y}
f2:{j:0;while[not x like"*Z";x:g[x;d j mod N];j+:1];j}
(lcm/) f2 each {x where x like "*A"} key g