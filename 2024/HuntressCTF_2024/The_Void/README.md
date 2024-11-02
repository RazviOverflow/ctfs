When you gaze long into the void, the void gazes also into you...

nc challenge.ctf.games 30463

# Solution
The server is constantly sending bash color characters. Capture the output:
`$nc challenge.ctf.games 30463 > output` (A second wil be more than enough)

Then print the contents of the file deleting the color characters.
`$ cat output | sed -r "s/\x1B\[([0-9]{1,3}(;[0-9]{1,2};?)?)?[mGK]//g"`

And you will see the flag.

# Flag flag{b1370ac4fadd8c0237f8771d7d77286a}