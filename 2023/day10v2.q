i:raze .[142 142#".";(1+til 140;1+til 140);:;read0`10.txt]
N:-142;S:142;E:1;W:-1;
n:"|-LJ7F.S"!(N,S;E,W;N,E;N,W;W,S;E,S;0#0;N,E,W,S)
ni:{xn where x in' xn + n i xn: x + n i x} each til nn:142*142
.5*count r:{distinct x,raze ni x}/[where"S"=i]        //part 1
j:142 cut @[nn#".";r;:;i r]; C:(N,S) in\:/: n
sum {sum (1 1~/:sums[C x] mod 2) where "."=x} each j  //part 2

/
second version, much-much faster
part 1 even faster with:
.5*count r:distinct raze(count last@){x,enlist(raze ni last x)except raze -2#x}/where"S"=o
