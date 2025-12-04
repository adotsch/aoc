i:2{flip 0b,/:x,\:0b}/"@"=read0`04.txt      //01 input with an extra 0 border
n:{neg[x]+2(flip sum -1 0 1 rotate\:)/x}    //adjacents: sum 3 rows and transpose 2 times, remove the middle
2 sum/ i*4>n i                              //part 1: rolls with less than 4 adjacent
2 sum/ i-{x-x*4>n x}/[i]                    //part 2: remove these interatively and count them