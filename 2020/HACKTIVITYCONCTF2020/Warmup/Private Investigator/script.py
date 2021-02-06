# RazviOverflow
# Python3

from pwn import *

elf = ELF("./pancakes")
binary = process("./pancakes") 

secret_recipe_address = elf.symbols[b'secret_recipe']

print("ADDR -> " + str(secret_recipe_address))
