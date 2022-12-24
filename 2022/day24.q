i:read0`24.txt
d:">v<^"!(1 0;0 1;-1 0;0 -1)
sx:count[i 0]-2;sy:count[i]-2;
c:sx*1+first where 0=mod[sx*1+til sy;sy]
M:c#enlist("#><^v."!"#.....")i
f:{
    t:i[y;x];
    $[t in "#.";();[
        xs:1+mod[(x-1)+d[t;0]*til c;sx];
        ys:1+mod[(y-1)+d[t;1]*til c;sy];
        .[`M;;:;"#"]@'til[c],'ys,'xs
    ]]
 }
.[f] each cross[1+til sx;1+til sy];
F:{[j;T]
    T:distinct T,update x:x mod(sx+2),y:y mod(sy+2) from raze(
        update x-1 from T; update x+1 from T;
        update y-1 from T; update y+1 from T);
    (j+1;delete from T where "#"=M[j mod c]'[y;x])
 }
r1:  -1 + first .[{not (sx;sy+1) in y}] .[F]/ (  0;enlist`x`y!1 0)
show r1 //part 1
r21: -1 + first .[{not ( 1;   0) in y}] .[F]/ ( r1;enlist`x`y!(sx;sy+1))
r2:  -1 + first .[{not (sx;sy+1) in y}] .[F]/ (r21;enlist`x`y!1 0)
show r2 //part 2