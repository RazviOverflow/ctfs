#!/usr/bin/python3
#RazviOverflow
#pip3 install factordb-pycli
'''
	This time I decided to use Python3
'''
from pwn import *
from factordb.factordb import FactorDB

process = remote("challenges.tamuctf.com", 8573)
print(process.recv())
#print(process.recv())
process.sendline()
number = process.recv()
number_to_factor = number.decode("utf-8")
print(number_to_factor)

f = FactorDB(int(number_to_factor))
f.connect()

primes = f.get_factor_list()

print("[+] Primes are:", primes)
process.sendline(str(primes[0]) + " " + str(primes[1]))
print(process.recvall().decode("utf-8"))