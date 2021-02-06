# RazviOverflow
# python3

from pwn import *

final_string = list()

for number in range(1, 501):
	number_wrote = False
	print(str(number))
	if(number%3 == 0 ):
		number_aux = 'Red'
		#final_string.append(str(number_aux))
		number_wrote = True
	if(number%5 == 0):
		number_aux = 'Rum'
		#final_string.append(str(number_aux))
		number_wrote = True
	if(number%3 == 0 and number%5 == 0):
		number_aux = 'RedRum'
		#final_string.append(str(number_aux))
		number_wrote = True
	

	#if(not number_wrote): 
	#	final_string.append(str(number))	
	if(number_wrote): 
		final_string.append(str(number_aux))
		final_string.append(",")



final_string = "".join(final_string)[:-1]

print(final_string)

connection = remote("env2.hacktober.io", 5000)

print(connection.recv())
connection.sendline(final_string)
connection.interactive()

