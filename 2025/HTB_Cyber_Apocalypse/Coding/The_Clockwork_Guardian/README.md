# Challenge
The Clockwork Guardian
The Clockwork Sentinels defending Eldoria's Skywatch Spire have gone rogue! You must navigate through the spire, avoiding hostile sentinels and finding the safest path to the exit.

Write an algorithm to find the shortest safe path from the start position (0,0) to the exit ('E'), avoiding the sentinels (1).

Example
Example Grid and Output

[
    [0, 0, 1, 0, 0, 1],
    [0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0],
    [0, 0, 1, 1, 0, 'E']
]
Output: 8


# Solution
```python
from collections import deque

def shortest_safe_path(grid):
    rows, cols = len(grid), len(grid[0])
    
    # Find the exit position
    exit_pos = None
    for i in range(rows):
        for j in range(cols):
            if grid[i][j] == 'E':
                exit_pos = (i, j)
                break
    
    if not exit_pos:
        return -1
    
    # Directions for moving: up, down, left, right
    directions = [(-1, 0), (1, 0), (0, -1), (0, 1)]
    
    # BFS setup
    queue = deque([(0, 0, 0)])  # (row, col, steps)
    visited = set([(0, 0)])
    
    while queue:
        row, col, steps = queue.popleft()
        
        # If we reached the exit, return steps
        if (row, col) == exit_pos:
            return steps
        
        for dr, dc in directions:
            new_row, new_col = row + dr, col + dc
            
            # Check boundaries and validity
            if (0 <= new_row < rows and
                0 <= new_col < cols and
                (new_row, new_col) not in visited and
                grid[new_row][new_col] != 1):
                
                visited.add((new_row, new_col))
                queue.append((new_row, new_col, steps + 1))
    
    return -1  # No valid path

def parse_grid(input_str):
    input_str = input_str.strip()
    
    # Replace single quotes with double quotes to make it valid JSON format
    input_str = input_str.replace("'", '"')
    
    # Use eval to convert string into list of lists
    grid = eval(input_str)
    
    return grid

grid = parse_grid(input())

result = shortest_safe_path(grid)
print(result)
```

# Flag: HTB{CL0CKW0RK_GU4RD14N_OF_SKYW4TCH_e60cd1462da5369d260d68d7bee9ae07}