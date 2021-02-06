import itertools
import string

def generate_possible_values(l):
     yield from itertools.product(*([l] * 4)) 

def xor(data, key):
    l = len(key)
    return bytearray((
        (data[i] ^ key[i % l]) for i in range(0,len(data))
    ))

def write_to_file(number, data):
	file = open("xored_image"+str(number)+".jpg", "wb")
	file.write(data)
	file.close()

data = bytearray(open('fr3sh_h4rv3st.jpg', 'rb').read())


#for x in foo(string.printable):
#0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ!"#$%&\'()*+,-./:;?@[\\]^_`{|}~ \t\n\r\x0b\x0c
for i in range(1, 256):
	for x in generate_possible_values(chr(i)):
		key = ''.join(x)
		print(key)
		data = xor(data,key.encode())
		write_to_file(i,data)



     