I:read0`21.txt; N:26501365; S:([]x:1#65;y:65)
F:{[cnt0;cnt1;T0;T1]
    T2:select ((x+1),(x-1),x,x),(y,y,(y+1),y-1) from T1;
    T2:delete from T2 where I'[y mod 131;x mod 131]="#";
    (cnt1;cnt0+count T0;T1;distinct[T2] except T0)
 }
{x[1]+count x 3} 64 .[F]/ (0;0;0#S;S)           //part 1
r:deltas deltas {{x[1]+count x 3} x .[F]/ (0;0;0#S;S)} 
    each mod[N;131] + 131 * til 3
sum sums r,(div[N;131]-2)#last r                //part 2