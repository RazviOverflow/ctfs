In order to exploit this challenge we need to leak addresses of some libc functions, get the libc version and calculate the offset to libc base address. Given the libc version and its base address, we can now call system(/bin/sh)

The flag is: tjctf{tr33_c0de_in_my_she115}
