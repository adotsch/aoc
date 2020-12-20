i:(!/)flip {("J"$x[0;5 6 7 8];1_x)} each 1_/:cut[;i]where ""~/:i:enlist[""],read0`:20.txt
/ part 1
edges:{reverse'[t],t:(first x;last x;first'[x];last'[x])}
prd r:where 2=({sum 1=x}')m:j{count[x inter y]div 2}/:\:value j:edges'[i]
/ part 2
k:key i
i:value i                                                                       / tiles
c:key[m]?r                                                                      / corners found in part 1
n:"j"$sqrt count m                                                              / size of the tile grid
M:"f"$1=value m                                                                 / adjacency matrix of matching tiles
P:{M$x}\[n-2;M]                                                                 / number of 1,...n-1 length paths
c:c[0],1#where 1=P[n-2]c 0                                                      / two neigbour corners
g:c[0],raze{[i]where[1=P[i][c 0]] inter where[1=P[n-i+3][c 1]]}'[til n-2],c 1   / shotest path between c[0]-c[1]
g:n cut {x,where[1=M[x count[x]-n]] except x}/[g]                               / the rest of the grid
rots:{{x,reverse'[x]}(reverse flip@)\[x]};hmir:{(x;reverse x)};id:enlist        / permutations
right:{last'[x]~first'[y]};left:{right[y;x]};                                   / relations
below:{last[x]~first y};above:{below[y;x]}                                  
orient:{[x;y;p1;p2;r]t first where(any')(t:p1[x])r/:\:p2[y]}                    / orient x to y
t0:orient[;i g[1;0];hmir;rots;below] orient[i g[0;0];i g[0;1];rots;rots;right]  / orient s[0;0] to s[0;1] and s[1;0]
r0:{orient[y;x;rots;id;left]}\[enlist[t0],i 1_g 0]                              / orient first row
rs:{orient[;;rots;id;above]'[y;x]}\[enlist[r0],i 1_g]                           / orient rest of the grid
p:raze{(,'/)x}'[rs]                                                             / stich tiles
p:p[r;r:raze(1+til count[t0]-2)+/:count[t0]*til n]                              / remove borders
N:count p                                                                       / map size
monster:("                  # ";
         "#    ##    ##    ###";
         " #  #  #  #  #  #   ")
m:raze{where"#"=x}'[monster]+0 1 2*N                                            / monster coords
s:raze til[N-19]+/:N*til N-2                                                    / search area
mark:{[p]p:raze p;p[m+/:s where count[m]=sum"."<>p s+/:m]:"O";N cut p}          / mark the beast
min{sum sum x}'["#"=mark'[rots p]]
