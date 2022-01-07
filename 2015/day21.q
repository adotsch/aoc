i:`w`h`d`a!`boss,"J"$last@'": "vs/:read0`:21.txt
w:([]c:8 10 25 40 74;d:4 5 6 7 8;a:0)
a:([]c:13 31 53 75 102;d:0;a:1 2 3 4 5) upsert 0 0 0
r:([]c:25 50 100 20 40 80;d:1 2 3 0 0 0;a:0 0 0 1 2 3) upsert (0 0 0;0 0 0)
r2:sum@'r {x where (<>).'x} {x cross x} til count r
c:(`w`h!`me,100),/:raze w +\:/: raze a+\:/:r2
game:{y[`h]-:1|x[`d]-y[`a];(y;x)}
end:{1>x[0;`h]}
rs:{last (not end@)(game .)/enlist[x] upsert i} each c  //part 1
exec min c from rs where w=`me
rs:{first(not end@)(game .)/enlist[x] upsert i} each c  //part 2
exec max c from rs where w=`me