You gotta make sure the people who find stuff for you are rewarded well!

Escalate your privileges and uncover the flag.txt in the finder user's home directory.

Press the Start button in the top-right to begin this challenge.

# Solution
Find SUID or SGID binaries.
`find / -perm -g=s -type f 2> /dev/null`

`find` is GUID to `finder`, the user that contains the flag. Spawn a shell:
`https://gtfobins.github.io/gtfobins/find/#suid` (https://gtfobins.github.io/gtfobins/find/#suid) and grab the flag.

# Flag: flag{5da1de289823cfc200adf91d6536d914}