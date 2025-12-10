

/*
g_o:{[b;j]
    if[0=max j;:(1b;())];
    if[0=count b;:(0b;())];
    w: min j b 0;
    while[0<=w;
        r:.z.s[1_b;@[j;b 0;-;w]];
        if[first r;:(1b;w,last r)];
        w-:1;
    ];
    (0b;())
 }

*/
#define KXVER 3
#include "k.h"

Z I find(K b, I i, J*j, I n_j, J*res)
{
    J sumj=0; for(int k=0;k<n_j;k++) sumj+=j[k];
    if(0==sumj) return 1;
    if(b->n==i) return 0;
    K bi = kK(b)[i];
    I w = 1000000;
    for(int k=0;k<bi->n;k++) if(w>j[kJ(bi)[k]]) w = j[kJ(bi)[k]];
    J j0[32] = {0};
    while(0<=w)
    {
        for(I k=0;k<n_j;k++)   j0[k]=j[k];
        for(I k=0;k<bi->n;k++) j0[kJ(bi)[k]]-=w;
        I r = find(b,i+1,j0,n_j,res);
        if(r)
        {
            res[i] = w;
            return 1;
        }
        w--;
    }
    return 0;
}

K qfind(K b, K j)
{
    if(b->t!=0 || kK(b)[0]->t!=KJ || j->t!=KJ) R krr("type");
    K res = ktn(KJ,b->n); for(I i=0;i<b->n;i++) kJ(res)[i]=0;
    find(b,0,kJ(j),j->n,kJ(res));
    return res;
}
