i:asc"J"$read0`:24.txt
c:{[n;l]$[n=0;enlist();raze{x[z],/:c[y;(z+1)_x]}[l;n-1]@'til 1+count[l]-n]}
prd v first where div[sum i;3] = sum@' v:i c[6;til count i]
prd v first where div[sum i;4] = sum@' v:i c[4;til count i]
