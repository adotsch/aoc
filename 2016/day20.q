i:("JJ";"-")0:`20.txt
//i:("JJ";"-")0:("5-8";"0-2";"4-7")
t:update sums c from asc ([]j:i 0;c:1),([]j:1+i 1;c:-1)
first exec j from t where c=0                       //part 1
exec sum j from (update next[j]-j from t) where c=0 //part 2