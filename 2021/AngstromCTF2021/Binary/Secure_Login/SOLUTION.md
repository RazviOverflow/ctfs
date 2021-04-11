actf{if_youre_reading_this_ive_been_hacked}. There are approx 1/256 chances that /dev/urandom places a null byte in the first position. I solved the challenge by executing:
```
for i in `seq 0 1000`; do python -c 'print("\x00")' | ./login; done
```