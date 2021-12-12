e:`$"-"vs/:read0`:12.txt
n:distinct raze e
s:n where n~'lower n
m:exec b by a from (`a`b!/:e),(`b`a!/:e)
op:{m[last x] except x inter s}
f:{raze {$[`end~last x;enlist x;count o:op x;x,/:o;()]} peach x}
count f/[enlist 1#`start]
op:{$[1<max s#count each group x;m[last x] except x inter s;m[last x] except `start]}
count f/[enlist 1#`start]