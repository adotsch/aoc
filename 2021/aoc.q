//histogram
hist:count@'group@
//dimensions
dim:{$[0>type x;0;-1_count@'{type[x] within 0 19} first\ x]}
//multi dim rot
rot:{y . (x+til@'n) mod n:count@'(count[x]-1) first\ y}
//neigbour (flat) indices           (!: count[(raze/)m] variable length neigbour index lists)
nei0:{[n;m]
        d:dim m;
        M:.[(d+max abs n)#0N;s:til@'d;:;d#til prd d];
        flip[(raze/)@'(n rot\: M) .\:s]
    }
nei:{[n;m] nei0[n;m] except\: 0N}
//neigbour (flat) indices on torus  (!: rectangular: count[n] * count[(raze/)m])
tnei:{[n;m](raze/)@'n rot\:d#til prd d:dim m}

/
 EXAMPLES:

q)nei0[(-1 0;1 0;0 -1;0 1);4 4#0]
   4     1
   5  0  2
   6  1  3
   7  2
0  8     5
1  9  4  6
2  10 5  7
3  11 6
4  12    9
5  13 8  10
6  14 9  11
7  15 10
8        13
9     12 14
10    13 15
11    14

q)nei[(-1 0;1 0;0 -1;0 1);4 4#0]
4 1
5 0 2
6 1 3
7 2
0 8 5
1 9 4 6
2 10 5 7
3 11 6
4 12 9
5 13 8 10
6 14 9 11
7 15 10
8 13
9 12 14
10 13 15
11 14

q)tnei[(-1 0;1 0;0 -1;0 1);4 4#0]
12 13 14 15 0 1 2  3  4  5  6  7  8  9  10 11
4  5  6  7  8 9 10 11 12 13 14 15 0  1  2  3
3  0  1  2  7 4 5  6  11 8  9  10 15 12 13 14
1  2  3  0  5 6 7  4  9  10 11 8  13 14 15 12