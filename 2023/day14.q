i:read0`14.txt
sum{sum 1+where"O"=reverse"#"sv(desc')"#"vs x}'[flip i] //part 1
c:{(reverse'){"#"sv(desc')"#"vs x}'[flip x]}/[4;]
(sum/)sums"O"=((4*35)+1000000000 mod 35)c/i             //part 2