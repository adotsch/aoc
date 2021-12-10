i:read0`:10.txt
o:"([{<";c:")]}>";p:c!3 57 1197 25137;d:o!1 2 3 4 
f:{$[0>type x;x;y in o;x,y;last[x]=o c?y;-1_x;y]}
sum p b:{$[0>type r:f/["";x];r;" "]} each i         //1
"j"$med{5 sv d reverse f/["";x]} each i where " "=b //2