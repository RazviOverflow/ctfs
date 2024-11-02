Uh oh! Mimi forgot her password for her Windows laptop!

Luckily, she dumped one of the crucial processes running on her computer (don't ask me why, okay)... can you help her recover her password?

NOTE: This file on its own is not malware per say, but it is likely to raise antivirus alerts. Would recommend examining this inside of a virtual environment.

NOTE: Archive password is mimi

# Solution

A find the tool challenge. https://github.com/skelsec/pypykatz
Better clone the repo and run python3 setup.py install

`pypykatz lsa minidump mimi`

# Flag: flag{7a565a86761a2b89524bf7bb0d19bcea}