#!/usr/bin/python3

import numpy as np

a = np.array([0], dtype=int)
val = int(input("This hammer hits so hard it creates negative matter\n"))
if val == -1:
	exit()
a[0] = val
a[0] = (a[0] * 7) + 1
print(a[0])
if a[0] == -1:
	print("flag!")

# -1 = (X*7) +1 + (2^64-1)
# -2 - (2^64-1) = X*7 
# (-2 - (2^64-1))/7 = X

# (2^64) = ((X*7)+1) + (2^63-1)
# (((2^64) - (2^63-1)) -1)/7) = X