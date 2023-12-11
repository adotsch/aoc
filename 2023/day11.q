i:read0`11.txt
e:(flip{raze(1+0=sum each "#"=x)#'enlist'[x]}@)/[2;]
d:{.5*(sum/)c{abs x-y}\:/:c:raze x{where[x="#"],\:y}'til count x}
d1:d i; d2:d e i; "j"$(d2;d2+999999*d2-d1)
