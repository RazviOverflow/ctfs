from pwn import *

context.log_level = "debug"

p = remote("challenge.ctf.games", 30852)
p.sendline(b"HELO pyrchdata.com")
print(p.recv())
p.sendline(b"MAIL FROM:jdaveren@pyrchdata.com")
print(p.recv())
p.sendline(b"RCPT TO:swilliams@pyrchdata.com")
print(p.recv())
p.sendline(b"DATA") 
print(p.recv())
p.sendline(b"Subject: Exploring Blockchain, AI, and Cryptocurrency Opportunities\n Hello, I hope this email finds you well. I wanted to share some thoughts on the intersection of blockchain, AI, and cryptocurrency, and how these technologies are shaping the future of digital innovation. Blockchain is transforming decentralized systems, while AI enhances predictive analysis. Combining these two with cryptocurrencies opens doors for smart contracts, DeFi platforms, and more efficient tokenization. Let us connect and discuss potential collaborations or ideas around these topics. Best regards, Alex Pyrch.!\n")
p.send(b"\r\n.\r\n\r\n")
p.sendline(b"QUIT") 
p.interactive()