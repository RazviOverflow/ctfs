#root@kali:~/Desktop/CTFs/ctfs2/2021/HackOnCTF2021_URJC/Basico/Boom!# base64 -d buscaminas.txt 
#HackOn{B00m_/&�,1$=/base64: invalid input

#text = "SGFja09ue0IwMG1fLw8cHSYSGiwxJAMdPS8=="
text = "Lw8cHSYSGiwxJAMdPS8=="
#text = "HackOn{B00m_"
key = "BuscaminasXOR"

def xor(text, key): 
    len_key = len(key) 
    encoded = [] 
      
    for i in range(0, len(text)): 
        encoded.append(ord(text[i]) ^ ord(key[i % len_key]))
    return encoded

cipher = xor(text, key)

for number in cipher:
	print(chr(number), end='')