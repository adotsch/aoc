r:read0`:2.txt
t:flip`a`b`c`s!("iic *";",")0:{ssr/[x;"- :";","]}each r
sum exec sum'[c=s]within(a;b)from t
sum exec 1=sum'[(c=s@'flip(a;b)-1)] from t