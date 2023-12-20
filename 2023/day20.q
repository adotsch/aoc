j:read0`20.txt
J:`S xkey `Con`Fli`S`D!/:{("&"=x 0;"%"=x 0;`$x except"&%";`$", "vs y)} .' " -> " vs/:j
B:`broadcaster
init:{
    C::`S`D xkey update State:0b from ungroup select S,D from J;
    F::exec S!count[i]#0b from J where Fli
 }
f:{[so;de;msg]
    $[de=B;flip(B;J[B;`D];msg);
      (r:J de)`Con;[@[`C;so,de;:;msg];flip(de;r`D;not all exec State from C where D=de)];
      (r`Fli)&not msg;[@[`F;de;not];:flip(de;r`D;F de)];
        ()
    ]
 }
init[]; prd 0+sum{sum each 01b=\:last@'raze(raze f .')\[enlist(`;B;0b)]}'[til 1000] //part 1
sub:{B,{distinct x,raze exec D from J where S in x}/[x]} each J[B;`D]
prd J {[J0;KEEP]                                                                    //part 2
    J::update D:D inter\:KEEP from delete from J0 where not S in KEEP;
    init[];W:1;while[not (`rx,0b) in 1_'raze {raze f .' x}\[enlist(`;B;0b)];W+:1];W
 }/: sub
