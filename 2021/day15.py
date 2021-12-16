with open("15.txt","r") as file:
    i = [[int(x) for x in l.strip()] for l in file.readlines()]
        
d=[(-1,0),(1,0),(0,-1),(0,1)]

def dijkstra(i):
    N = len(i)
    I = [[0]*N]*N
    n = [[[(x+dx,y+dy) for dx,dy in d if (0<=x+dx<N) and (0<=y+dy<N)]
            for x in range(N)] 
                for y in range(N)]
    while True:
        J = [[i[y][x]+min(I[ny][nx] for nx,ny in n[y][x]) 
                for x in range(N)] 
                    for y in range(N)]
        J[0][0] = 0
        if I==J:
            break
        else:
            I=J
    return I[N-1][N-1]

print(dijkstra(i))
i2 = [[1+(i[y%100][x%100]+int(x/100)+int(y/100)-1)%9 for x in range(500)] for y in range(500)]
print(dijkstra(i2))