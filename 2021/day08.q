i:" " vs/: read0`:08.txt
sum count'[raze -4#'i] in 2 3 4 7 
sum {
    d:0#'x;
    d[1 7 4 8]:x raze where@'2 3 4 7=\:count'[x];
    p:(count'')d[4 7 8]except\:/:x;
    d[0 2 3 5 6 9]:x raze where@'(1 0 1;2 1 2;1 0 2;1 1 2;1 1 1;0 0 1)~/:\:p;
    d:asc'[d]!til 10;
    10 sv d asc'[y]
 } .' 10 -4#\:/: i
