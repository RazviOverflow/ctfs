# RazviOverflow

import string
from ctypes import c_int32

def bruteforce_length():
	
	for i in range(1,1000):
		iVar4 = 0x66e38f1a % i
		iVar5 = 0x2b567e3d % i
		if i == (0xa0 + (iVar4 * 0x31 + iVar5 * 4)) & 0xFFFFFFFF:
			print(f"Gotcha, i -> {i}")

def find_flag(user_input):
	iVar4 = 0x438b123a
	uVar7 = len(user_input)
	iVar4 = iVar4 % uVar7
	iVar5 = 0x57460e67
	iVar5 = iVar5 % uVar7
	index = 0
	while True:
		cVar1 = user_input[iVar4]
		cVar2 = user_input[iVar5]
		pcVar8 = ord(cVar1)
		if((ord(cVar1) ^ index ^ ord(cVar2)) % pcVar8 == 0):
			cVar1 = user_input[iVar4]
			cVar2 = user_input[iVar5]
			pcVar8 = ord(cVar2)
			if((ord(cVar1) ^ index ^ ord(cVar2)) % pcVar8 == 0):
				cVar1 = user_input[iVar4]
				pcVar8 = user_input[iVar5]
				if((ord(cVar1) ^ index) != pcVar8):
					break
		index += 1
	if iVar4 != iVar5:
		print(c_int32(0x55d54902d0a0 + (iVar4 * 0x31 + iVar5 * 4)).value)
		if index == c_int32(0x55d54902d0a0 + (iVar4 * 0x31 + iVar5 * 4)).value:
			#3993 = 160 + (x*0x31 + y*4)
			print(f"CORRECT! input : {user_input}, length: {len(user_input)}")
		#else:
			#print(f"WRONG! value{c_int32(0x55d54902d0a0 + (iVar4 * 0x31 + iVar5 * 4)).value}")

alphabet = string.printable

flag = "utflag{"
while True:

	#print(f"Testing: {flag}; len = {len(flag)}")
	find_flag(flag)
	flag = flag + 'a'

	#for char in alphabet:
		#print(f"Testing: {flag+char}")
		#find_flag(flag+char)
	#break
	#flag = flag + char

