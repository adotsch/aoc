n:count i:read0`23.txt
D:"><v^"; d:(1 0;-1 0;0 1;0 -1); fd: flip d
F:{[I;cnt;x;y]
    t:I[y;x]; I[y;x]:"O";
    if[y=n-1; :enlist(I;cnt;x;y;1b)];
    d1:$["."=t;d where I'[y+fd 1;x+fd 0]in".><v^";
         .[I][(y;x)+reverse d D?t]in".><v^";enlist d D?t;()];
    $[0=count d1; enlist(I;0;x;y;1b); (I;cnt+1;;;0b) .' (x;y)+/:d1]
 }
T:enlist `I`cnt`x`y`fin!(i;0;1;0;0b)
G:{[M;T]
    M:max M,exec cnt from T where fin; T:delete from T where fin;
    (M;$[count T;(-1_T) upsert F . last[T]`I`cnt`x`y;T])
 }
first .[G]/[(0;T)]      //part 1
end:last where "."=j:raze"#.....""#.<>^v"?i
G:`a`b!/:raze flip each  {[i](i;ne where "."=j ne:i+(-1;1;0-n;n))} each where "."=j
comp:{[G;j]
    e:select from G where a=j;
    $[0=count e; G;
        (delete from G where (a=j)|b=j) upsert (E 1 0 2;E:e[0 1;`b],sum e[0 1;`d])
    ]
 }
N:comp/[update d:1 from G; exec b from G where 2=(count;a)fby b]
TR:{[D;ns]
    $[end = last ns; D;
      0=count st:select from N where a=last[ns], not b in ns; 0;
        max exec TR'[D+d;ns,/:b] from st]
 }
TR[0;1#1]               //part 2