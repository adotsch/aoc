I1:flip`d`s`c!("CJ*";" ")0:`18.txt
I2:update d:{"RDLU""0123"?x 7}'[c], s:{256 sv get"0x",5#2_x}'[c] from I1
D:"LRUD"!(-1 0;1 0;0 -1;0 1)
f:{exec 1+div[abs[sum(p0[;0]*p1[;1])-p1[;0]*p0[;1]]+sum s;2] from
    update p0:(enlist[0 0],-1_p1) from update p1:sums D[d]*s from x}
f each (I1;I2)
