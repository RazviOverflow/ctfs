#RazviOverflow

from z3 import *

local_88 = BitVecVal(ord('H'),8)
local_88_1_1_ = BitVecVal(ord('T'),8)
local_88_2_1_ = BitVecVal(ord('B'),8)
local_88_3_1_ = BitVecVal(ord('{'),8)
local_80 = BitVec('local_80', 8)
local_78 = BitVec('local_78', 8)
local_70 = BitVec('local_70', 8)
local_68 = BitVec('local_68', 8)
local_60 = BitVec('local_60', 8)
local_58 = BitVec('local_58', 8)
local_50 = BitVec('local_50', 8)
local_78_5_1_ = BitVec('local_78_5_1_', 8)
local_68_4_1_ = BitVec('local_68_4_1_', 8)
local_68_5_1_ = BitVec('local_68_5_1_', 8)
local_70_2_1_ = BitVec('local_70_2_1_', 8)
local_58_7_1_ = BitVec('local_58_7_1_', 8)
local_88_7_1_ = BitVec('local_88_7_1_', 8)
local_88_4_1_ = BitVec('local_88_4_1_', 8)
local_68_2_1_ = BitVec('local_68_2_1_', 8)
local_70_4_1_ = BitVec('local_70_4_1_', 8)
local_70_6_1_ = BitVec('local_70_6_1_', 8)
local_50_3_1_ = BitVec('local_50_3_1_', 8)
local_58_2_1_ = BitVec('local_58_2_1_', 8)
local_60_4_1_ = BitVec('local_60_4_1_', 8)
local_70_3_1_ = BitVec('local_70_3_1_', 8)
local_78_1_1_ = BitVec('local_78_1_1_', 8)
local_80_6_1_ = BitVec('local_80_6_1_', 8)
local_78_4_1_ = BitVec('local_78_4_1_', 8)
local_50_2_1_ = BitVec('local_50_2_1_', 8)
local_88_6_1_ = BitVec('local_88_6_1_', 8)
local_68_7_1_ = BitVec('local_68_7_1_', 8)
local_78_7_1_ = BitVec('local_78_7_1_', 8)
local_58_1_1_ = BitVec('local_58_1_1_', 8)

local_70_5_1_ = BitVec('local_70_5_1_', 8)
local_68_6_1_ = BitVec('local_68_6_1_', 8)
local_78_6_1_ = BitVec('local_78_6_1_', 8)
local_80_7_1_ = BitVec('local_80_7_1_', 8)
local_58_5_1_ = BitVec('local_58_5_1_', 8)
local_60_5_1_ = BitVec('local_60_5_1_', 8)
local_58_6_1_ = BitVec('local_58_6_1_', 8)
local_80_1_1_ = BitVec('local_80_1_1_', 8)
local_60_7_1_ = BitVec('local_60_7_1_', 8)
local_78_3_1_ = BitVec('local_78_3_1_', 8)
local_50_1_1_ = BitVec('local_50_1_1_', 8)
local_78_2_1_ = BitVec('local_78_2_1_', 8)
local_50_4_1_ = BitVec('local_50_4_1_', 8)

local_80_2_1_ = BitVec('local_80_2_1_', 8)
local_68_3_1_ = BitVec('local_68_3_1_', 8)
local_70_7_1_ = BitVec('local_70_7_1_', 8)
local_70_1_1_ = BitVec('local_70_1_1_', 8)
local_60_6_1_ = BitVec('local_60_6_1_', 8)
local_58_4_1_ = BitVec('local_58_4_1_', 8)
local_68_1_1_ = BitVec('local_68_1_1_', 8)
local_80_5_1_ = BitVec('local_80_5_1_', 8)
local_60_2_1_ = BitVec('local_60_2_1_', 8)
local_58_3_1_ = BitVec('local_58_3_1_', 8)
local_60_1_1_ = BitVec('local_60_1_1_', 8)
local_80_4_1_ = BitVec('local_80_4_1_', 8)
local_80_3_1_ = BitVec('local_80_3_1_', 8)
local_88_5_1_ = BitVec('local_88_5_1_', 8)
local_60_3_1_ = BitVec('local_60_3_1_', 8)

