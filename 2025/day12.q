i:(0,1+where""~/:i)_i:read0`12.txt
s:"#"=-1_'1_'-1_i                       //present shapes
r:{("J"$"x"vs;get)@'":"vs x}'[last i]   //regions
//the present/region ratios are either above (=impossible) or way below 1.0, got lucky?
sum 1 > wsum[sum/'[s]]'[last'[r]] % prd'[first'[r]]
//Note: All of my shapes can tessellate the plane without gaps and many shapes fit together very well without gaps.
//I may implement a greedy shape-arrangement algorithm with visualizations later this December.