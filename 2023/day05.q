i:read0`05.txt
//part 1
s1:get 6_i 0                                                        //seeds
m:(get'')2_'where[""~/:i] cut i                                     //mapping rules
f:{x{last(0b;x){$[x 0;x;x[1] within (y 1;y[1]+y[2]-1);(1b;x[1]+y[0]-y[1]);x]}/y}/m}
min f each s1
//part 2
s2:{(x;x+y-1)}.' 2 cut s1                                           //seed ranges
split:{raze y{$[x within y+1 0;((y 0;x-1);(x;y 1));enlist y]}'x}    //split up ranges
map:{[dr;m]                                                         //(done;rest);mapping
    d:dr 0; r:dr[1] split/(m 1;m[1]+m[2]);                          //done, the rest split up
    t:first'[r] within (m 1;m[1]+m[2]-1);                           //ranges to map
    d,:r[where t]+m[0]-m[1];                                        //map and append to done
    r@:where not t;                                                 //what remains
    (d;r)
 }
min(first')s2{raze(();x)map/y}/m
