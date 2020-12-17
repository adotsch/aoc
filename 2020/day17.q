i:read0`:17.txt
/ part 1
X:12+w:count i 0;Y:12+h:count i;Z:13
c:(Z;Y;X)#0b;c[6;6+til h;6+til w]:i="#";c:(raze/)c
n:(raze/) -1 0 1+\:X*-1 0 1+\:Y*-1 0 1;N:(til count c)+/:n
m:@[27#1;13;:;26];tr:@[52#0b;3 28 29;:;1b]
life:{tr m wsum x N}
sum 6 life/ c
/part 2
W:13
c:(W;Z;Y;X)#0b;c[6;6;6+til h;6+til w]:i="#";c:(raze/)c
n:(raze/) -1 0 1+\:X*-1 0 1+\:Y*-1 0 1+\:Z*-1 0 1;N:(til count c)+/:n
m:@[81#1;40;:;80];tr:@[160#0b;3 82 83;:;1b]
sum 6 life/ c
