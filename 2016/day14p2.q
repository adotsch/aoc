i:first read0`14.txt
N:25000
j:{2017 {2_.Q.s1 md5 x}/ x} peach i,/:string til N
rept_1st:{y 1 sublist where all y=/:(x-1)next\y}
rept_all:{y where all y=/:(x-1)next\y}
j3:3 rept_1st' j
j5:5 rept_all' j
k:0;ks:()
do[64;
    while[
        $[not""~j3 k;""~j3[k] inter raze j5[k+1+til 1000];1b];
        k+:1
    ];
    ks,:k;
    k+:1;
 ]
last ks