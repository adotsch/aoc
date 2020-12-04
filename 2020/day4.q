
t:flip`byr`iyr`eyr`hgt`hcl`ecl`pid`cid!()
{`t upsert enlist(!). x}each"S: "0:/:trim@/:" "sv/:cut[0,where ""~/:p]p:read0`:4.txt;
t:``cid _ t;   / ignore cid

/ part 1
sum 7=sum each 0<@[t;cols t;count each]

/ part 2
@[`t;`byr`iyr`eyr;"I"$];
t:select from t where byr within 1920 2002, iyr within 2010 2020, eyr within 2020 2030;
update hgt:"I"$-2_/:hgt,hgtu:`$-2#/:hgt from `t;
delete from `t where not hgtu in `cm`in;
delete from `t where hgtu=`cm, not hgt within 150 193;
delete from `t where hgtu=`in, not hgt within 59 76;
delete from `t where not hcl like "#[0-9a-f][0-9a-f][0-9a-f][0-9a-f][0-9a-f][0-9a-f]";
delete from `t where not ecl in ("amb";"blu";"brn";"gry";"grn";"hzl";"oth");
delete from `t where not pid like "[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]";

count t
