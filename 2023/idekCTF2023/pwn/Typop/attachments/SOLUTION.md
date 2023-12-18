# Idea / vuln
The binary has all the protections enabled:
```
$ checksec --file=chall
RELRO           STACK CANARY      NX            PIE             RPATH      RUNPATH      Symbols         FORTIFY Fortified       Fortifiable     FILE
Full RELRO      Canary found      NX enabled    PIE enabled     No RPATH   No RUNPATH   76 Symbols        No    0               3               chall
```
The vulnerable function is `getFeedback` and the ret2win function is `win`. Thier addresses look like this (upper bytes are randomized with every execution):
```
0x55fdf7c28348    6 200          sym.getFeedback
0x55fdf7c28249    5 255          sym.win
```

`getFeedback` is vulnerable in two different places. 1st `read` call reads up to 0x1e bytes into rbp-0x12. The final `read` call reads up to 0x5a bytes into rbp-0x12. Two classic buffer overflows. Now, in order to be able to jump to `win` from `getFeedback`, we need to leak the canary and then leak the address of `win`, which will be different with every execution. 

Here comes the trick:
In the `getFeedback` function, the data is stored as follows:
```
buf @ rbp-0x12
canary @ rbp-0x8
```


## Completar más detalladamente ##
we can leak canary with the printf
We can overwrite just the lower 3 bytes of the reutnr address and jump to win