order = ['local_50',
		'local_50_1_1_',
		'local_50_2_1_',
		'local_50_3_1_',
		'local_50_4_1_',
		'local_58',
		'local_58_1_1_',
		'local_58_2_1_',
		'local_58_3_1_',
		'local_58_4_1_',
		'local_58_5_1_',
		'local_58_6_1_',
		'local_58_7_1_',
		'local_60',
		'local_60_1_1_',
		'local_60_2_1_',
		'local_60_3_1_',
		'local_60_4_1_',
		'local_60_5_1_',
		'local_60_6_1_',
		'local_60_7_1_',
		'local_68',
		'local_68_1_1_',
		'local_68_2_1_',
		'local_68_3_1_',
		'local_68_4_1_',
		'local_68_5_1_',
		'local_68_6_1_',
		'local_68_7_1_',
		'local_70',
		'local_70_1_1_',
		'local_70_2_1_',
		'local_70_3_1_',
		'local_70_4_1_',
		'local_70_5_1_',
		'local_70_6_1_',
		'local_70_7_1_',
		'local_78',
		'local_78_1_1_',
		'local_78_2_1_',
		'local_78_3_1_',
		'local_78_4_1_',
		'local_78_5_1_',
		'local_78_6_1_',
		'local_78_7_1_',
		'local_80',
		'local_80_1_1_',
		'local_80_2_1_',
		'local_80_3_1_',
		'local_80_4_1_',
		'local_80_5_1_',
		'local_80_6_1_',
		'local_80_7_1_',
		# 'local_88', fixed value
		# 'local_88_1_1_', fixed value
		# 'local_88_2_1_', fixed value
		# 'local_88_3_1_', fixed value
		'local_88_4_1_',
		'local_88_5_1_',
		'local_88_6_1_',
		'local_88_7_1_']

