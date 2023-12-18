values = b"\x64\xc4\x14\x74\xb7\x34\x05\x05\xf5\x13\x35\xf5\x34\x03\x03\xc6\xf5\x23\x43\x53\x23\x73\x43\x53\x63\xd7"
flag = ""

for value in values:
	print(f"Testing value {value}")
	for i in range(0x00, 0x100):
		ecx = i & 0xf
		ecx = ecx << 4
		eax = i >> 4
		ecx = ecx | eax
		if(ecx == value):
			print(chr(i))
			flag += chr(i)
print(f"The flag is: {flag}")
# Result is: FLAG{CPP_1S_C00l_24527456}
# Challenge flag: 0xL4ugh{CPP_1S_C00l_24527456}