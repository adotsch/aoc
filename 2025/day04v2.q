i:"@"=read0`04.txt              //01 input
n:{2{flip 1_3 msum x,0b*1#x}/x} //adjacents+middle: sum 3 rows and transpose 2 times
2 sum/ i*5>n i                  //part 1: rolls with less than 4 adjacent
2 sum/ i-{x-x*5>n x}/[i]        //part 2: remove these interatively and count them