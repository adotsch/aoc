code:c0:" "vs'read0`23.txt
cpy:{get y,":",x;pc+:1}
inc:{get x,"+:1";pc+:1}
dec:{get x,"-:1";pc+:1}
jnz:{pc+:$[get x;get y;1]}
tgl:{
    x:pc+get x;
    if[x<count code;
        code[x;0]:("dec";"inc";"inc";"cpy";"jnz")
                  ("inc";"dec";"tgl";"jnz";"cpy")?code[x;0]
    ];
    pc+:1
 }
cpu:{if[pc<count code;get[code[pc;0]] . 1_code pc];pc}
//part 1
a:7;b:c:d:pc:0
cpu/[];a
//part 2
mul:{[x;y;z;w]get x,":",y,"*",z;get z,":",w,":0";pc+:7}
code:c0;
code[3]:("mul";"a";"b";"d";"c");
a:12;b:c:d:pc:0;
cpu/[];a
