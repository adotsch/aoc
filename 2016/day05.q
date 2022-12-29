i:first read0`05.txt
I:md5 peach i,/:string til N:10000000
"0123456789abcdef"I[8#where (0x00=I[;0])&(0x00=I[;1])&(16>I[;2]);2] //part 1
while[8>count distinct I[j:where (0x00=I[;0])&(0x00=I[;1])&(8>I[;2]);2];
    I,:md5 peach i,/:string N+til 1000000; N+:1000000];
"0123456789abcdef"I[j I[j;2]?"x"$til 8;3] div 16                    //part 2