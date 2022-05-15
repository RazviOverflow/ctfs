
checksec --file=sp_retribution 
RELRO           STACK CANARY      NX            PIE             RPATH      RUNPATH      Symbols         FORTIFY Fortified       Fortifiable     FILE
Full RELRO      No canary found   NX enabled    PIE enabled     No RPATH   RW-RUNPATH   77) Symbols       No    0               2               sp_retribution




Explot idea: when selecting option number 2 (missile_launcher) and providing just one character to the new coordinate (for example, 0xa), when it gets printed it will print whatever the address cell contains as a string. Since the write is performed with `read`, there will be no 0x00 at the end. The memory cell where the byte is being written contains an address to `libc.__csu_init`, so being able to read its upper bytes allows us to recover its address, since the lower byte does not change.



HTB{d0_n0t_3v3R_pr355_th3_butt0n}