s = Solver()
s.add(local_78_5_1_ * local_58 == 0x14)
s.add((((local_68) - (local_68_4_1_)) == 0xfa))
s.add(((local_68_5_1_) - (local_70_2_1_)) == 0xd6)
s.add((((local_78) - (local_58)) == ord('\b')))
s.add(((local_58_7_1_) - (local_80)) == 0x100-0x2b)
s.add(((local_70_2_1_) * (local_88_7_1_)) == 0x100-0x13)
s.add((((local_88_4_1_) * (local_70)) == 0x100-0x38))
s.add(((local_68_2_1_) ^ local_70_4_1_) == 0x55)
s.add(((local_70_6_1_) - (local_58_7_1_)) == 0x34)
s.add((((local_50_3_1_) + (local_58_2_1_)) == 0x100-0x71))
s.add((((local_60_4_1_) + (local_70_3_1_)) == 0xd6))
s.add((local_78_1_1_ ^ local_80_6_1_) == 0x31)
s.add((((local_50) * (local_78_4_1_)) == 0x100-0x54))
s.add(((local_50_2_1_) - (local_70_2_1_)) == 0x100-0x3e)
s.add((local_70_2_1_ ^ local_88_6_1_) == 0x2f)
s.add(((local_80_6_1_ ^ local_68_7_1_) == 0x5a))
s.add(((local_60_4_1_ ^ local_68_7_1_) == 0x40))
s.add((local_60) == (local_70_2_1_))
s.add((((local_78_7_1_) + (local_58_1_1_)) == 0x100-0x68))
s.add((((local_78_7_1_) * (local_50_3_1_)) == ord('h')))
s.add(((local_88_1_1_) - (local_70_4_1_)) == 0x100-0x25)
s.add((((local_70) - (local_70_5_1_)) == 0xd2))
s.add(((local_68_6_1_) - (local_70)) == ord('.'))
s.add((local_68 ^ local_78_6_1_) == 0x1a)
s.add((((local_60_4_1_) * (local_88_4_1_)) == 0x100-0x60))
s.add(((local_68_6_1_) * (local_70_3_1_)) == ord('^'))
s.add((local_80_7_1_) - (local_60) == 0x100-0x38)
s.add(((local_58_1_1_ ^ local_58_5_1_) == 0x56))
s.add(((local_70_2_1_ ^ local_60_5_1_) == 0x2b))
s.add((local_58_6_1_ ^ local_80_1_1_) == 0x19)
s.add((((local_70_4_1_) - (local_60_7_1_)) == 0x1a))
s.add(((local_58_2_1_) + (local_78_3_1_)) == 0x100-0x5f)
s.add(((local_68_5_1_) + (local_50_1_1_)) == ord('V'))
s.add(((local_70_5_1_ ^ local_78_2_1_) == 0x38))
s.add(((local_60_4_1_ ^ local_50_4_1_) == 9))
s.add(((local_80_7_1_) * (local_68_6_1_)) == ord('y'))
s.add(((local_68_5_1_ ^ local_70_6_1_) == 0x5d))
s.add((((local_88_2_1_) * (local_68)) == ord('\\')))
s.add(((local_80_2_1_) * (local_78_2_1_)) == ord('9'))
s.add( ((local_70_5_1_) == (local_78_5_1_)))
s.add(((local_68_3_1_) * (local_78_5_1_)) == ord('/'))
s.add(((local_80) * (local_68_5_1_)) == 0x100-0x55)
s.add((((local_68_7_1_) + (local_70_2_1_)) == 0x100-0x6d))
s.add((local_70_2_1_ ^ local_68_2_1_) == 0x73)
s.add((local_78_4_1_ ^ local_70_7_1_) == 0x40)
s.add((((local_70_1_1_) + (local_78)) == 0x100-0x57))
s.add(((local_68_7_1_ ^ local_50_3_1_) == 0x15))
s.add(((local_88) + (local_50_3_1_)) == ord('i'))
s.add((((local_68_2_1_) + (local_60_6_1_)) == 0x100-0x5b))
s.add((local_70_6_1_ ^ local_58_4_1_) == 0x37)
s.add(((local_88) * (local_70_4_1_)) == ord('\b'))
s.add((((local_68_2_1_) - (local_50)) == 0x100-0x3b))
s.add((((local_78_2_1_) + (local_50_4_1_)) == 0x100-0x1c))
s.add((local_68_3_1_ ^ local_60) == 0x6e)
s.add((((local_50) * (local_78)) == 0x100-0x54))
s.add((((local_58_6_1_) - (local_60_7_1_)) == ord('\r')))
s.add(((local_70_6_1_) + (local_58_7_1_)) == 0x100-100)
s.add((((local_88_6_1_) + (local_68_1_1_)) == 0x100-0x2c))
s.add(((local_88_7_1_) * (local_70_5_1_)) == 0x100-0x13)
s.add((local_50 ^ local_70_5_1_) == 0x38)
s.add((((local_88_1_1_) * (local_68_5_1_)) == ord('d')))
s.add((local_50 ^ local_50_2_1_) == 0x46)
s.add(((local_88_2_1_) * (local_78_3_1_)) == ord('&'))
s.add(((local_70_2_1_ ^ local_78_6_1_) == 0x2b))
s.add((((local_88_1_1_) + (local_88_7_1_)) == 0x100-0x79))
s.add((local_70_3_1_ ^ local_88) == 0x2a)
s.add((((local_78_5_1_) - (local_88_1_1_)) == ord('\v')))
s.add((((local_70_3_1_) + (local_58_6_1_)) == 0x100-0x32))
s.add((local_78_1_1_ ^ local_80_5_1_) == 0x3b)
s.add((((local_78_3_1_) - (local_50_2_1_)) == 0x12))
s.add((local_78_1_1_) == (local_80_2_1_))
s.add(((local_80_6_1_) - (local_50_2_1_)) == ord('M'))
s.add((((local_60_2_1_) * (local_58_4_1_)) == ord('N')))
s.add( ((local_58_2_1_) == (local_68)))
s.add((local_60_7_1_ ^ local_58_3_1_) == 0x38)
s.add((((local_68_6_1_) + (local_70_1_1_)) == 0x100-0x6c))
s.add((((local_60_1_1_) + (local_58_4_1_)) == 0x100-0x31))
s.add((local_60_4_1_) == (local_78_4_1_))
s.add( (((local_80_4_1_) + (local_70_1_1_)) == ord('f')))
s.add(((local_50_4_1_) + (local_68_4_1_)) == 0x100-0xf)
s.add(((local_60_1_1_) - (local_78_5_1_)) == 0x11)
s.add((((local_68_4_1_) - (local_58_1_1_)) == ord('D')))
s.add((((local_80_1_1_) - (local_68_3_1_)) == ord('D')))
s.add((local_58_5_1_ ^ local_58_3_1_) == 1)
s.add( ((local_68_2_1_ ^ local_50_1_1_) == 0xd))
s.add(((local_80_3_1_) - (local_70_4_1_)) == 0x100-0x15)
s.add((((local_78_7_1_) + (local_70)) == 0x100-0x67))
s.add((((local_70) + (local_80_5_1_)) == 0x100-0x6b))
s.add(((local_80_4_1_) - (local_88)) == 0x100-0x17)
s.add(((local_68_2_1_) + (local_70_7_1_)) == ord('`'))
s.add((local_88_5_1_) + (local_58_5_1_) == 0x100-0x6a)
s.add((local_58_1_1_) * (local_60_2_1_) == ord('`'))
s.add(((local_58) * (local_78_5_1_)) == 0x14)
s.add(((local_70_3_1_) - (local_58_4_1_)) == 0x03)
s.add(((local_50_1_1_) + (local_78_4_1_)) == 0x100-0x6b)
s.add((((local_80_2_1_) * (local_58_5_1_)) == 0x100-0x26))
s.add(((local_88_1_1_) + (local_60_1_1_)) == 0x100-0x3c)
s.add(((local_60_7_1_) - (local_88_1_1_)) == ord('\v'))
s.add(((local_60_3_1_) == (local_78_3_1_)))
s.add(((local_68_7_1_) + (local_60_7_1_)) == 0x100-0x6d)
s.add(((local_80_4_1_) * (local_50_2_1_)) == ord('Q'))
s.add(((local_80) * (local_70_2_1_)) == ord('A'))
s.add(((local_60_6_1_) - (local_70_7_1_)) == ord('E'))
s.add(((local_88_7_1_) + (local_68_5_1_)) == ord('h'))
s.add((((local_68_4_1_) + (local_88_4_1_)) == 0x100-0x44))
s.add(((local_70_7_1_) + (local_68)) == 0x100-0x5e)
s.add(((local_70_1_1_) + (local_88_5_1_)) == ord('e'))
s.add(((local_60_3_1_) * (local_70_5_1_)) == 0x100-0x13)
s.add((local_80_5_1_ ^ local_60_5_1_) == 0x10)
s.add(((local_58) - (local_80_4_1_)) == ord(';'))
s.add(((local_78_7_1_) - (local_80)) == ord('\t'))
s.add(((local_88_7_1_ ^ local_60_2_1_) == 0x41))
s.add(((local_88_5_1_) - (local_60_3_1_)) == 0x100-3)
s.add((local_50_4_1_ ^ local_78_2_1_) == 0x1a)
s.add(((local_88_1_1_ ^ local_88_3_1_) == 0x2f))
s.add(((local_78_1_1_) - (local_68_7_1_)) == ord('+'))
s.add(((local_80) + (local_78_4_1_)) == 0x100-0x2d)
s.add((((local_80_3_1_) * (local_58_5_1_)) == 0x100-0x28))
s.add((((local_70_3_1_) + (local_88_6_1_)) == 0xd2))
s.add(((local_88_5_1_) + (local_88_3_1_)) == 0x100-0x55)
s.add((((local_68_3_1_) - (local_60_7_1_)) == 0xd2))
s.add(((local_78 ^ local_68_1_1_) == 0x10))

print(s.check())
if s.check() == sat:
	m = s.model()
	flag = {}
	for key in m:
		flag[str(key)] = chr(int(str(m[key])))
	print("HTB{", end="")
	for i in reversed(order):
		print(flag[i], end="")

# https://gchq.github.io/CyberChef/#recipe=Swap_endianness('Raw',8,false)&input=M3AwSHtCVEgnbmQxZF91X2h0X3QzZ190NGhfeWJfNTE0XzV0MSxkbl95dHQzcnBfNGxmX2duMGx9ISEhZw
# Flag: HTB{H0p3_u_d1dn't_g3t_th15_by_h4nd,1t5_4_pr3tty_l0ng_fl4g!!!}
