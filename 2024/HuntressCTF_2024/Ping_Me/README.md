We found this file in the autoruns of a host that seemed to have a lot of network activity... can you figure out what it was doing?

# Solution
The file is an obfuscated Virtual Basic Script. Before trying to deobfuscate it, I looked for the MD5 in ANY.RUN to see if somebody else has executed it before. Which was the case indeed, there are several instances like:
- https://app.any.run/tasks/1aba7060-32e1-4824-8c28-9d4366fd6ef6
- https://app.any.run/tasks/7263b283-7d81-46e6-b077-fa7a9997baa9
- (many more)

The VBS script invokes 10 instances of cmd.exe, each of them passing the `ping` command to execute. The addresses it is trying to ping look real but the experienced eye will soon identify what they really are. These are the 10 pinged addresses:

```
102.108.97.103
123.54.100.49
98.54.48.52
98.98.49.98
54.100.97.51
50.98.56.98
98.99.97.57
101.50.54.100
53.49.53.56
57.125.35.35
```

They are decimal representations of ASCII characters. You can use cyberchef to easily convert them back to chars. Basically, split by `.` and from decimal. This [recipe](https://gchq.github.io/CyberChef/#recipe=Split('.','%5C%5Cn')From_Decimal('Line%20feed',false)&input=MTAyLjEwOC45Ny4xMDMNCjEyMy41NC4xMDAuNDkNCjk4LjU0LjQ4LjUyDQo5OC45OC40OS45OA0KNTQuMTAwLjk3LjUxDQo1MC45OC41Ni45OA0KOTguOTkuOTcuNTcNCjEwMS41MC41NC4xMDANCjUzLjQ5LjUzLjU2DQo1Ny4xMjUuMzUuMzU&ieol=CRLF) is enough to get the flag.

# Flag flag{6d1b604bb1b6da32b8bbca9e26d51589}