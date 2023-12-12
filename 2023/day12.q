i:(::;get)@'/:" "vs/:read0`12.txt
\l cached.q
cached_fn[`f] {
  $[0=count x;0=count y;
    0=count y;not"#"in x;
    "."=x 0;f[1_x;y];
    "#"=x 0;$[x[y 0]in" .?";$["."in y[0]#x,".";0;f[(1+y 0)_x;1_y]];0];
    "?"=x 0;f[1_x;y]+f["#",1_x;y]
  ]+0
 };
sum f .' i
sum {f["?"sv 5#enlist x;raze 5#enlist y]} .' i