i:read0`07.txt
f:{[s;l]
    if[(l~"$ ls")|l like "dir *";:s];
    if[l like "$ cd *";
      d:5_l;
      if[d~"..";:@[s;`path;first` vs]];
      if[d~1#"/";:@[s;`path;:;`:]];
      :@[s;`path;.Q.dd[;`$d]]
    ];
    :.[s;(`m;-1_(first` vs)\[s`path]);+;"J"$first" "vs l]
 }
s:`path`m!(`:;()!())
r:s f/i
sum r.m where r.m<=100000
min r.m where r.m>=r.m[`:]-40000000
