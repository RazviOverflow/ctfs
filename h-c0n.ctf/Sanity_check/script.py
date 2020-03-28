#!/usr/bin/python3

import base64
import hashlib

with open('weird_flag.txt') as f:
	data = f.read()

while True:
	try:
		data = base64.b64decode(data)
		print("############TRY\n")
		print(data.decode("latin-1"))
		print(hashlib.md5(data).hexdigest())
	except Exception as e:
		print(e)
		break