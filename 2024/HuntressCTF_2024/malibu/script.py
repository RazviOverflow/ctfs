#RazviOverflow
import requests
from pwn import *

# Example usage
file_path = "keys"
host = "your_server_host"

context.log_level = "debug"

p = remote("challenge.ctf.games", 30157)
response = b""
with open(file_path, 'r') as f:
  for line in f:
    p.sendline(f"GET /bucket/{line.strip()} HTTP/1.1")
    p.sendline("Host: challenge.ctf.games")
    p.sendline()
    actual_response = p.recv()
    if b"HTTP" in actual_response:
      actual_response = actual_response.split(b"GMT\r\n\r\n")[1]
    response += actual_response
    sleep(.15)
    
with open("sanitized_response", "wb") as f:
  f.write(response)