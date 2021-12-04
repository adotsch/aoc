i:read0`:04.txt
r:get i 0
t:update m:null b from ([]b:raze@'1_'6 cut get@'raze@' 1_i)
win:{b:flip a:5 cut x;5 in (sum a),sum b}
score:()
draw:{[t;d]
    t:update m|d=b from t;
    score,::exec {x*sum y*1-z}'[d;b;m] from t where win'[m];
    delete from t where win'[m]
 }
t draw/ r;
first score
last score