#RazviOverflow

import angr
import claripy

proj = angr.Project("./angrmanagement", main_opts={'custom_base_addr': 0})

flag = claripy.BVS('flag', 0x20*8)

AVOID = (0x23B2, 0x00002347)

print("IM PRINTING THIS MA MAN:", hex(proj.entry))

state = proj.factory.blank_state(addr=(0x0000206f), stdin=flag) 

for i in range(0x20):
	state.solver.And(flag.get_byte(i) <= '~', flag.get_byte(i) >= ' ')

sm = proj.factory.simulation_manager(state)

sm.use_technique(angr.exploration_techniques.Explorer(find=0x2359, avoid=AVOID))

sm.run()
print("[*] PRINTING SM:", sm)

if sm.found:
	print("[*] PRINTING THE FOUND:", str(sm.found))
	print("[+] FLAG FOUND: " + str(flag))
	print(sm.found[0]) # .lstrip('+0').rstrip('B')
	print("[+] FLAG DUMPING: " + str(sm.found[0].posix.dumps(0)))
	with open("file", "wb") as file:
			file.write(sm.found[0].posix.dumps(0))
	print("[+] FLAG DUMPING ALTERNATIVE: " + str(sm.one_found.posix.dumps(0)))
	for solution in sm.found:
		print("[+] Iterating solutions:", solution.solver.eval(flag))
		print("[+] Iterating solutions:", solution.solver.eval(flag, cast_to=bytes))
		print("[+] Iterating solutions:", hex(solution.solver.eval(flag, cast_to=int)))
		print("[+] FLAG DUMPING: " + str(solution.posix.dumps(0)))
