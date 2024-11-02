#RazviOverflow
from pwn import *

context.log_level = "debug"

p = remote("challenge.ctf.games", 31886)

while True:
	opponent = p.recvuntil(b"Your move:")
	#print(opponent[-20:])
	if b"advance" in opponent:
		p.sendline(b"retreat")
		print("Sent retreat")
	if b"strike" in opponent:
		p.sendline(b"block")
		print("Sent block")
	if b"block" in opponent:
		p.sendline(b"advance")
		print("Sent advance")
	if b"retreat" in opponent:
		p.sendline(b"strike")
		print("Sent strike")