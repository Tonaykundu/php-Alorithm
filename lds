
tree = {
    'A': ['B', 'C', 'D'],
    'B': ['E'],
    'C': ['F'],
    'D': ['G'],
    'E': ['H', 'I'],
    'F': ['J'],
    'G': ['K'],
    'H': ['L'],
    'I': ['M'],
    'J': [],
    'K': [],
    'L': [],
    'M': []
}
max_depth = 0
flag = 0
goal = "F"

while True:
    stack = [("A", 0)]
    visited = []

    while stack:
        res, depth = stack.pop()
        print(res)

        if res == goal:
            print("goal found")
            flag = 1
            break

        for i in tree[res]:
            if i not in visited:
                if depth < max_depth:
                    stack.append((i, depth + 1))
                    visited.append(i)

    max_depth += 1

    if flag == 1:
        break
