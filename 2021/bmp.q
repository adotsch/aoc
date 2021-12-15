//https://en.wikipedia.org/wiki/BMP_file_format#Example_1
 
\d .bmp

b4:{4#reverse 0x0 vs x}
irgb24:{[r;g;b]"i"$r+256*g+256*b}

//Creates a RGB24 BMP from a 2D int (or long) array of colors (see irgb24).
from2DIRGB24:{[img]
	h:count img;w:count img 0;ws:4 xbar 3+w*3;
	header:0x424d,b4[54+ws*h],0x000000003600000028000000,b4[w],b4[h],0x0100180000000000,b4[ws*h],0x130b0000130b00000000000000000000;
	header,raze ws#/:{raze -3#/: 0x0 vs/:x} peach img
 }

//Creates a w x h RGB24 BMP from an 3x(w*h) sized (r;g;b) array.
genFromRGB:{[w;h;rgb]
	ws:4 xbar 3+w*3;
	header:0x424d,b4[54+ws*h],0x000000003600000028000000,b4[w],b4[h],0x0100180000000000,b4[ws*h],0x130b0000130b00000000000000000000;
	header,raze ws#/:(raze')w cut flip"x"$floor reverse rgb
 }

//`:test.bmp 1: .bmp.from2DIRGB24 16 16#.bmp.irgb24[til 256;0;0]
//`:test.bmp 1: .bmp.genFromRGB[16;16] (til 256;0;0)
