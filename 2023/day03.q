i:read0`03.txt
//part 1
n:i in "0123456789"                                 //number bitmap
s1:i in "#$%&*+-/=@"                                //sym bitmap
s2:2(flip any -1 0 1 rotate\:)/s1                   // + neigbours
m:{n & any each -1 0 1 rotate\:/: x}/[n&s2]         //bitmap of numbers in sym neigbours
sum get raze "c"$(0+m;1-m)wsum"i"$(i;" ")           //sum of them
//part 2
g: i = "*"                                          //bitmap of "*"s
G:(sum/)g                                           //count of them
gn:(count g 0) cut {x * sums x} raze g              //"*"s numbered on the map
sum {                                               //sum of gear ratios computed below
    g1:gn = x;                                      //bitmap of a single "*"
    g2:2(flip any -1 0 1 rotate\:)/ g1;             // + neigbours
    m:{n & any each -1 0 1 rotate\:/: x}/[n&g2];    //bitmap of numbers in "*" neigbours
    ns:get raze "c"$(0+m;1-m)wsum"i"$(i;" ");       //the list of them
    $[2=count ns; prd ns; 0]                        //a gear ratio if exactly two
 } peach 1+til G                                    //for each "*"
