n:count j:read0`21.txt
t:([]x:1#65;y:65)
F:{[cnt0;cnt1;T0;T1]
    T2:select ((x+1),(x-1),x,x),(y,y,(y+1),y-1) from T1;
    T2:delete from T2 where j'[y mod n;x mod n]="#";
    (cnt1;cnt0+count T0;T1;distinct[T2] except T0)
 }
{x[1]+count x 3} 64 .[F]/ (0;0;0#t;t)           //part 1
r:deltas deltas {{x[1]+count x 3} x .[F]/ (0;0;0#t;t)} 
    each 65 + n * til 5
sum sums r,(div[26501365;n]-4)#last r           //part 2