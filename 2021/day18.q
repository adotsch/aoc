i:read0`:18.txt
reduce:{
    f:{[x;d]
        p:"n "0N=d;
        n:sums(-)."[]"=\:x;
        $[
            count ep:@[p;where n<5;:;" "] ss "n n";
            [   //explode
                e:first ep;
                di:sums x in .Q.n;
                i1:di e;i2:di e+2;
                if[1<i1;
                    d[di?i1-1]+:d e];
                if[i2<max di;
                    d[di?i2+1]+:d e+2];
                rem:til[count x] except e + -1 0 1 2;
                x@:rem;x[e-1]:"0";
                d@:rem;d[e-1]:0;
            ];
            count sp:where 9<d;
            [   //split
                s:first sp;
                n1:d[s] div 2;n2:d[s]-n1;
                x:(s#x),"[0,0]",(s+1)_x;
                d:(s#d),0N,n1,0N,n2,0N,(s+1)_d;
            ];
            ::
        ];
        (x;d)
    };
    r:(f .)/[(x;(.Q.n!til 10)x)];
    @[r 0;i;:;.Q.n r[1] i:where 0N<>r 1]
 }
add:{reduce"[",x,",",y,"]"}
mag:{{$[0>type x;x;sum 3 2*.z.s@'x]}get((.Q.n,"[],")!.Q.n,"();")x}

mag (add/) i 
max (mag add .) peach {x where not (~).'x} enlist'[i] cross enlist'[i]