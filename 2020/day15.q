  
i:11 0 1 10 5 19
/ part 1
last(2020>count@){x,neg(-).-2#where x=last x}/i

/ part 2
j:{(`u#key x)!value x}group i; c:count i
(30000000-count i){l:neg(-).-2#j x;j[l],:c;c+::1;l}/last i

/ part 2 faster with array
N:30000000;j:N#N;j[i]:til count i;c:-1+count i
f:{l:0|c-j x;j[x]:c;c+::1;l}
(N-count i)f/last i