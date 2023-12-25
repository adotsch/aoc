i:.[142 142#".";(1+til 140;1+til 140);:;read0`10.txt]
n:"|-LJ7F.S"!("NS";"EW";"NE";"NW";"WS";"ES";"";"NEWS")
o:"NEWS"!"SWEN";
keep_circ:{[i]
    i0: -1 rotate i; i1: 1 rotate i; i2: -1 rotate'i; i3: 1 rotate'i;    
    {[c;c0;c1;c2;c3]
        (".",c)1<count (o n c) inter raze (1#'"SNEW") inter' n c0,c1,c2,c3
    }''[i;i0;i1;i2;i3]
 }
expand_s:{[i]
    i0: -1 rotate i; i1: 1 rotate i; i2: -1 rotate'i; i3: 1 rotate'i;    
    {[c;c0;c1;c2;c3]
        (c,"S")0<count n[c] inter "NSWE" where "S"=c0,c1,c2,c3
    }''[i;i0;i1;i2;i3]
 }
.5*(sum/)"S"=r:(expand_s/)(keep_circ/)i               //part 1
j:142 cut @[raze i;where"S"<>raze r;:;"."]
N:"NS" in\:/: n
sum {sum (1 1~/:sums[N x] mod 2) where "."=x} each j  //part 2

/

^--- first version, slow, but worked