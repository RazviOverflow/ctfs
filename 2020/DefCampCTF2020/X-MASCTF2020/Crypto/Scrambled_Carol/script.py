import os
import sys
import random

def get_seed(size):
	return int(os.urandom(size).hex(), 16)

input_data = None
output_data = ""
while True:
	seed = get_seed(4)
	random.seed(seed)

	old_sigma = "0123456789abcdef"
	new_sigma = list(old_sigma)
	random.shuffle(new_sigma)
	new_sigma = ''.join(new_sigma)
	#print(old_sigma, new_sigma)

	with open("output.txt", "r") as in_file:
		input_data = in_file.read()

	for alpha in input_data:
		output_data += old_sigma[new_sigma.index(alpha)]

	print("-------- Trying sigma: " + new_sigma + " ---------------")
	print(" ++++++++ output[0:16]: " + output_data[0:16] + " +++++++++++++ ")

	if(output_data[0:16] == old_sigma):
		print("[+] LADIES AND GENTLEMEN, WE GOT HIM! [+]")
		with open("output2.txt", "w+") as out_file:
			out_file.write("Reversed sigma -> " + new_sigma + "\n")
			out_file.write(str(output_data))
			out_file.write("\n################################\n")
		sys.exit()