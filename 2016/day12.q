code:" "vs'read0`12.txt
cpy:{get y,":",x;pc+:1}
inc:{get x,"+:1";pc+:1}
dec:{get x,"-:1";pc+:1}
jnz:{pc+:$[get x;get y;1]}
cpu:{if[pc<count code;get[code[pc;0]] . 1_code pc];pc}
a:b:c:d:pc:0
cpu/[]; show a
a:b:d:pc:0;c:1
cpu/[]; show a
