i:{get raze (" "vs x)[2 4 6 8 10]} each read0`:15.txt
pn:{(x-i),'i:til x+1}
c:raze {pn[x] cross pn 100-x} each til 101
max {prd 0|4#sum x * i} each c                    //part 1
//max prd 0|-1_flip("f"$c)$"f"$i
max prd@'0|.[;(::;4);"j"$500=]{sum x * i} each c  //part 2