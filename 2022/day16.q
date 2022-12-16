i:read0`16.txt
I:1!`fr`rt`to!/:{x:" "vs x;"SJS"$(x 1;(.Q.n!.Q.n)x[4];","vs raze 9_x)} each i
R:desc exec fr!rt from I where 0<rt

//part 1

start:`minute`pos`opened`score!(1;`AA;0#`;0)

pot:{
    v:(div[;2]30-x`minute) sublist value x[`opened] _ R;
    @[x;`pot;:;sum v * (30-x`minute)-2*til count v]
 }

opt:{
    o:flip 4#key[x]!();
    if[(x[`pos] in key R);
        if[not x[`pos] in x`opened;
            o:o upsert (x[`minute]+1;x`pos;x[`opened],x`pos;x[`score]+(30-x[`minute])*R x`pos);
        ]
    ];
    o:o upsert (x[`minute]+1;;x`opened;x`score) each I[x`pos;`to];
    o:o upsert (x[`minute]+1;x`pos;x`opened;x`score);
    pot each o
 }

BB:{[S]
    S:delete from S where (score+pot)<max score;
    S:select from S where score=(max;score)fby([]minute;pos;opened);
    ni:exec i from S where minute<30; //,{x=max x}score+pot;
    if[0=count ni;:S];
    S:(delete from S where i in ni),raze opt each S ni;
    S:distinct S;
    if[maxScore[`score]<=ms:max S`score;ms:first S where ms=S`score; if[not maxScore~ms;maxScore::ms;show enlist ms]];
    S
 }

maxScore:``score!0 0

{first x`score}BB/[enlist pot start]    //1716


//part 2

start:`minute1`minute2`pos1`pos2`opened`score!(1;1;`AA;`AA;0#`;0)

pot:{ //potential plus score 
    v:(sum 26-x`minute1`minute2) sublist value x[`opened] _ R;
    @[x;`pot;:;(26-x`minute1) * sum v]
 }

opt:{
    $[x[`minute1]>x`minute2;
        [minute:`minute2;pos:`pos2];
        [minute:`minute1;pos:`pos1]
    ];
    o:flip 6#key[x]!();
    if[(x[pos] in key R);
        if[not x[pos] in x`opened;
            o:o upsert (
                x[`minute1]+`minute1=minute;x[`minute2]+`minute2=minute;
                x`pos1;x`pos2;
                x[`opened],x pos;
                x[`score]+(26-x[minute])*R x pos);
        ]
    ];
    if[pos=`pos1;
        o:o upsert (x[`minute1]+1;x[`minute2]+0;;x`pos2;x`opened;x`score) each I[x pos;`to];
        o:o upsert (x[`minute1]+1;x[`minute2]+0;x`pos1;x`pos2;x`opened;x`score);
    ];
    if[pos=`pos2;
        o:o upsert (x[`minute1]+0;x[`minute2]+1;x`pos1;;x`opened;x`score) each I[x pos;`to];
        o:o upsert (x[`minute1]+0;x[`minute2]+1;x`pos1;x`pos2;x`opened;x`score);
    ];
    o
 }

cnt:0
last_print:.z.p

BB:{[]
    if[.z.p>last_print+00:00:01;
        last_print::.z.p;
        show enlist maxScore;
        show count S;
    ];
    cnt+::1;
    delete from `S where (score+pot)<max score;
    ni:$[cnt mod 10;    //tota hack
        exec i from S where minute1<26,{x>="j"$wsum[.05 .95;(min x;max x)]-1}score;      // greedy
        exec i from S where minute1<26,{x>="j"$wsum[.10 .90;(min x;max x)]-1}score+pot];
    if[0=count ni;:S];
    (delete from `S where i in ni) upsert raze {pot each raze opt each opt x} peach S ni;
    delete from `S where score<(max;score)fby([]minute1;minute2;pos1;pos2;opened);
    S::distinct S;
    if[maxScore[`score]<=ms:max S`score;ms:first S where ms=S`score;maxScore::ms];
    S
 }

maxScore:`x`score!0 0
S:enlist pot start
{first x`score}BB/[S]        // 2504

/

TODO: re-implement part 2: reduce graph to node AA and the nodes with rate>0, compute a
distance matrix for this sub-graph. Implement better estimate for rate increase potential (pot).