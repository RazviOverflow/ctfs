# RazviOverflow
# Python3

import string
from pwn import *

all_chars = string.printable
flag = "flag{"

for i in range(0,100):
	for char in all_chars:
		while True:
			try:
				binary = remote("challenges.ctfd.io", 30468)
				print(binary.recv())
				payload = flag + char
				print("[+] Trying payload: {}".format(payload))
				binary.sendline(payload)
				response = binary.recvall()
				print("________€€€€€€€€€€E_____________\n\n")
				print(response)
				print("________€€€€€€€€€€E_____________\n\n")
				if b"You seem to know" in response:
					flag = flag + char
					print("Flag so far: {}".format(flag))
					break
			except Exception as ex:
				print(ex)
				continue
			break

