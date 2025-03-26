# Challenge

Read a single string that represents a list of subarrays. Each subarray contains possible damage values for one round.
Example:
[[13, 15, 27, 17], [24, 15, 28, 6, 15, 16], [7, 25, 10, 14, 11], [23, 30, 14, 10]]
Read an integer T that represents the target total damage required.
Pick exactly one number from each subarray so that their sum equals T.
It is guaranteed that there is exactly one valid solution.
Output the valid combination (as a list) that meets the target damage.

# Solution
```python
# Input the text as a single string
input_str = input()  # Example: "shock;979;23"
T = int(input())

# Write your solution below and make sure to encode the word correctly
def parse_input(input_str):
    try:
        # Remove outer brackets and split into subarrays
        subarrays = input_str.strip()[2:-2].split('], [')
        subarrays = [[int(x) for x in subarray.split(', ')] for subarray in subarrays]
        return subarrays
    except Exception as e:
        raise ValueError(f"Invalid input: {e}")

def find_combination(subarrays, target):
    def backtrack(index, path, total):
        if index == len(subarrays):
            if total == target:
                return path
            return None
        
        for num in subarrays[index]:
            result = backtrack(index + 1, path + [num], total + num)
            if result:
                return result
        
        return None
    
    result = backtrack(0, [], 0)
    if result:
        return result
    else:
        raise ValueError("No valid combination found")
#input_str, T = input_text.split("\n")
subarrays = parse_input(input_str)
result = find_combination(subarrays, T)
print(result)
```

# Flag HTB{DR4G0NS_FURY_SIM_C0MB0_02f41275bf451a223b676b30ee50e3ea}