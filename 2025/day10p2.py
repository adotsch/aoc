
import numpy as np
from scipy.optimize import linprog

input = [x.split(' ') for x in open('10.txt').read().splitlines()]
button = [[eval('['+x[1:-1]+']') for x in s[1:-1]] for s in input]
jolt = [eval('['+s[-1][1:-1]+']') for s in input]

def solve2(bu,jo):
    constraint = np.zeros((len(jo),len(bu)))
    for i, b in enumerate(bu):
        constraint[b,i] = 1
    return linprog([1]*len(bu),A_eq=constraint,b_eq=jo,integrality=True).fun

print(sum(solve2(x,y) for (x,y) in zip(button,jolt)))