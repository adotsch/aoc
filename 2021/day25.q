\l aoc.q
i:read0`:25.txt
`rote`rots set' tnei[(0 1;1 0);i];
j:raze i
cnt:0
mv:{[j]
    me:where (">"=j)&("."=j rote);j[me]:".";j[rote me]:">";
    ms:where ("v"=j)&("."=j rots);j[ms]:".";j[rots ms]:"v";
    cnt+::1;
    j
 }
mv/[j];cnt