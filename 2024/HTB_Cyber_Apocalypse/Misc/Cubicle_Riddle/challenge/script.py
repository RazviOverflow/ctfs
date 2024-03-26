#RazviOverflow
from random import randint
import types
from dis import dis
from pwn import *

class Riddler:

	max_int: int
	min_int: int
	co_code_start: bytes
	co_code_end: bytes
	num_list: list[int]

	def __init__(self) -> None:
		self.max_int = 1000
		self.min_int = -1000
		self.co_code_start = b"d\x01}\x01d\x02}\x02"
		self.co_code_end = b"|\x01|\x02f\x02S\x00"
		self.num_list = [randint(self.min_int, self.max_int) for _ in range(10)]

	def answer(self):
		return (min(self.num_list), max(self.num_list))

	def check_answer(self, answer: bytes) -> bool:
		_answer_func: types.FunctionType = types.FunctionType(
			self._construct_answer(answer), {}
		)
		print(self.num_list)
		print(min(self.num_list))
		print(_answer_func(self.num_list) == (min(self.num_list), max(self.num_list)))
		return _answer_func(self.num_list) == (min(self.num_list), max(self.num_list))

	def _construct_answer(self, answer):
		co_code: bytearray = bytearray(self.co_code_start)
		#co_code = bytearray(answer)
		co_code.extend(answer)
		co_code.extend(self.co_code_end)

		code_obj = types.CodeType(
			1,
			0,
			0,
			4,
			3,
			3,
			bytes(co_code),
			(None, self.max_int, self.min_int),
			(),
			("num_list", "min", "max", "num"),
			__file__,
			"_answer_func",
			"_answer_func",
			1,
			b"",
			b"",
			(),
			(),
		)
		return code_obj

code = """
def f(list, p1, p2):
	return(p1, p2)
"""

def r(num_list, min, max, num):
	#del num
	#del max
	#del min

	# obtain max
	for num in num_list:
		if num > max:
			max = num
		if num < min:
			min = num
	#max = num
	return (min, max)

def f(num_list, min, max, num):
	#print(num_list)
	#num = super().min(num_list)
	#num_list = [0,0]
	#num=10
	#del max
	num = max # min
	#yet_another_var = num
	for number in num_list:
		#max = number
		if number > num:
			num = number

	max = num

	num = min # max
	#yet_another_var = num
	for number in num_list:
		#max = number
		if number < num:
			num = number

	min = num
	


	return (min,  max)
		#if number < max:
			#max = number
	##del max
	#num_list[0] = max
	#num_list[1] = min
	#num_list.append(min)
	min = 1337
	return (max,min)
	#return ((num_list), (num_list))
	#return (num_list, min, max, num)
	#return (super().min(num_list), super().max(num_list))

def main():
	rid = Riddler()
	#compile(rid.answer(), "<string>", "exec") #https://docs.python.org/2/library/functions.html#compile
	
	#co_code_start = b"d\x01}\x01d\x02}\x02"
	#co_code_end = b"|\x01|\x02f\x02S\x00"

	bytes_list = [str(byte) for byte in r.__code__.co_code]
	#dis(co_code_start + f.__code__.co_code + co_code_end)
	dis(r.__code__.co_code)
	print(",".join(bytes_list).encode())
	#sys.exit()

	#c = compile(code, "file", "exec")
	#compiled_code = c.co_code
	#dis(compiled_code)
	#print(compiled_code)
	#int_values = [str(byte) for byte in compiled_code]
	#print(",".join(int_values))
	riddle_answer = rid.check_answer(r.__code__.co_code)
	print(riddle_answer)
	#dis(riddle_answer)
	#print(riddle_answer.co_code)
 	

	context.log_level = "debug"
	p = remote("94.237.58.224", 47625)
	p.recv()
	p.sendline(b"1")
	p.recv()
	p.recv()
	sleep(0.2)
	p.send((",".join(bytes_list)).encode())
	p.interactive()

	#Flag = HTB{r1ddle_m3_th1s_r1ddle_m3_th4t}

	'''
	c = compile(code, "<string>", "exec")
	compiled_code = c.co_code[2:]
	print(compiled_code)
	int_values = [byte for byte in compiled_code]
	print(int_values)
	print(dis(compiled_code))
	#[151, 0, 100, 0, 132, 0, 90, 0, 100, 1, 83, 0]
	#[0, 83, 1, 100, 0, 90, 0, 132, 0, 100, 0, 151]
	print(rid.print_codetype(compiled_code).co_code)
	print(dis(rid.print_codetype(compiled_code)))
	'''


if __name__ == "__main__":
	main()