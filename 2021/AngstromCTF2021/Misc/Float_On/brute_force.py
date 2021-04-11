# Python3
# RazviOverflow

from pwn import *
import sys

stage_one = "0"
stage_two= "18446744073709551615"

for i in range(0, 18446744073709551615):
	binary = process("./a.out")
	binary.sendline(stage_one)
	binary.sendline(stage_two)
	binary.recv()
	binary.sendline(str(i))
	response = binary.recv()
	print("[+] Trying number ->" + str(i))
	print(b"[+] Response was ->" + response)
	if b"Stage 3 passed!" in response:
		print("[+] Stage passed with number ->" + str(i))
		sys.exit()
	binary.close()