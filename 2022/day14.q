I:raze{1_(;)':[x]}@'get''[" -> "vs/:read0`14.txt]
fl:last max raze I
M:(fl+3;1000)#"."
{.[`M;reverse min[x]+til@'1+max[x]-min x;:;"#"]} each I;
f:{[stopy]
  while[1b;
    cx:500;cy:0;stop:0b;
    while[not stop;
      $["."=M[cy+1;cx]  ; cy+:1;
        "."=M[cy+1;cx-1];[cy+:1;cx-:1];
        "."=M[cy+1;cx+1];[cy+:1;cx+:1];
                         stop:1b
      ];
      if[cy=stopy;:()]
    ];
    M[cy;cx]:"o";
  ]
 }
f[fl];2 sum/"o"=M      // 1
M[fl+2]:1000#"#"
f[0];1+2 sum/"o"=M     // 2
