#RazviOverflow

import binascii

def xor_bytes(data, key):
    """
    Xors two byte strings, handling different lengths.

    Args:
        data: The first byte string.
        key: The second byte string.

    Returns:
        The XORed byte string.
    """

    result = bytearray()
    for i in range(len(data)):
        result.append(data[i] ^ key[i % len(key)])
    return bytes(result)
    
data = "15b279d8c0fdbd7d4a8eea255876a0fd189f4fafd4f4124dafae47cb20a447308e3f77995d3c"
key = "73de18bfbb99db4f7cbed3156d40959e7aac7d96b29071759c9b70fb18947000be5d41ab6c41"

# Convert hexadecimal strings to byte arrays
data_bytes = binascii.unhexlify(data)
key_bytes = binascii.unhexlify(key)

# Perform XOR operation and print the result in hexadecimal format
result = xor_bytes(data_bytes, key_bytes)
print(result.decode())