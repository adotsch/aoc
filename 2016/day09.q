i:raze read0`09.txt
f1:{
    i:y?"(";j:y?")";
    if[i=j;:(x+count y;"")];
    p:"J"$"x"vs(i+1)_j#y;
    y:(j+1)_y;
    (x+i+prd p;p[0]_y)
 }
first (f1 .)/[(0;i)]    //part 1
f2:{
    i:y?"(";j:y?")";
    if[i=j;:(x+count y;"")];
    p:"J"$"x"vs(i+1)_j#y;
    y:(j+1)_y;
    //(x+i;(prd[p]#p[0]#y),p[0]_y)
    (x+i;(prd[p - 0 1]#p[0]#y),y)
 }
first (f2 .)/[(0;i)]    //part 2