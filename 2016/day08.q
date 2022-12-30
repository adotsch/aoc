i:read0`08.txt
s:6 50#"."
f:{[s;i]
    if[i like "rect*";s:.[s;til@'reverse"J"$"x"vs last[" "vs i];:;"#"]];
    if[i like "rotate*";p:"J"$" by "vs last["="vs i];
        $["c"=i 7;
            s[;p 0]:neg[p 1] rotate s[;p 0];
            s[p 0;]:neg[p 1] rotate s[p 0;]]];
    s
 }
0+/0+/"#"=s f/i                 //part 1
-1 raze@'("  ";"##")"#"=s f/i;  //part 2