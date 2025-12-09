i:get@'read0`09.txt
max raze i{prd 1+abs x-y}\:/:i      //part 1
(cx;cy):(asc distinct@)'[flip i]
(wx;wy):{@[(2*count x)#1 0;1+2*til count 1_x;:;-1+1_deltas x]}'[(cx;cy)]
W:wx*/:wy                           //small rectangle areas
F:(count wy;count wx)#0b            //small rectangle map
r:{[c;x:2*c?;y:2*c?]min[x,y]+til 1+abs x-y}
draw:{[(x0;y0);(x1;y1)] F[r[cy;y0;y1];r[cx;x0;x1]]:1b}
draw'[i;1 rotate i];                //draw on small rectange map
F|:1=mod[;2]sums@'F&1 rotate F      //fill inside
area:{[(x0;y0);(x1;y1)]             //area if inside, or 0 (slow)
    $[all raze F[y:r[cy;y0;y1];x:r[cx;x0;x1]];sum raze W[y;x];0]
 }
max raze i area\:/: i               //part 2