i:ssr[;"+";""]@'read0`:23.txt
a:`A;b:`B
inc:{x set 1+get x;PC+::1}
hlf:{x set get[x]div 2;PC+::1}
tpl:{x set 3*get x ;PC+::1}
jmp:{PC+::x}
jie:{PC+::$[0=(get x 0)mod 2;x 1;1]}
jio:{PC+::$[1=get x 0;x 1;1]}
CPU:{[pc]$[0>pc;pc;pc>=count i;pc;get i PC::pc];PC}
A:B:PC:0;CPU/[PC];B     //part 1
A:1;B:PC:0;CPU/[PC];B   //part 2