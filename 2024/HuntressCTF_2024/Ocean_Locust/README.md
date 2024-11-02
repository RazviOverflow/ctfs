Wow-ee zow-ee!! Some advanced persistent threats have been doing some tricks with hiding payloads in image files!

We thought we would try our hand at it too.

NOTE: this challenge includes a debug build of the binary used to craft the image, as well as a release build... so you may choose to go an easier route or a harder route ;)

# Solution

After trial and error by encrypting several test flags, I managed to deduce the algorithm. Basically it places at random positions within the header and footer of the png the ecnrypted flag. The bytes that comprise the flag are easy to identify because they start with 62 69 54, which is hexa for `bit`. So the first step is recovering all of them.

Then, after several attemps, I realized the order of each sequence of bytes is specified in the next field. That is, the byte following the `62 69 54` sequence indicates its position, with `61` being the 1st one, `62` the 2nd, and so forth. By testing different lengths of the flag, I also realized that the first byte (after the `00 00 00` sequence, which I ommited here) indicates its size/length. That is, how many bytes after the `62 69 54` header are actually part of the flag. In this case, it is always length `05`. (The length is always the same for a given execution, since the program splits the input in equal slices). 

The last part, which was pure intuition, was finding out that the bytes from the flag are actually XORED with the header + position bytes. I found this out by xoring the first bytes of the flag (which are known, and they should be `flag{`) with `flag{` in order to get a possible key and my surprise was that the result was `bitA`. In other words: `04 05 35 06 19 ⊕ flag{ = biTab`. The `biTab` part indicates the key is actually `biTa`, the last `b` is the result of the key repetition.

With this scheme in mind, you can extract the revelant byte sequences from the png image provided with the challenge, order them, and XOR each 5 bytes of the flag with their corresponding header. The result looks like this:

```
05 62 69 54 61 04 05 35 06 19 9D C5 69 88  	flag{
05 62 69 54 62 04 0C 37 5A 55 0C B9 9F 21 	fec87
05 62 69 54 63 01 5F 6D 53 00 7D 55 D6 EC	c690b 
05 62 69 54 64 5A 0C 37 5C 06 F9			8ec8d
05 62 69 54 65 54 5C 36 5D 00 B7 20 36 7B 	65b8b
05 62 69 54 66 00 58 64 03 07 A6 21 A5 2E 	b10ee
05 62 69 54 67 55 0B 36 51 57 C8 E8 02 80 	7bb65
05 62 69 54 68 06 59 29 C2 C8 0A AF 71 26 	d0}
```

# Flag flag{fec87c690b8ec8d65b8bb10ee7bb65d0}