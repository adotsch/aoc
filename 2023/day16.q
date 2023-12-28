n:count i:read0`16.txt; I:raze i,\:" "
rot:">v<^.-|\\/"!"v<^>.|-/\\"; v:"^v<>"!(0-n+1;n+1;-1;1)
R: {last'[x] group 2#'x} raze 3 rot\ (">.>";">->";">\\v";">/^";">|^";">|v")
f:{[T]
    T1:update p+v d from ungroup select d:R[d,'I p], p, g+1 from T where g=last g;
    T,delete from (delete from T1 where " "=I p) where p in' (T[`p] group T`d)d
 }
count distinct f/[([]d:1#">";p:0;g:1)]`p       //part 1
max {count distinct f/[x]`p} peach             //part 2
    {([]d:1#"v";p:x          ;g:1)}'[til n],
    {([]d:1#">";p:x*n+1      ;g:1)}'[til n],
    {([]d:1#"<";p:-1+n+x*n+1 ;g:1)}'[til n],
    {([]d:1#"^";p:x+(n-1)*n+1;g:1)}'[til n]