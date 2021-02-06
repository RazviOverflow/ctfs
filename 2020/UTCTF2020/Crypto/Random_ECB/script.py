#!/usr/bin/python2
# RazviOverflow

# The script is meant to leak the byte one by one. Add it by hand to the flag and re-execute the script. 
from pwn import *
import string

url = "ecb.utctf.live"
port = 9003

flag = "utflag{" ## Obtained flag is: utflag{3cb_w17h_r4nd0m_pr3f1x}
plaintext = "A"*(32 - (len(flag)+1)) # Give the padding oracle some room an additional byte to guess

r = remote(url, port)
found = 0

def get_encryption(text_to_encrypt):
  r.send(text_to_encrypt+"\n")
  return r.recv().decode("utf-8").split("\n")[1]

def get_auxiliar_encryption(string_to_request, string_to_avoid):
  r.send(string_to_request+"\n")
  discover_byte_b = r.recv().decode("utf-8").split("\n")[1]
  while discover_byte_b == string_to_avoid:
    r.send(string_to_request+"\n")
    discover_byte_b = r.recv().decode("utf-8").split("\n")[1]
  return discover_byte_b

print(r.recv())

## Getting both possible values for the encoded string
discover_byte_a = get_encryption(plaintext)
discover_byte_b = get_auxiliar_encryption(plaintext, discover_byte_a)

discover_byte_a = discover_byte_a[32:64]
discover_byte_b = discover_byte_b[32:64]

#print "DISOCVER BYTE IS " + discover_byte
#sys.exit()

print "Discover_byte_a is:\n" + discover_byte_a
print "Discover_byte_b is:\n" + discover_byte_b

while not found:
  for char in string.printable:
    print "Trying char: " + plaintext+flag+char
    new_encrypted_text_a = get_encryption(plaintext+flag+char)
    new_encrypted_text_b = get_auxiliar_encryption(plaintext+flag+char ,new_encrypted_text_a)

    ## The size im trimming the string to is the double of the padding + flag + byte to discover
    ## That is, the blocksize (16) in hexadecimal (32)
    new_encrypted_text_a = new_encrypted_text_a[32:64] 
    new_encrypted_text_b = new_encrypted_text_b[32:64]

    print new_encrypted_text_a
    print new_encrypted_text_b
    if (new_encrypted_text_a == discover_byte_a and new_encrypted_text_b == discover_byte_b) or (new_encrypted_text_a == discover_byte_b and new_encrypted_text_b == discover_byte_a):
      print "Possible new flag char: " + char.encode("utf-8")
      found = 1
      break
