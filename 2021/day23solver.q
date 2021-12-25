/
I:( // 123456789AB
     "#############";
     "#...........#";    /1
     "###B#A#A#D###";
     "  #D#C#B#A#  ";    /3
     "  #D#B#A#C#  ";    /4
     "  #B#C#D#C#  ";    /5
     "  #########  "
  )
\
-1 I;

corri:(1;1 2 4 6 8 10 11)
roomy:2+til count[I]-3
roomA:(roomy;3)
roomB:(roomy;5)
roomC:(roomy;7)
roomD:(roomy;9)
roomL:3 5 7 9!"ABCD"
w:"ABCD"!1 10 100 1000

allowed:{[r;l] $["."<>r 0;"";("."<>r)~r=l;l;""]}

f:{[I;s;room]
    T:([]m:();s:());
    cl:reverse corri[1] where corri[1]<room 1;
    cr:corri[1] where corri[1]>room 1;
    r:.[I]room;
    if[count a:allowed[r;roomL room 1];         //not full and someone may move in
        pos:last where "."=r;
        ci:();
        if[count cli:cl where "."<>I[1;cl];     //candidate to the left
            ci,: cli 0];
        if[count cri:cr where "."<>I[1;cr];     //candidate to the right
            ci,: cri 0];
        while[count ci;
            p:I[1;ci 0];
            if[p in a;
                dist:1+pos+abs room[1]-ci 0;
                J:I;
                J[1;ci 0]:".";
                J[room[0]pos;room 1]:p;
                T,:`m`s!(J;s+dist*w p);
            ];
            ci:1_ci;
        ];
    ];
    if[any["."<>r]&not("."<>r)~r=roomL room 1;  //not empty and not all in place, so try to move out someone
        pos:first where "."<>r;
        p:r pos;
        ci :cl where (and\)"."=I[1;cl];         //candidate positons to the left
        ci,:cr where (and\)"."=I[1;cr];         //candidate positons to the right
        while[count ci;
            dist:1+pos+abs room[1]-ci 0;
            J:I;
            J[1;ci 0]:p;
            J[room[0]pos;room 1]:".";
            T,:`m`s!(J;s+dist*w p);
            ci:1_ci;
        ];
    ];
    T
  }

fABCD:{[I;s] f[I;s;roomA],f[I;s;roomB],f[I;s;roomC],f[I;s;roomD]}

done:{[I] (all"A"=.[I]roomA)&(all"B"=.[I]roomB)&(all"C"=.[I]roomC)&(all"D"=.[I]roomD)}

S:{[T]
    work:exec i from T where not d;
    if[0=count work;: T];
    T1:raze {fABCD . x`m`s} peach T work;
    T1:update d:done peach m from T1;
    T:delete from T where i in work;
    T:T upsert T1;
    distinct select from T where s=(min;s) fby m
 }

T:enlist `m`s`d!(I;0;0b);

first S/[T]`s