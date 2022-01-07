//histogram
hist:count@'group@
//dimensions
dim:{$[0>type x;0;-1_count@'{type[x] within 0 19} first\ x]}
//multi dim rot
rot:{y . (x+til@'n) mod n:count@'(count[x]-1) first\ y}
//neigbour (flat) indices           (!: count[(raze/)m] variable length neigbour index lists)
nei:{[n;m]
        d:dim m;
        M:.[(d+max abs n)#0N;s:til@'d;:;d#til prd d];
        flip[(raze/)@'(n rot\: M) .\:s] except\: 0N
    }
//neigbour (flat) indices on torus  (!: rectangular: count[n] * count[(raze/)m])
tnei:{[n;m](raze/)@'n rot\:d#til prd d:dim m}
