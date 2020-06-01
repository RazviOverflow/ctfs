# RazviOverflow
# Python3
import binascii

password = "636173746f72734354467b72317854795f6d316e757433735f67745f73317874795f6d316e757433737d"
password_unhex = binascii.unhexlify(password)

print(password_unhex)