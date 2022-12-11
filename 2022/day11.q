i:read0`11.txt
c:{`item`op`cond`if1`if0`cnt!get'[(
    "(),",17_x 1;
    "{[old]",18_ x[2],"}"),
    last@'" "vs/:x 3 4 5],
    0
 } each 7 cut i
f:{[c;x]
    d:c x;
    item:mw d[`op]d[`item];
    c[x;`item]:0#0;
    c[x;`cnt]+:count item;
    c[d`if1;`item],:item where 0=item mod d`cond;
    c[d`if0;`item],:item where 0<>item mod d`cond;
    c
 }
mw:div[;3]
prd 2#desc @[;`cnt] c f/ (20*8)#til 8
mw:mod[;prd c`cond]
prd 2#desc @[;`cnt] c f/ (10000*8)#til 8
