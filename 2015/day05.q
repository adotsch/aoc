i:read0`:05.txt
n:i where 2<sum each i in\: "aeiou"
n:n where {0<count raze x ss/:2#'.Q.a} each n
n:n where {0=count raze x ss/:("ab";"cd";"pq";"xy")} each n
count n
n:i where {any 1<(-).(max';min')@\:group -1_x,'next x} each i
n:n where {any {x~'reverse'[x]}prev[x],'x,'next x} each n
count n
