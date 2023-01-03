i:read0`21.txt
f:{[s;x]
    p:" "vs x;
    $[x like "swap pos*";[
        a:get p 2;b:get p 5;
        @[s;a,b;:;s b,a]
      ];
      x like "swap let*";[
        a:where s=first p 2;
        b:where s=first p 5;
        @[s;(a;b);:;raze p 5 2]
      ];
      x like "reverse *";[
        a:"J"$p 2;b:"J"$p 4;
        @[s;a+til 1+b-a;:;s b-til 1+b-a]
      ];
      x like "rotate r*";[
        a:get p 2;
        neg[a] rotate s
      ];
      x like "rotate l*";[
        a:get p 2;
        a rotate s
      ];
      x like "rotate b*";[
        a:s ? last x;
        a+:1+a>=4;
        neg[a] rotate s
      ];
      x like "move pos*";[
        a:get p 2;b:get p 5;
        j:(til count s) except a;
        j:(b#j),a,b _j;
        s j
      ];
      '"nyi"
    ]
 }
"abcdefgh" f/ i                             //part 1
p:{$[1=count x;x;raze x,''.z.s@'x except/:x]}"abcdefgh"
p first where "fbgdceah"~/:{x f/i} peach p  //part 2