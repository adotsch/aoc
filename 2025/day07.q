i:read0`07.txt
f:{[j]
    p:where i[j]in"S|"; b:where"^"=i j+1; split:b inter p;
    i[j+1;(split-1;split+1;p except b)]:"|";
    count split
 }
sum f each til -1+count i   //part 1
g:{b:where"^"=y;x[b-1]+:x b;x[b+1]+:x b;x[b]:0;x}
sum (0+"S"=i 0) g/ 1_i      //part 2
-1 i;                       //and of course, the tree :)