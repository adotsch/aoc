i:(0,where i in ("your ticket:";"nearby tickets:";"")) _ i:read0`:16.txt
r:"I"$"-"vs/:raze" or "vs/:last@/:": "vs/:i[0]
/ part 1
f:raze get@/:1_i[4]
sum f where not t:any f within/: r
/ part 2
w:count y:get i[2;1]
r:"I"$"-"vs/:/:" or "vs/:(!). flip": "vs/:i[0]
f:(w cut f) where all@/:w cut t
o:flip[f]{all any x within/:y}\:/:r
o:(except':)(where')(iasc sum each o)#o
prd y value[o] where key[o] like "departure*"