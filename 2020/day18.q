\c 1000 1000
/ part 1, almost unfair :)
sum {get ssr/[reverse x;"(){}";"}{()"]}'[i:read0`:18.txt]
/ part 2
i:{get"(",ssr[x;" ";";"],")"} each i
f:{$[type x;x;{((y-1)#x),enlist[x y+-1 0 1],(y+2)_x}/[x;reverse where(+)~/:x:f'[x]]]}
g:{get ssr/[-3!f x;";,";" "]}
sum g'[i]