I:get@'read0`18.txt
//part 1
D:(1 0 0;-1 0 0;0 1 0;0 -1 0;0 0 1;0 0 -1)
s:{[I] sum count@'I except/:D+/:\:I}
s I
//part 2
I+:1
U:cross/[til@'2+max I]
f:{[C] distinct C,U inter raze[D+/:\:C] except I}
s U except f/[1 3#0]

/

D:1 0 0;-1 0 0;0 1 0;0 -1 0;0 0 1;0 0 -1)
  raze(neg\)rotate[1]\[1 0 0]
  raze(-:\)rotate[1]\[1 0 0]
  {neg 1 rotate x}\[1 0 0]
  {0-3#1_x,x}\[1 0 0]
  {0-1_4#x}\[1 0 0]
  (0-1_4#)\[1 0 0]

k).q.unio:?,
f:{[C] C unio U inter raze[D+/:\:C] except I}
