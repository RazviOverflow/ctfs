Everytime user is requested input fgets read up to 16 characters, except for the bio. The bio reads up to 16\*8 (128)characters. 

It is now as simple as knowing the address or offset where the program starts writing the user-provided bio and the address or offset where the check will be performed. 

bio = ebp - 0x80
check = ebp - 0xc

Since bio is at a lower address than check and their offset is 116 (128 (0x80) - 12 (0xc)), we can reach and overwrite check. Remember that writing in memory always happens upwards (toward higher memory addresses) and we can write up to 128 characters.

So the payload, when asked about the bio, will be "A" * 116 + \x0D\xD0\xD3\xC0.

Implementing it with pwntools is fairly simple. 

Flag is: tjctf{0v3rfl0w_0f_m4tch35}