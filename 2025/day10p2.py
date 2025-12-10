
import numpy as np
from scipy.optimize import linprog

input = [x.split(' ') for x in open('10.txt').read().splitlines()]
button = [[eval('['+x[1:-1]+']') for x in s[1:-1]] for s in input]
jolt = [eval('['+s[-1][1:-1]+']') for s in input]

def solve2(bu,jo):
    cost = np.ones(len(bu))
    constraint = np.zeros((len(jo),len(bu)))
    target = np.array(jo)
    for i, b in enumerate(bu):
        for j in range(len(jo)):
            constraint[j][i] = 1 if j in b else 0
    return linprog(cost,A_eq=constraint,b_eq=target,integrality=True).fun

print(sum(solve2(x,y) for (x,y) in zip(button,jolt)))