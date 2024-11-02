Our team of security analysts recently worked through a peculiar Lumma sample.
The dentists helping us advised we floss at least twice a day to help out.
He also gave us this weird file. Maybe you can help us out.

# Solution
This is one simple reversing challenge. It generates the flag but keeps it in memory. Can be easily solved by debugging it. I used Cutter for this one. Just place a breakpoint anywhere around `0x08049045`

```
0x08049023      8d350ea00408           lea     esi, [str.SQQUR_V] ; 0x804a00e ; load effective address
0x08049029      8d3d2ea00408           lea     edi, [str.1ecff8bece9486287dc76521a84bb7c0] ; 0x804a02e ; load effective address
0x0804902f      8d1555a00408           lea     edx, [0x804a055] ; load effective address
0x08049035      b920000000             mov     ecx, 0x20 ; 32 ; moves data from src to dst
0x0804903a      8a06                   mov     al, byte [esi] ; moves data from src to dst
0x0804903c      3207                   xor     al, byte [edi] ; logical exclusive or
0x0804903e      8802                   mov     byte [edx], al ; moves data from src to dst
0x08049040      46                     inc     esi ; increment by 1
0x08049041      47                     inc     edi ; increment by 1
0x08049042      42                     inc     edx ; increment by 1
0x08049043      e2f5                   loop    0x804903a ; decrement count; jump short if ecx!=0
0x08049045      c6027d                 mov     byte [edx], 0x7d ; '}' ; 125 ; moves data from src to dst
0x08049048      42                     inc     edx ; increment by 1
0x08049049      c60200                 mov     byte [edx], 0 ; moves data from src to dst
0x0804904c      8d1550a00408           lea     edx, [section..bss] ; 0x804a050 ; load effective address
```

Once the execution is stopped, `edx` will be pointing somewhere close to `0x0804a075`. Inspect that memory region (hexdump) and you'll see the flag right there, waiting for you!

```
flag{b4234f4bba4685dc84d6ee9a48e9c106}
```

# Flag flag{b4234f4bba4685dc84d6ee9a48e9c106}
