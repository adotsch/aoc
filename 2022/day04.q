i:("jj";"-")0:/:("**";",")0:`04.txt
sum {0>=.[*]x-y} . i
sum {0>=.[*]x-reverse y} . i

/

initial version of the above

sum {(((x[0]<=y[0])&(y[1]<=x[1]))or((y[0]<=x[0])&(x[1]<=y[1])))} . i
sum {not(y[1]<x[0])or(x[1]<y[0])} . i
