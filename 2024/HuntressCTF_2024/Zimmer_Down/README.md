A user interacted with a suspicious file on one of our hosts.
The only thing we managed to grab was the user's registry hive.
Are they hiding any secrets?

# Solution
The file is a Windows registry hive. It can be read with registryspy (there ae many other tools) https://github.com/andyjsmith/Registry-Spy

`pip3 install registryspy`

There is a specific entry that contains a base62-encoded string. Specifically, here: NTUSER\Software\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs\.b62

The value is VJGSuERgCoVhl6mJg1x87faFOPIqacI3Eby4oP5MyBYKQy5paDF and base62-decoded it is flag{4b676ccc1070be66b1a15dB601c8d500}

# Flag flag{4b676ccc1070be66b1a15dB601c8d500}