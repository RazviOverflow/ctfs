# Challenge
Your quest is to determine the maximum amount of energy that can be harnessed by selecting tokens such that no two selected tokens are adjacent. This challenge is equivalent to finding the maximum sum of non-adjacent numbers from a list.

# Solution
```python
# Input the text as a single string
input_text = input()  # Example: "shock;979;23"

# Write your solution below and make sure to encode the word correctly
def max_sum_non_adjacent(nums):
    nums = nums.strip()[1:-1]  # Remove '[' and ']'
    nums = [int(x.strip()) for x in nums.split(',')]
    if not nums:
        return 0
    if len(nums) == 1:
        return nums[0]
    
    prev_prev = 0
    prev = int(nums[0])
    
    for num in nums[1:]:
        current = max(prev, prev_prev + int(num))
        prev_prev = prev
        prev = current
    
    return prev

# Example usage:
nums = input_text
result = max_sum_non_adjacent(nums)
print(result)
```

# Flag: HTB{SUMM0N3RS_INC4NT4T10N_R3S0LV3D_417effdb39e173bb54097d9203c68da8}