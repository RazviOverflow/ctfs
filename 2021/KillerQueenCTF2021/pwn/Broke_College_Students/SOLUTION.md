There is a format string vulnerability in catch() function. Flag is: kqctf{did_you_resort_to_selling_NFTs_for_college_money_????}

Exploit idea:
	Since the binary is an infinite loop of itself, call several times catch()
	In the first format string -> try to find out the position of the user input (rbp-0x20)
	In the next format string -> leak the canary and the original return address of the function
	In the next format string -> calculate the offset from the original return value to 0x000014f1, in order to know where to jump, and overflow the function with both the canary
	and the new direction 
