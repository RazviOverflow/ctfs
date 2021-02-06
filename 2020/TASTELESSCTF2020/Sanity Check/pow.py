from hashlib import sha1
from re import compile
from telnetlib import Telnet
from socket import socket

def proof(t, prefix):
    i = 0
    while True:
        if sha1(str(t + str(i)).encode()).hexdigest().startswith(prefix):
            return str(i)
        i += 1

regex = compile(r"sha1\(([a-f0-9]+), input\) prefix = ([a-f0-9]+)...")
def solve(t):
    t, prefix = regex.findall(str(t))[0]
    print("solving " + t + " for prefix " + prefix)
    p = proof(t, prefix)
    print("solved! " + p)
    return p

def connect(to):
    s = socket()
    s.connect(to)
    buf = s.recv(200)
    r = solve(buf) + "\n"
    s.send(r.encode())
    return s

if __name__ == '__main__':
    from sys import argv

    if len(argv) != 3:
        print("usage: " + argv[0] + " okboomer.tasteless.eu 10001")
        exit(1)

    s = connect((argv[1], int(argv[2])))

    t = Telnet()
    t.sock_avail
    t.sock = s
    t.interact()
