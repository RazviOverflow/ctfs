# RazviOverflow
#!/usr/bin/python2

'''
Solve 50 of these epic problems in a row to prove you are a master crypto man like Aplet123!
You'll be given a number n and also a plaintext p.
Caesar shift `p` with the nth Fibonacci number.
n < 50, p is completely uppercase and alphabetic, len(p) < 50
You have 60 seconds!
--------------------
'''
from pwn import *

url = "misc.2020.chall.actf.co"
port = 20300

# first 100 fibonacci sequence numbers http://www.codecodex.com/wiki/First_100_numbers_in_the_fibonacci_sequence
# only the first 50 are needed
fibonacci = [0,1,1,2,3,5,8,13,21,34,55,89,144,233,377,610,987,1597,2584,4181,6765,10946,17711,28657,46368,75025,121393,196418,317811,514229,832040,1346269,2178309,3524578,5702887,9227465,14930352,24157817,39088169,63245986,102334155,165580141,267914296,433494437,701408733,1134903170,1836311903,2971215073,4807526976,7778742049]

def caesar_shift(text,n):
	result = ""
	n = n%26
	for i in range(len(text)):
	
		result += chr((ord(text[i]) + n-65) % 26 + 65)

	return result


connection = remote(url, port)
message = connection.recv().split("\n")[-2]
while True:
	print(message)
	text_to_shift = message.split(" ")[1]
	shift_key = message.split(" ")[3].split("=")[1]
	print("Message to shift:",text_to_shift,"shift key:",shift_key, "shift number:", fibonacci[int(shift_key)])
	shifted = caesar_shift(text_to_shift, fibonacci[int(shift_key)])
	print("SHIFTED:", shifted)
	connection.send(shifted+"\n")
	message = connection.recv().split("\n")[-2]
	