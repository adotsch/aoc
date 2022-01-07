i:"#"=read0`:18.txt
\l aoc.q
n:nei[0 -1 1 cross 0 -1 1;i]
t:000100000b,001100000b
w:count'[n]#\:9 1 1 1 1 1 1 1 1
j:raze i
life1:{t w wsum' x n}
sum 100 life1/ j                //part 1
corners:@[;0 99 9900 9999;:;1b]
life2:{corners life1 x}
sum 100 life2/ corners j        //part 2
