i:"1"=first read0`16.txt
f:{x,0b,not reverse x}
r:{$[count[x]mod 2;x;.[=]flip 0N 2#x]}
-1 raze string (r/)272#{272>count x}f/i;            //part1
-1 raze string (r/)35651584#{35651584>count x}f/i;  //part2