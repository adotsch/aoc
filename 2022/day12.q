i:read0`12.txt
//helpers
dim:{-1_count@'first\[x]}
rot:{y . mod[x+til@'d;d:dim y]}
nei:{[n;m]
    M:.[(d+max abs n)#0N;s:til@'d;:;d#til prd d:dim m];
    flip[(raze/)@'(n rot\: M) .\:s] except\: 0N
 }
//1
I:raze i
J:((.Q.a,"SE")!(.Q.a,"az"))I
N:nei[(-1 0;1 0;0 -1;0 1);i]
S:0Wi^("S "!0 0N)I
W:{(2>x)+0Wi*2<=x}(-)."j"$(J;J N)
f:{x&min@'W+x N}
f/[S]where"E"=I
//2
S:0Wi^("a "!0 0N)J
f/[S]where"E"=I
