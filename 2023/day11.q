i:read0`11.txt
expand:(flip{x where 1+0=sum'[x="#"]}@)/[2;]
dist:{.5*(sum/)c{abs x-y}\:/:c:raze x{where[x="#"],\:y}'til count x}
d1:dist i; d2:dist expand i; "j"$(d2;d1+999999*d2-d1)