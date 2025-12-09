i:get@'read0`09.txt
max raze i{prd 1+abs x-y}\:/:i      //part 1
(cx;cy):(asc distinct@)'[flip i]
F:(2*count cx;2*count cy)#0b        //small rectangle map
r:{[c;x:2*c?;y:2*c?]min[x,y]+til 1+abs x-y}
draw:{[(x0;y0);(x1;y1)] F[r[cy;y0;y1];r[cx;x0;x1]]:1b}
draw'[i;1 rotate i];                //draw on small rectange map
F|:1=mod[;2]sums@'F&1 rotate F      //fill inside
W:{sums(0*1#x),x}{sums 0,x}'[F]     //small rectangle counts in 2d
area:{[(x0;y0);(x1;y1)]             //area if inside, or 0 (fast!)
    (x_0;x_1):2*cx?asc x0,x1;(y_0;y_1):2*cy?asc y0,y1;
    a:W[y_0;x_0]+W[y_1+1;x_1+1]-W[y_0;x_1+1]+W[y_1+1;x_0];
    $[a<prd 1+abs(x_0-x_1;y_0-y_1);0;prd 1+abs(x0-x1;y0-y1)]
 }
max raze i area\:/: i               //part 2