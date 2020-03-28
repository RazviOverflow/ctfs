import zwsp_steg


with open('zero.txt', 'r') as file:
	data = file.read().replace('\n', '')
	print (data)
	decoded = zwsp_steg.decode(data, zwsp_steg.MODE_ZWSP)
	print("Strlen:", len(decoded))
print ("the flag is:" + decoded.decode('utf-8'))  # hidden message