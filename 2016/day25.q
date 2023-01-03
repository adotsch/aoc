code:" "vs'read0`25.txt
cpy:{get y,":",x;pc+:1}
inc:{get x,"+:1";pc+:1}
dec:{get x,"-:1";pc+:1}
jnz:{pc+:$[get x;get y;1]}
out:{1 string get x;pc+:1}
cpu:{if[pc<count code;get[code[pc;0]] . 1_code pc];}
a:0N!0+2+4+16+32+128;   //by trial and error
b:c:d:pc:0;
1"pattern: ";do[100000;cpu[]];-1"";