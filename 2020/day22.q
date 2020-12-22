i:"I"$2_/:2 0N#enlist[""],read0`:22.txt
/ part 1
f:{$[0=count[x]&count y;(x;y);x[0]>y 0;((1_x),x[0],y 0;1_y);(1_x;(1_y),y[0],x 0)]}
cal:{"j"$(c-til c:count x)wsum x}
cal raze(f .)/[i]
/ part 2
win:{$[(count[x]>x 0)&count[y]>y 0;0<count first(g .)/[(x[0]#1_x;y[0]#1_y;(();()))];x[0]>y 0]}
g:{xy:enlist'[(x;y)];
	$[0=count[x]&count y;(x;y;());
	any any xy in'z;(x;();());
	win[x;y];((1_x),x[0],y 0;1_y;z,'xy);(1_x;(1_y),y[0],x 0;z,'xy)]}
cal raze(g .)/[(i 0;i 1;(();()))]
