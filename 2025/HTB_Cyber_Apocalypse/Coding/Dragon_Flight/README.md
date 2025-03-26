# Challenge
As a Dragon Flight Master, your mission is to:

Handle both sudden wind changes and challenging flight path queries.
Process update operations that modify the wind effect on any flight segment.
Compute the maximum favorable continuous flight stretch (i.e., the maximum contiguous subarray sum) within a specified range.


# Solution
```python
class SegmentTree:
    def __init__(self, arr):
        self.n = len(arr)
        self.tree = [None] * (4 * self.n)
        self.build(arr, 0, 0, self.n - 1)
    
    def build(self, arr, node, start, end):
        if start == end:
            value = arr[start]
            self.tree[node] = (value, value, value, value) # (sum, prefix, suffix, max_subarray)
            return
        
        mid = (start + end) // 2
        left = 2 * node + 1
        right = 2 * node + 2
        
        self.build(arr, left, start, mid)
        self.build(arr, right, mid + 1, end)
        
        self.tree[node] = self.merge(self.tree[left], self.tree[right])

    def merge(self, left, right):
        total_sum = left[0] + right[0]
        prefix = max(left[1], left[0] + right[1])
        suffix = max(right[2], right[0] + left[2])
        max_subarray = max(left[3], right[3], left[2] + right[1])
        return (total_sum, prefix, suffix, max_subarray)
    
    def update(self, index, value, node, start, end):
        if start == end:
            self.tree[node] = (value, value, value, value)
            return
        
        mid = (start + end) // 2
        left = 2 * node + 1
        right = 2 * node + 2
        
        if index <= mid:
            self.update(index, value, left, start, mid)
        else:
            self.update(index, value, right, mid + 1, end)
        
        self.tree[node] = self.merge(self.tree[left], self.tree[right])
    
    def query(self, l, r, node, start, end):
        if r < start or l > end:
            return (0, float('-inf'), float('-inf'), float('-inf'))
        
        if l <= start and r >= end:
            return self.tree[node]
        
        mid = (start + end) // 2
        left = self.query(l, r, 2 * node + 1, start, mid)
        right = self.query(l, r, 2 * node + 2, mid + 1, end)
        
        return self.merge(left, right)
    
    def update_value(self, index, value):
        self.update(index, value, 0, 0, self.n - 1)
    
    def get_max_subarray_sum(self, l, r):
        return self.query(l, r, 0, 0, self.n - 1)[3]

# === Main Code ===
def solve():
    # Read input
    n, q = map(int, input().split())
    arr = list(map(int, input().split()))


    # Build segment tree
    seg_tree = SegmentTree(arr)
    
    # Process queries and updates
    results = []
    for _ in range(q):
        op = input().split()
        if op[0] == 'U':
            index = int(op[1]) - 1
            value = int(op[2])
            seg_tree.update_value(index, value)
        elif op[0] == 'Q':
            left = int(op[1]) - 1
            right = int(op[2]) - 1
            result = seg_tree.get_max_subarray_sum(left, right)
            results.append(str(result))
    
    # Output all results at once (faster than printing one by one)
    print("\n".join(results))

# Example input handling
if __name__ == "__main__":
    solve()
```
# Flag HTB{DR4G0N_FL1GHT_5TR33_7ea7447273d8b04b92557893f59f1978}