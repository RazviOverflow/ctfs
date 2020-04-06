from pwn import *
import string

secret = "aQLpavpKQcCVpfcg"

secret_decrypted = list()

for letter in secret:
	for char in string.printable:
		if ((ord(char) * 8 + 0x13) % 0x3d + 0x41) is ord(letter):
			secret_decrypted.append(char)
			break


secret_decrypted ="".join(secret_decrypted)
	
#binary = process("./sora")
binary = remote("challenges.auctf.com", 30004)
print binary.recvuntil("!")
binary.sendline(secret_decrypted)
print binary.recvall()



