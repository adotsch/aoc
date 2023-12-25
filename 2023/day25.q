
G:`a`b!/:raze(flip')flip(first';1_')@\:`$" "vs'ssr[;":";""]'[read0`25.txt]
`:25.gv 0: enlist raze"graph G {",(exec{string[x]," -- ",string[y],";"}'[a;b]from G),"}";
system"dot -Tpng -Kneato -o25.png 25.gv";   // <-- look at 25.png and find the 3 edges :)
delete from `G where a in `xsl`bmx`qpg, b in `tpb`zlv`lrd;  
delete from `G where b in `xsl`bmx`qpg, a in `tpb`zlv`lrd;
N:(G.b,G.a) group G.a,G.b
count[g1]*count[N]-count g1:{distinct x,raze N x}/[first G.a]