i:read0`14.txt
sum{sum sums"O"="#"sv(desc')"#"vs x}'[flip i]       //part 1
c:{(reverse'){"#"sv(desc')"#"vs x}'[flip x]}/[4;]
//n:(4*35)+1000000000 mod 35                        //based on manual observations during the competition
n:{c+(1000000000-c:count x)mod 1+(1_x)?x 0}{$[any x[0]~/:1_x;x;enlist[c x 0],x]}/[enlist i]
(sum/)sums"O"=n c/i                                 //part 2