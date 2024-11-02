*yawn* why am i so eeeeeeeeepy?

# Solution
Just like previous instances, the dynamic analysis can be found on ANY.RUN:
- https://app.any.run/tasks/2f8c3ac6-91a1-4b44-ae02-5bee35b05e30

Executing the sample spawns and instances of WerFault.exe. Taking a closer look at it we can see it drops a Windows Minidump file

https://app.any.run/tasks/2f8c3ac6-91a1-4b44-ae02-5bee35b05e30?p=6719c12ddf8123357255e430 (look at the modified files from the left menu). The file in question is:

`2661c6e7c0427cadd6eeb417c9e95714  eepy.exe.1156.dmp`

You can inspect the contents of such file from ANY.RUN's GUI or download the sample and work locally with it (which I recommend, thus I included a copy of the file in this repo)

Inspecting the strings of this Windows Minidump file we can discover the flag:
```
$ rabin2 -zzz eepy.exe.1156.dmp | grep flag
WARN: Invalid or unsupported enumeration encountered 21
WARN: Invalid or unsupported enumeration encountered 22
INFO: Parsing data sections for large dumps can take time
INFO: Please be patient (but if strings ain't your thing try with -z)
1252 0x000ac6d8 0x59505fd5da  38  39 (Memory_Section_147) ascii flag{2feb3ff8a21a36db1ad386d33a29d85a}
```

# Flag flag{2feb3ff8a21a36db1ad386d33a29d85a}