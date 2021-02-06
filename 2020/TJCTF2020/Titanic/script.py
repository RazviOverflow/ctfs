import re
import sys
import hashlib

def main(path):
    data = read_file(path)

    for word in re.finditer(b'[a-zA-Z0-9\']+', data):
        flag = b'tjctf{' + word.group(0).lower() + b'}'
        print(flag)
        #if hashlib.md5(flag).hexdigest() == 'e246dbab7ae3a6ed41749e20518fcecd':
        if hashlib.md5(flag).hexdigest() == '9326ea0931baf5786cde7f280f965ebb':
            print(flag.decode('utf-8'))
            break

def read_file(path):
    with open(path, 'rb') as f:
        return f.read()

if __name__ == "__main__":
    main(sys.argv[1])
