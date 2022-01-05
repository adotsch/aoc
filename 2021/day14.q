i:read0`:14.txt
//1
t:i 0
pairs:2#'-2_(1_)\
pm:{x!x}pairs t
pm,:(!). flip (2_i)@\:(0 1;0 6 1)
f:{""{(-1_x),pm y}/pairs x}
hist:count@'group@
score:(-).(max;min)@\:
score hist 10 f/ t
//2
T:hist pairs t
PM:{x!{(1#x)!1#1}@'x}pairs t
PM,:{x!1 1}@' (!). flip(2_i)@\:(0 1;(0 6;6 1))
F:{value[x] wsum PM key x}
HIST:{div[;2] (hist(first t;last t)) + value[x] wsum hist@'key x}
score HIST 40 F/ T
