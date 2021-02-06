# RazviOverflow
# Python3 

original_string = [6,88,67,83,72,66,82,90,86,18,77,16,98,17,76,18,126,97,79,69,126,102,17,17,69,126,77,116,66,74,0,92]


print("Original string: " + str(original_string))

for char in original_string:
	print(chr(char), end='')
	
print("______________")
for char in original_string:
	print(chr(char^33), end='')

