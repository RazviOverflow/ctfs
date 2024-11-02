Hmmm, have you seen some of the strange DNS records for the ctf.games domain? One of them sure is odd...

# Solution

Check the DNS entries with any online tool: https://dnschecker.org/all-dns-records-of-domain.php?query=ctf.games&rtype=ALL&dns=google

The TXT entry is:

```
id: 30252
opcode: QUERY
status: NOERROR
flags: QR RD RA CD
;; QUESTION SECTION:
;ctf.games.		IN TXT
;; ANSWER SECTION:
ctf.games.		9062 IN	TXT "146 154 141 147 173 061 064 145 060 067 062 146 067 060 065 144 064 065 070 070 062 064 060 061 144 061 064 061 143 065 066 062 146 144 143 060 142 175"
```

From octal: flag{14e072f705d45882401d141c562fdc0b}
# Flag flag{14e072f705d45882401d141c562fdc0b}