i:","vs -1_read1`15.txt
h:{mod[17*17 sv"j"$x;256]}
sum h'[i]
f:{k:y inter .Q.a;y:count[k]_y;$["="=y 0;@[x;`$k;:;get 1_y];x _`$k]}
exec sum {x*sum sums reverse y}'[k;v] from
    `k xgroup {([]k:1+h'[string key x];v:value x)}(()!())f/i