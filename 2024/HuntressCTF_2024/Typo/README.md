Gosh darnit, I keep entering a typo in my Linux command prompt!

Press the Start button on the top-right to begin this challenge.
Connect with:
# Password is "userpass"
ssh -p 31977 user@challenge.ctf.games

# Solution:
`$ ssh -p 31977 -T user@challenge.ctf.games "/bin/bash -l"`
`cat flag.txt`

# Flag: flag{36a0354fbf59df454596660742bf09eb}