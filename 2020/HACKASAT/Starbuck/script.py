# RazviOverflow
# python3

from pwn import *

ticket = "ticket{victor6994tango:GJsWSd06bCh1H8aij6QnhkNqdS-SZ12ZPCJkztiBhnuogKdvlkyd6y0tWZeJoQhNjw}"
binary = remote("intro2.satellitesabove.me", 5001)


print(binary.recv())
binary.sendline(ticket)
summatory = binary.recv()
print(summatory)
summatory = summatory.split(b"+")
summatory[0] = summatory[0].strip()
summatory[1] = summatory[1][:-3].strip()
result = int(summatory[0]) + int(summatory[1])
print(result)
binary.sendline(str(result))
print(binary.recv())

