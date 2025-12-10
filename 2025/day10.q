i:{("#"=-1_1_x 0;get each -1_1_x;get -1_1_last x)}each" "vs'read0`10.txt
f:{[(g;b;)]
    n:count b; bs:(n#2)vs/:til prd n#2;
    min sum@'bs where g~/:1=mod[@[g*0;;+;1]'[b where'[bs]];2]
 }
sum f each i    //part1
18387           //part2
//My heuristic approach handled the small example correctly but produced 18300-ish incorrect results for the real input.
//I eventually resorted to using linprog from SciPy, which is a massive overkill.
//I’ll try to publish a proper Q solution later.