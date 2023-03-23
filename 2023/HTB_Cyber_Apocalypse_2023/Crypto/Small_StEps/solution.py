# https://crypto.stackexchange.com/questions/80311/attack-rsa-with-very-big-module-n-and-very-small-e-7

from decimal import *

n = 7313149673253363928773740301599266119907818023529555918021986225640196490122653156812553733635230074842038433807991650782207968840950407038768144054179607
c = 70407336670535933819674104208890254240063781538460394662998902860952366439176467447947737680952277637330523818962104685553250402512989897886053
e = 3

# https://docs.python.org/3/library/decimal.html
c = Decimal(c)
e = Decimal(e)

getcontext().prec = 2000 # Set a big enough precision
root = pow(c, 1/e) # Calculate c^(1/e) = m^(e * 1/e) = m
print(root)

# Decode with no padding
m = hex(int(root))[2:-1] # Number to hex
m = ''.join(chr(int(m[i:i+2], 16)) for i in range(0, len(m), 2)) # Hex to Ascii
print(m)

#HTB{5ma1l_E-xp0n3nt}