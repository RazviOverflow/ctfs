"""
Generate gdb output:
1. `gdb binary_file dump_file`
Within gdb:
2. `set pagination off`
3. `set print repeats 0`
4. `set logging enabled`
5. `bt full`
6.`quit`

output is in `gdb.txt` (default name

grep "key = " gdb.txt | sed 's/^[ \t]*key = //' > keys.txt
"""

import codecs

final_p = r"\203U\263k\221\221\031\017\206\bz\350$q\240v\352wN\037\236\253\371\024\200\335LT\264/\232\001!S\271r\221\r1\303\020\277\246Kr(\225'p1\333N\005\334\353\327r\357\177"
final_p_raw = bytearray(codecs.decode(final_p, 'unicode_escape').encode('latin1'))

with open("keys.txt", "r", encoding="utf-8") as f:
    lines = [line for line in f if line.strip()]

for i, line in enumerate(lines):
    line = codecs.decode(line.strip().strip('"'), 'unicode_escape').encode('latin1')
    for i in range(59):
        final_p_raw = bytes([x ^ y for x, y in zip(final_p_raw, line)])
print(final_p_raw)