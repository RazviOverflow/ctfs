# RazviOverflow

from pwn import *

def get_result(input):
	'''
	Results
	---
	All results are rounded
	to 2 digits after the point.
	ex. 9.5752 -> 9.58

	Error Codes
	---
	* Divide by 0:
	This may be alien technology,
	but dividing by zero is still an error!
	Expected response: DIV0_ERR

	* Syntax Error
	Invalid expressions due syntax errors.
	ex. 3 +* 4 = ?
	Expected response: SYNTAX_ERR

	* Memory Error
	The remote machine is blazingly fast,
	but its architecture cannot represent any result
	outside the range -1337.00 <= RESULT <= 1337.00
	Expected response: MEM_ERR
	'''
	result = 0
	try:
		result = round(eval(input),2)
	except SyntaxError:
		return "SYNTAX_ERR"
	except ZeroDivisionError:
		return "DIV0_ERR"

	if result < -1337.0 or result > 1337.0:
		return "MEM_ERR"
	return result

def start_calculating(p):
	p.recv()
	p.sendline(b"1")
	print(p.recvline())
	print(p.recvline())
	print(p.recvline())

	while True:
		operation = ""
		try:
			operation = p.recvuntil(b"?")
		except Exception:
			p.interactive() # To get the flag
		print(f"Operation: {operation}")
		operation = operation.split(b":")[1].split(b"=")[0]
		print(f"Sanitized: {operation}")
		result = str(get_result(operation))
		print(f"Result: {result}")
		p.sendline(result)

if __name__ == '__main__':
	IP, port = sys.argv[1].split(':')
	p = remote(IP, int(port))
	start_calculating(p)
# Flag: HTB{d1v1d3_bY_Z3r0_3rr0r}
