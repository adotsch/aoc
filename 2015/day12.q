i:.j.k raze read0`:12.txt
w1:{$[(t:type x) in 0 9 98 99h;sum w1 each x;-9h=t;x;0]}
w1 i
w2:{$[(t:type x) in 0 9 98h;sum w2 each x;-9h=t;x;99h<>t;0;not any "red"~/:x;sum w2 each x;0]}
w2 i
