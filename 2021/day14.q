i:read0`:14.txt
//1
t:i 0
pm:(!). flip (2_i)@\:(0 1;0 6 1)
pairs:{(2#'-2_(1_)\[x])}
f:{""{(-1_x),$[y in key pm;pm y;y]}/pairs x}
ws:count@'group@
score:(-).(max;min)@\:
score ws 10 f/ t
//2
T:ws pairs t
PM:{x!{(1#x)!1#1}@'x}pairs t
PM,:{x!1 1}@' (!). flip(2_i)@\:(0 1;(0 6;6 1))
F:{value[x] wsum PM key x}
WS:{div[;2] (ws(first t;last t)) + value[x] wsum ws@'key x}
score WS 40 F/ T