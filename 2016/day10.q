i:read0`10.txt
v:r:()!();
{
    x:" "vs x;
    $["value"~x 0;
        v[`$raze x 4 5],:"J"$x 1;
        r[`$raze x 0 1]:`$(raze x 5 6;raze x 10 11)
    ];
 } each i;
f:{
    b:first where 2=count@'v;
    c:asc v b;
    if[17 61~c;-1@3_string b];
    v[b]:();v[r[b]0],:c 0;v[r[b]1],:c 1;
    v
 }
f/[];                               //part 1
prd raze v`output0`output1`output2  //part 2