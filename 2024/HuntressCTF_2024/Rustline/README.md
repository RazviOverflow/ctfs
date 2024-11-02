Jerry: A Redline Stealer.
George: Written in Rust.
Jerry: A Rusty Redline Stealer.
George: A Rusty Redline Stealer, Jerry!

We caught a Redline variant executing on an endpoint and intercepted the encrypted files as they traversed the edge proxy. Well, everything except for the flag.txt file (imagine that...). Any chance you could figure out how this thing works and recover the flag? NOTE: Archive password is rustline

# Solution

The writeup for this challenge requires further development since it involves several steps. Anyways, summing it up: I solved it using IDA + API Monitor (Rohitab). Given that reversing the binary was driving me insane, I tried dynamically analyzing it with API Monitor to see what APIs does it invoke.

It turns it invokes FindFirstFile in the directory .\challenge-files\. These files are already included in the .zip of the challenge.

Then it calls BCryptGenRandom, but from what I've seen in the code it must be just a decoy. The encryption/decryption seems to be a custom implementation based on XOR using 'somepseudorandomlygeneratedbytes' and other stuff.

Later it attempts establishing connections by using WSAStartup and getaddrinfo. It points to a the address: "super-ultrasus.huntressctf.local"

I modified the hosts file of my Windows machine so the hostname points to my local IP.
`127.0.0.1       super-ultrasus.huntressctf.local`

