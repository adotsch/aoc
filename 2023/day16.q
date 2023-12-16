n:count i:read0`16.txt
t:update X:i mod n, Y:i div n from ([]m:raze i;u:0;d:0;l:0;r:0)
f:{[t]
    j:max exec u|d|l|r from t;
    t:update r:j+1 from t where j=prev r,0=r,0<X,t[i-1;`m]in".-";
    t:update r:j+1 from t where j=prev u,0=r,0<X,t[i-1;`m]in"-/";
    t:update r:j+1 from t where j=prev d,0=r,0<X,t[i-1;`m]in"-\\";
    t:update l:j+1 from t where j=next l,0=l,n>X+1,t[i+1;`m]in".-";
    t:update l:j+1 from t where j=next d,0=l,n>X+1,t[i+1;`m]in"-/";
    t:update l:j+1 from t where j=next u,0=l,n>X+1,t[i+1;`m]in"-\\";
    t:update d:j+1 from t where j=neg[n]rotate d,0=d,0<Y,t[i-n;`m]in".|"; 
    t:update d:j+1 from t where j=neg[n]rotate l,0=d,0<Y,t[i-n;`m]in"|/"; 
    t:update d:j+1 from t where j=neg[n]rotate r,0=d,0<Y,t[i-n;`m]in"|\\";
    t:update u:j+1 from t where j=n rotate u,0=u,n>Y+1,t[i+n;`m]in".|";
    t:update u:j+1 from t where j=n rotate r,0=u,n>Y+1,t[i+n;`m]in"|/";
    t:update u:j+1 from t where j=n rotate l,0=u,n>Y+1,t[i+n;`m]in"|\\";
    t
 }
s:{[t] sum 0<exec l|r|u|d from t}
s f/[update r:1 from t where X=0,Y=0]
{max {s f/[x]} peach {[j] update d:1 from t where X=j  ,Y=0  }'[til n],
                     {[j] update u:1 from t where X=j  ,Y=n-1}'[til n],
                     {[j] update l:1 from t where X=n-1,Y=j  }'[til n],
                     {[j] update r:1 from t where X=0  ,Y=j  }'[til n]
 }`
