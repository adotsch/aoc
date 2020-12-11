/ part 1
i:" ",/:read0[`:11.txt],\:" "
mask: raze[-1 0 1 +/: -1 0 1 * w:count i 0] except 0
t:select `g#id, o:0 from (update id:i from ([]o:raze i)) where o="L"
update n:(id+\:mask)inter\:t.id from `t;
tr:3;
f:{
	x:update s:sum'[(id!o)n] from x;
	x:update u:1  from x where o=0,0=s;
	x:update u:-1 from x where o=1,tr<s;
	`u`s _ update o:o+u from x where not null u
 }
t:f/[t]
sum t.o

/ part 2
t: ``n _ update o:0, x:`g#id mod w, y: `s#id div w from t
update n1:{[x0;y0] last  exec id from t where x=x0,y<y0}'[x;y] from `t;
update n2:{[x0;y0] first exec id from t where x=x0,y>y0}'[x;y] from `t;
update n3:{[x0;y0] last  exec id from t where x<x0,y=y0}'[x;y] from `t;
update n4:{[x0;y0] first exec id from t where x>x0,y=y0}'[x;y] from `t;
update n5:{[x0;y0] last  exec id from t where(x+y)=x0+y0,y<y0}'[x;y] from `t;
update n6:{[x0;y0] first exec id from t where(x+y)=x0+y0,y>y0}'[x;y] from `t;
update n7:{[x0;y0] last  exec id from t where(x-y)=x0-y0,y<y0}'[x;y] from `t;
update n8:{[x0;y0] first exec id from t where(x-y)=x0-y0,y>y0}'[x;y] from `t;
update n:flip[(n1;n2;n3;n4;n5;n6;n7;n8)]except\:0N from `t;
t: `x`y`n1`n2`n3`n4`n5`n6`n7`n8 _ t;
tr:4
t:f/[t]
sum t.o

//Show:{w cut @[raze i;exec id from x where 1=o;:;"#"]}
