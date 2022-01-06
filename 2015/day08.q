i:read0`:08.txt
//part 1
d1:{x:"\\x" vs x;x[0],raze {("c"$get"0x",x 0 1),2_x}each 1_x}
d2:{"\\" sv d1 each "\\\\" vs x}
d3:{"\"" sv d2 each "\\\"" vs x}
d4:{1_-1_x}
pi:{d4 d3 x} each i
count[raze i] - count[raze pi]
//part 2
w:@[255#1;"\"\\";:;2];
((2*count i)+sum raze w i) - count raze i
