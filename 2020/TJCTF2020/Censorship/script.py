# RazviOverflow
# python3

from pwn import *

connection = remote("p1.tjctf.org", 8003)

summatory = connection.recvline()
print(summatory)
summatory = summatory.replace(b"?", b" ")
summatory = [int(s) for s in summatory.split(b" ") if s.isdigit()]
print(summatory)
result = summatory[0] + summatory[1]
print(result)
connection.sendline(str(result))
print(connection.recvall())