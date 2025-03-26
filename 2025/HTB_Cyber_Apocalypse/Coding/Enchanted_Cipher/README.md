# Challenge
The cipher operates as follows:

Alphabetical characters are processed in groups of 5 (ignoring non-alphabetical characters).
For each group, a random shift between 1 and 25 is chosen and applied to every letter in that group.
After the encoded message, an additional line indicates the total number of shift groups, followed by another line listing the random shift values used for each group.
Your quest is to decode the given input and restore the original plaintext.

# Solution
```python
def decode_codex(encoded_message, num_groups, shifts):
    # Step 1: Extract only alphabetic characters
    chars = [c for c in encoded_message if c.isalpha()]
    
    # Step 2: Split into groups of 5
    groups = [''.join(chars[i:i+5]) for i in range(0, len(chars), 5)]
    
    # Step 3: Apply reverse shifts
    decoded_groups = []
    for i, group in enumerate(groups):
        shift = shifts[i]
        decoded_group = ''.join(
            chr(((ord(c) - ord('a') - shift) % 26) + ord('a')) if c.islower()
            else chr(((ord(c) - ord('A') - shift) % 26) + ord('A'))
            for c in group
        )
        decoded_groups.append(decoded_group)
    
    # Step 4: Reinsert into original format (preserve spaces and punctuation)
    decoded_message = ""
    char_index = 0
    for c in encoded_message:
        if c.isalpha():
            decoded_message += decoded_groups[char_index // 5][char_index % 5]
            char_index += 1
        else:
            decoded_message += c
    
    return decoded_message

# === Example Usage ===
encoded_message =  input()
num_groups =  int(input())
shifts =  input()
shifts =  [int(x.strip()) for x in shifts.strip()[1:-1].split(',')]

# Decode the message
result = decode_codex(encoded_message, num_groups, shifts)
print(result)
```

# Flag: HTB{3NCH4NT3D_C1PH3R_D3C0D3D_9243e1a52f3b7f43fc611783858d6305}