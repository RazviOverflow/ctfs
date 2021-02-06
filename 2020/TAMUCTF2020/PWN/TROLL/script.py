# RazviOverflow
from pwn import *
import random

def get_number(random_number):
	random_number = int(random_number)
	eax = random_number
	ecx = eax
	edx = 0x14f8b589
	edx_eax = eax * edx

	## We get only the superior 32 bits
	#edx = edx_eax & 0xFFFFFFFF00000000
	edx = edx_eax>>32

	edx = edx>>0xd
	eax = random_number
	eax = eax>>0x1f
	edx = edx - eax
	eax = edx
	eax = eax * 0x186a0
	ecx = ecx - eax
	eax = ecx
	eax = eax + 1 
	return eax

process_get_random_numbers = process("./random_numbers")
random_numbers = process_get_random_numbers.recv().split("\n")[:-1]

#process = process("./troll")
process = remote("challenges.tamuctf.com", 4765)

print process.recv()
process.sendline("RazviOverflow")

for i, number in enumerate(random_numbers):
	print "[+] Guess #" + str(i) + " \n" + process.recv()
	process.sendline(str(get_number(random_numbers[i])))

print process.recvall()