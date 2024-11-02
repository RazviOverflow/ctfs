TENNNNNN-HUT!

Welcome to the Go Dojo, gophers in training!

Go malware is on the rise. So we need you to sharpen up those Go reverse engineering skills. We've written three simple CrackMe programs in Go to turn you into Go-binary reverse engineering ninjas!

First up is the easiest of the three. Go get em!

# Solution

I reversed the binary using Ghidra 11.2 (https://github.com/NationalSecurityAgency/ghidra/releases/tag/Ghidra_11.2_build)

The binary is fairly simple. At instruction `0x00483638` it writes into the buffer certain values. These values are later XOR'ed with `0x56` (at address `0x0048369b`).

[script.py](./scriptpy) does just that.

# Flag flag{bb59566e21f55e5680d589f3dbbec0f8}