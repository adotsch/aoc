/ part 1
code:read0`:08.txt;
reset:{vis::count[code]#0;acc::0}
cpu:{[pc]vis[pc]:1;$["nop"~op:3#i:code[pc];pc+1;"acc"~op;[acc+::get"0",4_i;pc+1];pc+get"0",4_i]}
reset`;{not vis x}cpu/0;
acc
/ part 2
fix:{[pc]code[pc]:$[i like"nop*";"jmp";"nop"],3_i:code pc}
pbug:where not code like "acc*"
bug:pbug first where count[code]={fix x;reset`;e:{(not vis x)&x<count code}cpu/0;fix x;e} each pbug
fix bug;reset`;(count[code]>)cpu/0;
acc
