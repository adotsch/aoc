a:"#"=first i:read0`:20.txt 
m:.[200 200#0b;(til 100;til 100);:;"#"=2_i]
f:{a 2 sv flip@' raze -1 0 1 rotate\:/: flip@' -1 0 1 rotate\: x} 
sum raze 2 f/ m
sum raze 50 f/ m