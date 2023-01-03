i:get first read0`19.txt
i:i0:1+til i
while[1<n:count i;i:$[n mod 2;last i;()],i 2*til n div 2];
i 0     //part 1
i:i0
while[1<n:count i;
    j:til m:1|n div 3;
    i:m rotate i where @[n#1b;(2*j)+div[n-j;2];:;0b]
 ];
i 0     //part 2



