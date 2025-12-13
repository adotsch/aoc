i:{(".#"?-1_1_x 0;get each -1_1_x;get -1_1_last x)}each" "vs'read0`10.txt
bits:{$[x;raze 0 1,'\:.z.s x-1;1 0#0]}
parj:{[nj;b]            //button presses groupped by binary joltage parity patterns
    n:count b; bs:bits n;
    bs group mod[@[nj#0;;+;1]'[b where'[bs]];2]
 }
f1:{[par;g]
    min sum'[par g]     //find all button presses and return the best
 }
f2:{[par;b;j]
    $[all 0=j;:0;any 0>j;:10000;];      //exit when solved or can't be solved
    g: j mod 2;                         //lowest binary digits (parities)
    bs:$[g in key par;par g;:10000];    //button presses producing these parities (or exit)
    min sum'[bs] +                      //remove lowest digits, div 2, and repeat (recursively)
        2*f2[par;b]'[div[@[j;;-;1]'[b where'[bs]];2]]   //than return the best
 }
sum {[(g;b;j)] par:parj[count j;b]; (f1[par;g];f2[par;b;j])} each i
 