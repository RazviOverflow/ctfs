# Challenge
Beginner/secret_of_j4ck4l
j4ck4l
21 solves / 426 points
I left a message for you. You will love it definitely

http://34.132.132.69:8003/

# Solution
The script performs a replace with '.' and '/' but **BEFORE** url-decoding the resource.
It performs 3 calls to urllib.parse.unquote, which is used to url-decode the %xx characters.
To solve it, simply url-encode x3 the string `../flag.txt` and access to `read_secret_message?file=%25252E%25252E%25252Fflag%25252Etxt`.

Flag: flag{s1mp13_l0c4l_f1l3_1nclus10n_0dg4af52gav}