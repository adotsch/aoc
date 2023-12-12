cached_fn:{[n;f]
    if[-11h<>type n;`"type"];if[100h<>type f;'"type"];
    p:({};{enlist x};(;);(;;);(;;;);(;;;;);(;;;;;);(;;;;;;);(;;;;;;;))count get[f]1;
    ff:{[kv;f;p]
        if[not(::)~v:kv -8!p;:v];
        @[kv;-8!p;:;v:f . p];
        v
    };
    kv:.Q.dd[`.cache;n] set (`g#enlist 0#0x0)!enlist {value};
    n set (')[ff[kv;f];p]
 }

clear_fn_cache:{[n]
    .Q.dd[`.cache;n] set (`g#enlist 0#0x0)!enlist {value};
 }