i:read0`01.txt
sum {get (first x;last x)} each i inter\: .Q.n                     //part 1
d:string`one`two`three`four`five`six`seven`eight`nine
sum {get (first;last)@\:@[x;x ss/: d;:;1_.Q.n] inter .Q.n} each i  //part 2
