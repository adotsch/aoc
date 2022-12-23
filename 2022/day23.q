i:read0`23.txt
I:`y`x!/:raze til[count i],/:'where@'"#"=i
m:{[t;dx;dy] select y+dy,x+dx from t}
f:{[t;i]
    //can move n,s,w,e
    mn: t except m[t; 1; 1],m[t; 0; 1],m[t;-1; 1];
    ms: t except m[t; 1;-1],m[t; 0;-1],m[t;-1;-1];
    mw: t except m[t; 1; 1],m[t; 1; 0],m[t; 1;-1];
    me: t except m[t;-1; 1],m[t;-1; 0],m[t;-1;-1];
    done: mn inter ms inter mw inter me;
    //choosing direction in the right order
    mvs:i rotate (mn;ms;mw;me) except\: done;
    mvs[1]: mvs[1] except mvs[0];
    mvs[2]: mvs[2] except mvs[0],mvs[1];
    mvs[3]: mvs[3] except mvs[0],mvs[1],mvs[2];
    mvs:neg[i] rotate mvs;
    mn: mvs 0; mnm: m[mn; 0;-1];
    ms: mvs 1; msm: m[ms; 0; 1];
    mw: mvs 2; mwm: m[mw;-1; 0];
    me: mvs 3; mem: m[me; 1; 0];
    //can move unless others want to go there
    mn: mn except m[    msm,mwm,mem; 0; 1];
    ms: ms except m[mnm    ,mwm,mem; 0;-1];
    mw: mw except m[mnm,msm    ,mem; 1; 0];
    me: me except m[mnm,msm,mwm    ;-1; 0];
    //move
    :raze(
                         m[mn; 0;-1];
        m[mw;-1; 0]; t except mn,ms,mw,me; m[me; 1; 0];
                         m[ms; 0; 1]
    )   
 }

{prd[1+max[x]-min x]-count x} I f/ til 10
i:0;{i+::1;f[x;i-1]}/[I];i

/

sh:{[t]
    t: t-\:min t;
    m:(1+max[t]`y;1+max[t]`x)#".";
    m .[;;:;"#"]/ value each t
 }