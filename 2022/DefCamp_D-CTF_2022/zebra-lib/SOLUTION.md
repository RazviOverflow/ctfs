Explot is [exploit.py](exploit.py).

When you connect to the given IP and port using netcat, you receive an input of the likes of:

```
$ nc 35.246.158.241 30948
Incoming work proof!!!
eJwrzy_Kji8oys9Ps03LsEi1SEszy0g1SUktNjVKTUk1SktNM0u0TEkrTs0sBwBgbw-y
Insert work proof:
```

It waits more or less 5 seconds and then the connection is closed. I used [Cyberchef](https://gchq.github.io/)
`https://gchq.github.io/CyberChef/#recipe=Magic(3,true,false,'')&input=ZUp3cnp5X0tqaThveXM5UHMwMHhMU3cwTDB3eFNreXNTa3RKVGNySVNEVEpORXl4VENzdlRVczBxc3BJQXdCc1F4QTc` to find out what it is. I used `Magic` mode with intensive mode. It turned out to be Base64 - Zlib.Ínflate.

I then created the script that automatically interacts with the server. After 500 successful interactions it reveals the flag: `CTF{a7550246d72f8c7946a9248b3b9eee93461ac30f53ac8ca9749c9590b4ed1a2b}`.

_important to use the `context.log_level = debug` in order to see all the output the server produces_