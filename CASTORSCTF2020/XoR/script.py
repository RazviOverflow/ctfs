# RazviOverflow
# Python3

string = "gh}w_{aPDSmk$ch&r+Ah-&F|\x14\x7a\x11\x50\x15\x10\x1d\x52\x1e"
counter = 0

for char in string:
	print(chr( (ord(char) +2) ^ (counter+10) ), end="")
	counter += 1


