i:" "vs/:{?[x in"[]";" ";x]} each read0`:14.txt
/ part 1
ram:()!()
{
	$["mask"~x 0;mask::x 2;
	[
		a:"I"$x 1; v:"01"(36#2)vs"I"$x 4;
		ram[a]:2 sv "1"=?[mask<>"X";mask;v]
	]];
 } each i;
sum ram
/ part 2
ram:()!()
{
	$["mask"~x 0;mask::x 2;
	[
		a:@[(36#2)vs"I"$x 1;where mask="1";:;1]; v:"J"$x 4;
		m:(n#2)vs/:til"i"$2 xexp n:sum"X"=mask;
		ram[2 sv/:@[a;where mask="X";:;]'[m]]:v;
	]];
 } each i;
sum ram

	
	