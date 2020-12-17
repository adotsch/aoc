i:read0`:17.txt
/ part 1
X:12+w:count i 0;Y:12+h:count i;Z:13
c:(raze/).[(Z;Y;X)#0b;(6;6+til h;6+til w);:;i="#"]
n:(raze/)0{-1 0 1+\:x*y}/0,Y,X;N:(til count c)+/:n
m:@[27#1;13;:;26];tr:@[52#0b;3 28 29;:;1b]
life:{tr m wsum x N}
sum 6 life/ c
/part 2
W:13
c:(raze/).[(W;Z;Y;X)#0b;(6;6;6+til h;6+til w);:;i="#"]
n:(raze/)0{-1 0 1+\:x*y}/0,Z,Y,X;N:(til count c)+/:n
m:@[81#1;40;:;80];tr:@[160#0b;3 82 83;:;1b]
sum 6 life/ c
