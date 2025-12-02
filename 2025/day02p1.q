//fast solution for part 1
i:"J"$"-"vs'","vs first read0`02.txt
d:0 1 10 100 1000 10000 100000 1000000 10000000
f:{[x;y]
    w:count each string (x;y);                          //digits
    if[min w mod 2;:()];                                //we need some even digits
    if[mod[w 0;2];x:10*d w 0];                          //adjust start if not even
    if[mod[w 1;2];y:-1+d 1+w 0];                        //adjust end if not even
    w@:first where 0=w mod 2;                           //even digits
    p*1+div[x-1;p]+til .[-](y;x-1) div p:1+d 1+w div 2  //generate all
 }
sum raze f .' i