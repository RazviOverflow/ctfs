#RazviOverflow
from pwn import *
'''
You are a competitor in The Fray, running the GAUNTLET
I will give you one of three scenarios: GORGE, PHREAK or FIRE
You have to tell me if I need to STOP, DROP or ROLL
If I tell you there's a GORGE, you send back STOP
If I tell you there's a PHREAK, you send back DROP
If I tell you there's a FIRE, you send back ROLL
Sometimes, I will send back more than one! Like this: 
GORGE, FIRE, PHREAK
In this case, you need to send back STOP-ROLL-DROP!
'''
dictionary = {
	"GORGE":"STOP",
	"PHREAK":"DROP",
	"FIRE":"ROLL"
}

def transform_request(request) -> string:
	list_of_requests = request.split(', ')
	answer = []
	for request in list_of_requests:
		answer.append(dictionary[request])
	final_answer = '-'.join(answer)
	return final_answer

context.log_level = 'debug'

p = remote("83.136.254.167", 56282)
p.recv()
p.sendline(b"y")
print(p.recvuntil(b"go!\n"))
while True:
	request = p.recv()
	answer = transform_request(request.split(b"\n")[0].decode('utf-8'))
	p.sendline(answer)
	sleep(0.2)

#Flag: HTB{1_wiLl_sT0p_dR0p_4nD_r0Ll_mY_w4Y_oUt!}