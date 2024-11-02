Not bad gophers, but that one was the easiest of the three! How will you do against something a little more involved? I wouldn't expect to get any help from debugging symbols on this one...

# Solution
I reversed the binary using Ghidra 11.2 (https://github.com/NationalSecurityAgency/ghidra/releases/tag/Ghidra_11.2_build) and GolangAnalyzerExtension (https://github.com/mooncat-greenpy/Ghidra_GolangAnalyzerExtension/releases/tag/1.2.4).

To be honest, reversing this binary was harder than expected (and than it should have been) because Ghidra+plugins didn't seem to work well at all. I ended up doing static analysis with Ghidra + plugins and r2 for dynamic analysis (debugging).

It all comes down to the following:

(decompiled with Ghidra+plugins)

At a certain point of the execution it traverses the flag and XORes it with `0x6d` (aroun address `0048831a`)
```c
for (iVar2 = 0; iVar2 < (int)local_220; iVar2 = iVar2 + 1) {
    [Var9.array[iVar2] = *(byte *)((int)local_10 + iVar2) ^ 0x6d;
}
```

The thing is, where does the `local_10` variable it XORes come from? Tracing it back I reached address `0x0048810f`.

Disassembly taken from radare `r2 -d -AA GoCrackMe2`
```
0x0048810f b    488d8c24d0..   lea rcx, [var_1d0h]
```
Inspecting that `[var_1d0h]` address reveals the following structure:

```
[0x0048810f]> pxq @ rsp+0x1d0
0xc00010ae90  0x000000c00010ad06  0x000000000000000a   ................
0xc00010aea0  0x000000000000000a  0x0000000000000002   ................
0xc00010aeb0  0x000000c00010ad01  0x0000000000000005   ................
0xc00010aec0  0x0000000000000005  0x0000000000000000   ................
0xc00010aed0  0x000000c00010acf9  0x0000000000000008   ................
0xc00010aee0  0x0000000000000008  0x0000000000000004   ................
0xc00010aef0  0x000000c00010acf2  0x0000000000000007   ................
0xc00010af00  0x0000000000000007  0x0000000000000001   ................
0xc00010af10  0x000000c00010acea  0x0000000000000008   ................
0xc00010af20  0x0000000000000008  0x0000000000000003   ................

```
After several debugging sessions, I understood the structure. The flag is formed like using the following "algorithm": 

Let's use this addresses as example:
```
0xc00010ae90  0x000000c00010ad06  0x000000000000000a   ................
0xc00010aea0  0x000000000000000a  0x0000000000000002   ................
```

The first quadword is the one where the bytes will be taken from (it is dereferenced). (`0x000000c00010ad06`)
The next two quadword are duplicated, and they represent how many bytes will be actually read from the address before. In this case, `0xa` (10) bytes will be read from `0x000000c00010ad06`.
The last and forth quadword represents the position of such bytes in the final flag array. In this case, it is the `0x2` (2nd) position.

With this in mind, the flag can be built using the following addresses:

0. 5 bytes from `0x000000c00010ad01`
1. 7 bytes from `0x000000c00010acf2`
2. 10 bytes from `0x000000c00010ad06`
3. 8 bytes from `0x000000c00010acea`
4. 8 bytes from `0x000000c00010acf9`

If you sum the number of bytes we have, it results in 38 bytes. 38 - len("flag{}") = 32, which makes sense because in this CTF all flags (unless stated otherwise) are 32 bytes long in MD5 format.

The next step is dereferencing each of the addresses from above and taking the number of bytes required to build the flag. **REMEMBER ENDIANNESS**.

And then remember to XOR each byte with `0x6d`.

The script [script.py](./script.py) is my solution to the challenge.

# Flag flag{f75087857fc4d23241dc09666f390751}