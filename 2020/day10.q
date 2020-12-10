i:get each read0`:10.txt
/ part 1
prd 0 1 + (count each group deltas asc i)1 3
/ part 2
j:0,asc[i],3+max i;m:"f"$j{y within x+1 3}\:/:j;m[l;l:count[m]-1]:1f
"j"$first last {x$x}/[m]
