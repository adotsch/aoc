i:("CI";1 3)0:4$/:read0`:12.txt
/ part 1
xy: 0 0;d:0;dxy:(1 0;0 1;-1 0;0 -1);D:"ENWS"
{$[x in D;xy+::y*dxy D?x;x in"LR";d::mod[d+(1 -1)[x="R"]*y div 90;4];xy+::y*dxy d];}'[i 0;i 1];
sum abs xy
/ part 2
xy: 0 0;wp:10 1
{$[x in D;wp+::y*dxy D?x;x in"LR";do[y div 90;wp::(-1 1;1 -1)[x="R"]*wp 1 0];xy+::y*wp];}'[i 0;i 1];
sum abs xy