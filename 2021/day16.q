i:raze 1_'2 vs/: 16+"X"$/:first read0`:16.txt
f:{
    v:2 sv i x+0 1 2;x+:3;
    t:2 sv i x+0 1 2;x+:3;
    if[t=4;     //literal
        n:0;
        while[1=i x;n*:16;n+:2 sv i x + 1 2 3 4;x+:5];
        n*:16;n+:2 sv i x + 1 2 3 4;x+:5
    ];
    if[t<>4;    //operator
        N:();
        b:i x;
        if[b=0; //lenght id type 0
            len:2 sv i x+1+til 15;x+:16;
            while[len>0;
                r:f x;N,:r`n;v+:r`v;
                len-:r[`x]-x;
                x:r`x]
        ];
        if[b=1; //lenght id type 1
            packs:2 sv i x+1+til 11;x+:12;
            do[packs;
                r:f x;N,:r`n;v+:r`v;
                x:r`x]
        ];
        n:"j"$(sum;prd;min;max;::;(>).;(<).;(=).)[t] N
    ];
    `v`n`x!(v;n;x)
 }
f[0]`v`n