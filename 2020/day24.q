i:((ssr/[;("ne";"se";"nw";"sw";"e";"w");"263514"])')read0`:24.txt
d:"123456"!(2 0;1 1;-1 1;-2 0;-1 -1;1 -1)
/ part 1
sum t:mod[;2](count')group sum each d i
/ part 2
`w`h set' 200 100+max j:(200 100+neg min j)+/:j:where t;
j:sum(1;w)*flip j;N:(til w*h)+/:0,sum(1;w)*flip value d
tr:@[14#0b;8 9 2;:;1b];m:7,6#1;c:@[(w*h)#0b;j;:;1b]
life:{tr m wsum x N}
"j"$sum 100 life/ c

/
         3 2
        4 o 1
		 5 6
\