Setup a local server with python and repeated the process `python -m http.server --bind 127.0.0.1 80`. Noticed then that the sample tries to upload the files it finds in the `\challenge-files\` folder to the `\upload` directory of the hostname by performing a POST operation with WSASend.

Seteup an uploadserver with `python -m uploadserver --bind 127.0.0.1 80`. And repeated the execution. Noticed it attempts to upload to the server an encrypted variant of the files present in `\challenge-files`.

**This next step was based on pure intuition**. Based on what I've seen while reversing the code, I assumed the encryption was based on XOR. Given that XOR is self-inverse, I tried placing in `\challenge-files\` folder the encrypted `flag.txt`. Repeate the execution and inspecte the buffer contents when the WSASend function as invoked after reading and encrypting `\challenge-files\flag.txt`. And there it was, the flag in plaing sight. After encrypting the encrypted `flag.txt` (which, based on my XOR assumptions means decrypting it) the contents of the WSABUF parameter of WSASend looked like:
```
0000  22 53 65 64 20 75 74 20 70 65 72 73 70 69 63 69 61 74 69 73 20 75 6e 64 65 20 6f 6d 6e 69 73 20 69 73 74 65 20  "Sed ut perspiciatis unde omnis iste 
0025  6e 61 74 75 73 20 65 72 72 6f 72 20 73 69 74 20 76 6f 6c 75 70 74 61 74 65 6d 20 61 63 63 75 73 61 6e 74 69 75  natus error sit voluptatem accusantiu
004a  6d 20 64 6f 6c 6f 72 65 6d 71 75 65 20 6c 61 75 64 61 6e 74 69 75 6d 2c 20 74 6f 74 61 6d 20 72 65 6d 20 61 70  m doloremque laudantium, totam rem ap
006f  65 72 69 61 6d 2c 20 65 61 71 75 65 20 69 70 73 61 20 71 75 61 65 20 61 62 20 69 6c 6c 6f 20 69 6e 76 65 6e 74  eriam, eaque ipsa quae ab illo invent
0094  6f 72 65 20 76 65 72 69 74 61 74 69 73 20 65 74 20 71 75 61 73 69 20 61 72 63 68 69 74 65 63 74 6f 20 62 65 61  ore veritatis et quasi architecto bea
00b9  74 61 65 20 76 69 74 61 65 20 64 69 63 74 61 20 73 75 6e 74 20 65 78 70 6c 69 63 61 62 6f 2e 20 4e 65 6d 6f 20  tae vitae dicta sunt explicabo. Nemo 
00de  65 6e 69 6d 20 69 70 73 61 6d 20 76 6f 6c 75 70 74 61 74 65 6d 20 71 75 69 61 20 76 6f 6c 75 70 74 61 73 20 73  enim ipsam voluptatem quia voluptas s
0103  69 74 20 61 73 70 65 72 6e 61 74 75 72 20 61 75 74 20 6f 64 69 74 20 61 75 74 20 66 75 67 69 74 2c 20 73 65 64  it aspernatur aut odit aut fugit, sed
0128  20 71 75 69 61 20 63 6f 6e 73 65 71 75 75 6e 74 75 72 20 6d 61 67 6e 69 20 64 6f 6c 6f 72 65 73 20 65 6f 73 20   quia consequuntur magni dolores eos 
014d  71 75 69 20 72 61 74 69 6f 6e 65 20 76 6f 6c 75 70 74 61 74 65 6d 20 73 65 71 75 69 20 6e 65 73 63 69 75 6e 74  qui ratione voluptatem sequi nesciunt
0172  2e 20 4e 65 71 75 65 20 70 6f 72 72 6f 20 71 75 69 73 71 75 61 6d 20 65 73 74 2c 20 71 75 69 20 64 6f 6c 6f 72  . Neque porro quisquam est, qui dolor
0197  65 6d 20 69 70 73 75 6d 20 71 75 69 61 20 64 6f 6c 6f 72 20 73 69 74 20 61 6d 65 74 2c 20 63 6f 6e 73 65 63 74  em ipsum quia dolor sit amet, consect
01bc  65 74 75 72 2c 20 61 64 69 70 69 73 63 69 20 76 65 6c 69 74 2c 20 73 65 64 20 71 75 69 61 20 6e 6f 6e 20 6e 75  etur, adipisci velit, sed quia non nu
01e1  6d 71 75 61 6d 20 65 69 75 73 20 6d 6f 64 69 20 74 65 6d 70 6f 72 61 20 69 6e 63 69 64 75 6e 74 20 75 74 20 6c  mquam eius modi tempora incidunt ut l
0206  61 62 6f 72 65 20 65 74 20 64 6f 6c 6f 72 65 20 6d 61 67 6e 61 6d 20 61 6c 69 71 75 61 6d 20 71 75 61 65 72 61  abore et dolore magnam aliquam quaera
022b  74 20 76 6f 6c 75 70 74 61 74 65 6d 2e 20 55 74 20 65 6e 69 6d 20 61 64 20 6d 69 6e 69 6d 61 20 76 65 6e 69 61  t voluptatem. Ut enim ad minima venia
0250  6d 2c 20 71 75 69 73 20 6e 6f 73 74 72 75 6d 20 65 78 65 72 63 69 74 61 74 69 6f 6e 65 6d 20 75 6c 6c 61 6d 20  m, quis nostrum exercitationem ullam 
0275  63 6f 72 70 6f 72 69 73 20 73 75 73 63 69 70 69 74 20 6c 61 62 6f 72 69 6f 73 61 6d 2c 20 6e 69 73 69 20 75 74  corporis suscipit laboriosam, nisi ut
029a  20 61 6c 69 71 75 69 64 20 65 78 20 65 61 20 63 6f 6d 6d 6f 64 69 20 63 6f 6e 73 65 71 75 61 74 75 72 3f 20 51   aliquid ex ea commodi consequatur? Q
02bf  75 69 73 20 61 75 74 65 6d 20 76 65 6c 20 65 75 6d 20 69 75 72 65 20 72 65 70 72 65 68 65 6e 64 65 72 69 74 20  uis autem vel eum iure reprehenderit 
02e4  71 75 69 20 69 6e 20 65 61 20 76 6f 6c 75 70 74 61 74 65 20 76 65 6c 69 74 20 65 73 73 65 20 71 75 61 6d 20 6e  qui in ea voluptate velit esse quam n
0309  69 68 69 6c 20 6d 6f 6c 65 73 74 69 61 65 20 63 6f 6e 73 65 71 75 61 74 75 72 2c 20 76 65 6c 20 69 6c 6c 75 6d  ihil molestiae consequatur, vel illum
032e  20 71 75 69 20 64 6f 6c 6f 72 65 6d 20 65 75 6d 20 66 75 67 69 61 74 20 71 75 6f 20 76 6f 6c 75 70 74 61 73 20   qui dolorem eum fugiat quo voluptas 
0353  6e 75 6c 6c 61 20 70 61 72 69 61 74 75 72 3f 22 0a 0a 66 6c 61 67 7b 62 66 65 31 32 61 61 64 64 31 33 39 64 65  nulla pariatur?"..flag{bfe12aadd139de
0378  66 34 64 34 37 66 35 66 35 31 61 35 33 39 32 34 39 64 7d 0a 0a 22 53 65 64 20 75 74 20 70 65 72 73 70 69 63 69  f4d47f5f51a539249d}.."Sed ut perspici
039d  61 74 69 73 20 75 6e 64 65 20 6f 6d 6e 69 73 20 69 73 74 65 20 6e 61 74 75 73 20 65 72 72 6f 72 20 73 69 74 20  atis unde omnis iste natus error sit 
03c2  76 6f 6c 75 70 74 61 74 65 6d 20 61 63 63 75 73 61 6e 74 69 75 6d 20 64 6f 6c 6f 72 65 6d 71 75 65 20 6c 61 75  voluptatem accusantium doloremque lau
03e7  64 61 6e 74 69 75 6d 2c 20 74 6f 74 61 6d 20 72 65 6d 20 61 70 65 72 69 61                                      dantium, totam rem aperia 
```

# Flag flag{bfe12aadd139def4d47f5f51a539249d}