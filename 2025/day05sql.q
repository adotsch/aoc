(r:"J"$"-"vs';i:"J"$1_):(0,where""~/:i)_i:read0`05.txt
//part 1
I:([]ing:i); R:`a`b!/:r
count select distinct ing from I cross R where ing within (a;b)
//part 2
P:`p2`p1!/:1_(,)prior asc distinct raze r
count[P]+1+exec sum p2-p1+1 from select distinct p1,p2 from P cross R where (p1+1) within (a;b)
