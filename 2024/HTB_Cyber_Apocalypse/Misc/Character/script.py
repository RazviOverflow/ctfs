from pwn import *

p = remote("94.237.55.185", 55529)
#context.log_level = 'debug'
flag = []

print(p.recv())
for i in range(1000):
	
	p.sendline(str(i))
	p.recvuntil(b':')
	flag.append(p.recv().split(b'\n')[0].decode('utf-8').replace(" ", ""))
	print(f"Flag so far:")
	print("".join(flag))
	sleep(0.5)

#H T B { t H 1 5 _ 1 s _ 4 _ r 3 a L l y _ l 0 n G _  f L 4 g _ i _ h 0 p 3 _ f 0 r _ y 0 U r _ s 4 k 3 _ t H 4 t _ y 0 U _ s C r 1 p T E d _ t H 1 s _ o R _ e l s 3 _ i T _ t 0 o K _ q U 1 t 3 _ l 0	