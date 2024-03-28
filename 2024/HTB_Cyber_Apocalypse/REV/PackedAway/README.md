# PackedAway
To escape the arena's latest trap, you'll need to get into a secure vault - and quick! There's a password prompt waiting for you in front of the door however - can you unpack the password quick and get to safety?

# Solution
The binary was packed with UPX. To unpack it, i had to donwload the latext UPX [version](https://github.com/upx/upx/releases/tag/v3.95).

Then using strings the flag can be found:
```
$ rabin2 -zzz unpacked_binary | grep htb -i 
052 0x00002019 0x00002019  54  55 (.rodata) ascii HTB{unp4ck3dr3t_HH0f_th3_pH0f_th3_pH0f_th3_pH0f_th3_pH
053 0x00002050 0x00002050   4   5 (.rodata) ascii HTB{
055 0x00002060 0x00002060  40  41 (.rodata) ascii HTB{unp4ck3d_th3_s3cr3t_0f_th3_p455w0rd}
```
