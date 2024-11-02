Is anyone there? Is anyone there? I'm sending myself the flag! I'm sending myself the flag!

# Solution
Upon inspecting the `.pcap` file it becomed evident that the ICMP packets contain (repeated 40 times) the first byte of an image. In other words, in other to solve the challenge only the 1st byte of the 'Data' field (the last 40 bytes of the whole 'payload' or 'load') must be retrieved. It can be solved using the [script.py](./script.py)

The resulting file is an image containing the flag. The flag is also contained in the metadata of the image, easily retrieved with `exiftool`, `rabin2`, etc...

# Flag flag{6b38aa917a754d8bf384dc73fde633ad}