# Challenge 
Beginner/Fruit Basket
P3g4su5
120 solves / 422 points
🍎🍌🍇🍓🍊🥭🍍🍑🍈🍉

nc 34.70.212.151 8006

# Solution
Typical c `rand()` vulnerability. Synchronize with `time(0)` and just enter the fruits in order. Exploit in `exploit.c`.

Flag: flag{fru17s_w3r3nt_r4nd0m_4t_a11}