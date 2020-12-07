/ part 1
r:ssr/[;(" bags contain ";" bags";" bag";".";", ";"[0-9] ");(",";"";"";"";",";"")]'[read0`:7.txt]
r:{([k:raze x]v:y)} . flip 0 1 cut/:`$","vs/:r
sg:`$"shiny gold"
count except[;sg] distinct raze {exec k from r where 0<count'[x inter/: v]}\[(),sg]

/ part 2
r:ssr/[;(" bags contain ";" bags";" bag";".";", ");(",";"";"";"";",")]'[read0`:7.txt]
r:{([k:`$raze x]v:y)} . flip 0 1 cut/:","vs/:r
r:select k,c:"I"$1#'v,`$2_'v from ungroup r
f:{[ws] select w:sum c*1+w by v:k from (r::r lj ws) where (not any null@;w)fby k}
ws : f/[1!([]v:`other;w:1#-1)]
first value ws sg