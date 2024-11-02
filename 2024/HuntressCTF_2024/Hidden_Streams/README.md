Beneath the surface, secrets glide,
A gentle flow where whispers hide.
Unseen currents, silent dreams,
Carrying tales in hidden streams.

Can you find the secrets in these Sysmon logs?

# Solution
The challenge description talks about "streams". Looking at the docs for sysmon (https://learn.microsoft.com/en-us/sysinternals/downloads/sysmon) the only event that's related to some sort of streams is EventID 15. Event ID 15: FileCreateStreamHash.

There is only one event in the whole log that's of type 15:

```
Event number			: 756
Creation time			: Aug 28, 2024 00:19:14.033585200 UTC
Written time			: Aug 28, 2024 00:19:14.033585200 UTC
Event level			: Information (4)
User security identifier	: S-1-5-18
Computer name			: WIN-UL3TI0T0LM6.test.local
Source name			: Microsoft-Windows-Sysmon
Event identifier		: 0x0000000f (15)
Number of strings		: 10
String: 1			: -
String: 2			: 2024-08-28 00:19:11.899
String: 3			: {B56AE52F-6533-66CE-BE00-000000000900}
String: 4			: 2460
String: 5			: C:\Windows\system32\WindowsPowerShell\v1.0\PowerShell.exe
String: 6			: C:\Temp:$5GMLW
String: 7			: 2024-08-28 00:00:22.726
String: 8			: SHA1=B1C3068058ADDF418D3E1418CD28414325B7A757,MD5=E754797031C6B367D0B6209092F34B3B,SHA256=F414CBA3A5D8C6EF18B1BE31F09C848447DDB37A5712E36EB7825E4E1EFAE868,IMPHASH=00000000000000000000000000000000
String: 9			: ZmxhZ3tiZmVmYjg5MTE4MzAzMmY0NGZhOTNkMGM3YmQ0MGRhOX0=  
String: 10			: WIN-UL3TI0T0LM6\Administrator
```

The flag is: ZmxhZ3tiZmVmYjg5MTE4MzAzMmY0NGZhOTNkMGM3YmQ0MGRhOX0=
flag{bfefb891183032f44fa93d0c7bd40da9}

# Flag flag{bfefb891183032f44fa93d0c7bd40da9}