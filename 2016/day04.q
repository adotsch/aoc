i:{x:" "vs -1_@[x;where x in"-[]";:;" "];(raze -2_x;get first -2#x;last x)}each read0`04.txt
sum {$[z~key 5#desc count@'group asc x;y;0]}.'i                             //part 1
first 1_ i first where like[;"*north*"]{z;.Q.a mod[;count .Q.a]y+.Q.a?x}.'i //part 2