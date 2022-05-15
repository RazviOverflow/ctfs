The user is presented with several options for each part (head, torso, legs...). Option #3 performs `cat` and asks for the name of the file. Using `& /bin/ls ..` nad `& /bin/ls ../..` you can leak the files of the server. Then just provide the name of the flag to `cat`, which is `../../flag.txt`

Flag: HTB{GTFO_4nd_m4k3_th3_b35t_4rt1f4ct5}