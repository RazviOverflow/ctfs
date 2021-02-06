#RazviOverflow
import string

original_byte_array = list()
encrypted_byte_array = list()
flag_bytes = list()

## Get all encrypted bytes and their corresponding encrypted values

with open("file", "rb") as file:
	for byte in file.read():
		original_byte_array.append(hex(byte))

print(original_byte_array)

with open("file.enc", "rb") as file:
	for byte in file.read():
		encrypted_byte_array.append(hex(byte))

print(encrypted_byte_array)

## Trying to decrypt flag.enc

with open("flag.enc", "rb") as file:
	for byte in file.read():
		flag_bytes.append(hex(byte))

print(flag_bytes)

for byte in flag_bytes:
	print(chr(int(original_byte_array[encrypted_byte_array.index(byte)],16)), end='')
