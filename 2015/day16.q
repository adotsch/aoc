i:{(1+x ? ":")_x}each read0`:16.txt
k:" children: 3, cats: 7, samoyeds: 2, pomeranians: 3, akitas: 0, vizslas: 0, goldfish: 5, trees: 3, cars: 2, perfumes: 1"
//part 1
{1+first where x=max x} count@' ("," vs k) inter/: "," vs/:i
//part 2
m:{(!) . flip {"SJ"$trim@'":"vs x} each ","vs x}
t:([]a:1+til 500;p:m each i;I:i)
update s:{sum 7 3 < 0^x`cats`trees}@'p from `t;
update s+{any 3 5 > 9^x`pomeranians`goldfish}@'p from `t;
delete from `t where s=0;
update s:count@'("," vs k)inter/:","vs/:I from `t;
first exec a from t where s = max s
