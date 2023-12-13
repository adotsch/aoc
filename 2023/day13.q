i:1_'(where[""~/:i]_i:enlist[""],read0`13.txt)
f:{
    r:where((~)':)x;
    r where x {n:min count@'(a:reverse y#x;b:y _ x);(n#a)~(n#b)}/:r
 }
g:{100 1*(f x;f flip x)}
sum (raze/) g each i
h:{
    rs:g each count[x 0]cut/:@[raze x;;".#"!"#."]'[til count raze x];
    first raze/[rs] except raze 0,g x
 }
sum h each i