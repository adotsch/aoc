i:"SSJ"$/:" "vs/:ssr/[;(" to ";" = ");" "] each read0`:09.txt
c:distinct raze i[;0 1]
inf:1000000
m:{x!count[x]#inf}[c cross c],(i[;1 0]!i[;2]),i[;0 1]!i[;2]
p:{$[1=count x;x;raze{x,/:y}'[x;.z.s each x except/:x]]}
d:{sum m -1_x,'next x}
min ds:d peach p c
max ds where ds<inf
