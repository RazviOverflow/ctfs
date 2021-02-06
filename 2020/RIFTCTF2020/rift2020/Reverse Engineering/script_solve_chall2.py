

string = "\'<3!\x16\x01\x13.!\'a6<;2\n1ef&;!\n\"e\'>\n4;,\x18e\'ff("

expected_string = list()

for char in string:
	expected_string.append(chr(ord(char) ^ 0x55))

print str("".join(expected_string))
