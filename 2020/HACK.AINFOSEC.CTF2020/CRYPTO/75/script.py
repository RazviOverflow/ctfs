import sys
flag = "28020d2b2f40541b7d0c214d002a410200446a1b7f1242516f78173011"
xor_key = "NnlLT7dvEmUghK9z06WXT3o2RKxVl"

index = 0
for chjar in flag.decode("hex"):
	#print chr(ord(chjar)^ord(xor_key[index%len(xor_key)])),
	sys.stdout.write(chr(ord(chjar)^ord(xor_key[index%len(xor_key)])))
	index += 1