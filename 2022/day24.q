i:read0`24.txt
d:">v<^"!(1 0;0 1;-1 0;0 -1)
sx:count[i 0]-2;sy:count[i]-2;c:sx*sy
M:c#enlist("#><^v."!"#.....")i
f:{[x;y]
    t:i[y;x];
    $[t in "#.";();[
        xs:1+mod[(x-1)+d[t;0]*til c;sx];
        ys:1+mod[(y-1)+d[t;1]*til c;sy];
        .[`M;;:;"#"]@'til[c],'ys,'xs
    ]]
 }
.[f] each cross[1+til sx;1+til sy];
c:1+(1_M)?M 0
M:M0:c#M
rot:{y .(x+til@'n)mod n:count@'(count[x]-1)first\y}
dim:{-1_count@'first\[x]}
tnei:{[n;m](raze/)@'n rot\:d#til prd d:dim m}
N:tnei[(-1 0 0;-1 -1 0;-1 1 0;-1 0 -1;-1 0 1);M]
M:(".#"!0 0W)raze/[M]
D0:(raze/)(".#S"!0W 0W 0).[M0;0 0 1;:;"S"]
F:{[D] D&0W^1+min M|/:D N}
sh:{min (c;sy+2;sx+2)#x}
D:F/[D0]
{x}part1:sh[D][sy+1;sx]     //part1
D1:(raze/)(".#S"!0W 0W,part1).[M0;(part1 mod c;sy+1;sx);:;"S"]
D:F/[D1]
part21:sh[D][0;1]
D2:(raze/)(".#S"!0W 0W,part21).[M0;(part21 mod c;0;1);:;"S"]
D:F/[D2]
{x}part2:sh[D][sy+1;sx]     //part2