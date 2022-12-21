i:read0`21.txt
//part 1
(v:`$4#'i) set' 0;
I:ssr[;"/";"%"] @' i
f:{value@'I;`. v}
f/[];
"j"$root
//part 2
va:`$(" "vs I v?`root)1
vb:`$(" "vs I v?`root)3
I:I where not I like "humn*"
F:{v set' 0;humn::x;f/[];get[va]-get[vb]}
"j"${x - .1 * Fx % F[x+.1] - Fx:F x}/[0]   //Newton–Raphson method