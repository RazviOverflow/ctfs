# RazviOverflow

'''
Notes:
	- There is a call to rand() -> rand_number_1
	- modulo_1 = length(user_input) % rand_number_1
	- rand() -> rand_number_2
	- modulo_2 = length(user_input) % rand_number_2
	- index = 0
	- byte_1 = user_input[modulo_1]
	- xor_1 = byte_1 ^ index
	- byte_2 = user_input[modulo_2]
	- xor_2 = byte_2 ^ index
	- byte_1 = user_input[modulo_1]
	
	while True:
		if(byte_1 ^ index ^ byte_2 % byte_1 == 0):
			if(byte_1 ^ index ^ byte_2 % byte_1 == 0):
				if(byte_1 ^ index != byte_2):
					break
		index += 1
##############################################################
	user_input = ""
beginning:
	iVar4 = rand() # 0x66e38f1a , 0x1bc6418d
	uVar7 = length(user_input)
	iVar4 = iVar4 % uVar7
	iVar5 = rand() # 0x2b567e3d , 0x6ff5fa6c
	iVar5 = iVar5 % uVar7
	index = 0
	while True:
		cVar1 = user_input[iVar4]
		cvar2 = user_input[iVar5]
		pcVar8 = cVar1
		if((cVar1 ^ index ^ cVar2) % pcVar8 == 0):
			cVar1 = user_input[iVar4]
			cvar2 = user_input[iVar5]
			pcVar8 = cVar2
			if((cVar1 ^ index ^ cVar2) % pcVar8 == 0):
				cVar1 = user_input[iVar4]
				pcVar8 = user_input[iVar5]
				if((cVar1 ^ index) != pcVar8):
					break
	
	if iVar4 != iVar5:
		if index != ___DATA + (iVar4 * 0x31 + iVar5 * 4):
			print("WRONG!")

	else:
		goto beginning		
'''

beginning:
	iVar4 = rand() # 0x66e38f1a , 0x1bc6418d
	uVar7 = length(user_input)
	iVar4 = iVar4 % uVar7
	iVar5 = rand() # 0x2b567e3d , 0x6ff5fa6c
	iVar5 = iVar5 % uVar7
	index = 0
	while True:
		cVar1 = user_input[iVar4]
		cvar2 = user_input[iVar5]
		pcVar8 = cVar1
		if((cVar1 ^ index ^ cVar2) % pcVar8 == 0):
			cVar1 = user_input[iVar4]
			cvar2 = user_input[iVar5]
			pcVar8 = cVar2
			if((cVar1 ^ index ^ cVar2) % pcVar8 == 0):
				cVar1 = user_input[iVar4]
				pcVar8 = user_input[iVar5]
				if((cVar1 ^ index) != pcVar8):
					break
		index += 1
	if iVar4 != iVar5:
		if index != 0x0a0 + (iVar4 * 0x31 + iVar5 * 4):
			#3993 = 160 + (x*0x31 + y*4)
			print("WRONG!")

	else:
		goto beginning		
'''