i:get each read0`:10.txt
/ part 1
prd 0 1 + (count each group deltas asc i)1 3
/ part 2
j:asc 0,i,3+max i;m:"f"$j within\:j+/:1 3;m[l;l:count[m]-1]:1f
"j"$first last {x$x}/[m]


/ part 2 explained
/
/ The key to understand my solution is to understand the adjacency matix of graphs and the 
/ matrix powers of such matrices. 
/
/ Read: https://en.wikipedia.org/wiki/Adjacency_matrix#Matrix_powers
/
/ m is an adjacency matix connecting joltage x with jotage x+1,x+2,x+3, and also connecting 
/ the built in adapter joltage with itself.
/ m^n represent the the number of paths of length n from joltage j[a] to j[b], but for the 
/ built in adapter it will represent the number of n-1, n-2, ... length paths too, because of
/ the self connecting edge. The m, m^2, m^3, ... series converges, for my input m^105 is the 
/ limit matrix. By iterating {x$x} I just make the convergence exponential (x^2, x^4, ...)