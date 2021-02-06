# RazviOverflow
# Python3

'''

NOT WORKING!

'''

from pwn import *
import string

binary = remote("jh2i.com", 50034)

mod = len(string.printable)

'''
def rot(s, n):
	final_string = list()
	for char in s:
		final_string.append(chr((ord(char)+n) % mod))
	return "".join(final_string)	
'''

def rot(phrase, n):
    encoded = ''.join(sy[n:] + sy[:n] for sy in phrase)
    lookup = str.maketrans(''.join(phrase), encoded)
    return lambda s: s.translate(lookup)

while True:
	phrase = binary.recv().decode("utf8")
	print(phrase)
	rot_number = 0
	found = False 
	while "send back" not in phrase and rot_number < 500:
		phrase = rot(phrase, rot_number)
		rot_number += 1

	rot_number = 0
	while "send back" not in phrase and rot_number > -500:
		phrase = rot(phrase, rot_number)
		rot_number -= 1
	
	binary.sendline(phrase)
	print(phrase + "ROT WAS -> " + str(rot_number))