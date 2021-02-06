

original_bytes = [40,18,5,40,18,5,10,46,1,84,51,0,61,14,0,61,14,40,18,5,10,46,1,84,51,0,61,14,0,61]
original_flag = "tjctf{"
xor_key = "\\xf\\t~"

for index, char in enumerate(original_bytes):
	print(str(chr(char^ord(xor_key[index%len(xor_key)]))), end='')