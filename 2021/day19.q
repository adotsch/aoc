i:read0`:19.txt
j:"f"$get@'' -1_'1_'{(where "---"~/:3#'i) _ x}i,enlist""

m:"f"$0 1 2 =/:0 1 2
rx:"f"$(1 0 0;0 0 1;0 -1 0)
ry:"f"$(0 0 1;0 1 0;-1 0 0)
rz:"f"$(0 1 0;-1 0 0;0 0 1)
rots:{distinct raze x mmu\:/: (m;rx;ry;rz)}/[enlist m]

good_moves:{    //find moves that produce 12 overlapping beacons
    where 12<=count@'group raze x -\:/: y
 }

S:enlist 0 0 0  //sonars
merge:{[J]      //merge the 1st beacon set with some other
    if[1=count J;:J];
    j0:J 0;jr:1_J;r:0;
    do[24;      //try rotations, find moves to merge beacon sets
        ms:good_moves[j0] peach rs:rots[r] mmu/:/: jr;
        if[count mv:where 0<count'[ms];
            mv:first mv;
            S,:enlist first ms mv;
            j0:distinct j0,first[ms mv]+/:rs mv;
            : enlist[j0], rs _ mv
        ];
        r+:1
    ]
 }

J:merge/[j]
count J 0
"j"$max raze S {sum abs x-y}\:/: S