# RazviOverflow
# Python3
import base64

xor_key = "promortyusvatofacidpromortyusvato"
user_input = "ExMcGQAABzohNQ0TRQwtPidYAS8gXg4kAkcYISwOUQYS"
user_input_decode = base64.b64decode(user_input, altchars=None).decode("utf-8")

print("Base64 decoded:" + user_input_decode)

def xor(s1,s2):
    return ''.join(chr(ord(a) ^ ord(b)) for a,b in zip(s1,s2))

print(xor(xor_key, user_input_decode))