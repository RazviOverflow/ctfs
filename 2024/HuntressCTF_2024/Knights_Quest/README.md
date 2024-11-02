An adventurer is YOU! Play Knight's Quest, beat the three monsters, and claim the flag! Very straightforward with no surprises, no sir-ee, no surprises here lmao

# Solution 

This binary is also a Go binary but this time there are some name functions that make our life easiers. The challenge is a game in which you have to defeat 3 enemies, with the last enemy being overpowered. After playing for the firs time I noticed that defending does not inflige damage to the player, regardless of the attack points of the enemy.

I used Cutter to solve this challenge. 

By filtering the strings (remember Go strings aren't null terminated) I found the "your flag submission password is: %s". Specifically, at address `0x004c062f` 
```
; DATA XREF from sym.go.knightsquest_game.__Game_.runGameLoop @ 0x49941e
0x004c062f       ;-- str.Your_flag_submission_password_is:__s:
0x004c062f          .string "Your flag submission password is: %s\n" ; len=37 ; pops last element of stack and stores the result in argument
; STRING XREF from data.00564f80 @ +0xb08
```
Cutter detects a cross-reference (XREF) for this string from address `0x49941e`, from the function `sym.go.knightsquest_game.__Game_.runGameLoop`. That's the next place to inspect.

By inspectin the assembly code close to that address, it becomes clear that there is a string that could act as the password:
```
0x004992da      48b8424f445541686b44   movabs  rax, 0x446b684155444f42 ; 'BODUAhkD' ; absolute data moves
0x004992e4      48898424b0000000       mov     qword [var_250h], rax ; moves data from src to dst
0x004992ec      48b84d4c6a335a4d3763   movabs  rax, 0x63374d5a336a4c4d ; 'MLj3ZM7c' ; absolute data moves
0x004992f6      48898424b8000000       mov     qword [var_248h], rax ; moves data from src to dst
0x004992fe      48b8666f3955426c7431   movabs  rax, 0x31746c4255396f66 ; 'fo9UBlt1' ; absolute data moves
0x00499308      48898424c0000000       mov     qword [var_240h], rax ; moves data from src to dst
0x00499310      48b8414e554259374c6e   movabs  rax, 0x6e4c375942554e41 ; 'ANUBY7Ln' ; absolute data moves
0x0049931a      48898424c8000000       mov     qword [var_238h], rax ; moves data from src to dst
0x00499322      48b86563647067684c38   movabs  rax, 0x384c686770646365 ; 'ecdpghL8' ; absolute data moves
0x0049932c      48898424d0000000       mov     qword [var_230h], rax ; moves data from src to dst
0x00499334      48b86d675a594a733662   movabs  rax, 0x6236734a595a676d ; 'mgZYJs6b' ; absolute data moves
0x0049933e      48898424d8000000       mov     qword [var_228h], rax ; moves data from src to dst
0x00499346      48b8686f6e664d517a65   movabs  rax, 0x657a514d666e6f68 ; 'honfMQze' ; absolute data moves
0x00499350      48898424e0000000       mov     qword [var_220h], rax ; moves data from src to dst
0x00499358      48b8446a737049344c51   movabs  rax, 0x514c344970736a44 ; 'DjspI4LQ' ; absolute data moves
```
However, trying it (with different endianness settings) didn't work. That means that the password is somehow generated from this string. Instead of trying to find how the password is generated, I kept looking at the game logic and see if I can understand it.

I got to see where the "action" takes place:
```
0x00498e40      e8dbf9ffff             call    sym.go.knightsquest_round.PlayRound ; 
```

Inspecting the `PlayRound` function, I discovered another very interesting one: `playerTurn`
```
0x00498948      e893f2ffff             call    sym.go.knightsquest_round.playerTurn 
```

By trying to understand how the player's turn works, I found out that it is here where the enemies are being defeated. Around address `0x00497fd2`:
```
0x00497ffe      488d0585590200         lea     rax, [str.You_have_defeated_the__s] ; 0x4bd98a ; load effective address
0x00498005      bb19000000             mov     ebx, 0x19 ; 25 ; moves data from src to dst
0x0049800a      488d8c24e0010000       lea     rcx, [var_18h] ; load effective address; int64_t arg_8h
0x00498012      bf01000000             mov     edi, 1 ; moves data from src to dst; int64_t arg1
0x00498017      4889fe                 mov     rsi, rdi ; moves data from src to dst; int64_t arg2
0x0049801a      e80170ffff             call    sym.go.fmt.Sprintf ;
```

The basic block that decides whether the enemy has been defeated is executed based on the following check:
```
0x00497fc7      4883791800             cmp     qword [rcx + 0x18], 0 ; compare two operands
0x00497fcc      0f8fc1000000           jg      0x498093 ; jump short if greater (zf=0 and sf=of)
```
Basically, it checks whether the qword stored at qword [rcx + 0x18] is greater than 0. If it is, it jumps elsewher.

My first approach on this was simply inverting the conditional jump, this way the enemy is defeated is the value of [rcx + 0x18] is greather than 0 (rather than jumping elsewhere in the code).
```
0x00497fc7      4883791800             cmp     qword [rcx + 0x18], 0 ; compare two operands
0x00497fcc      0f8ec1000000           jle     0x498093 ; jump short if less or equal/not greater (zf=1 or sf!=of)
```

Patched the binary, executed it and after defending from an attack, the enemy is automatically defeated. The binaries included in this repo are:
```
0eb81f7438e8a7edb667b72815faba45  knights_quest_linux 			-> original file
bc30d53aaed7fb8ced69412c8ae65a48  knights_quest_linux_patched	-> patched file
```

After playing and defending 3 times:
```
> Congratulations! You have defeated all enemies!
--------------------------------------------------------------------------------
Your flag submission password is: hmafgAhAalqmQABBOAZtP3OWFegsQDAB
Press enter to exit the game..
```

Then simply perfomr the request shown in the webpage
```
$ curl -X POST -H "Content-Type: application/json" -d '{"password":"hmafgAhAalqmQABBOAZtP3OWFegsQDAB"}' http://challenge.ctf.games:32702/submit

{"flag":"flag{40b5b7e5395ee921cbbc804d4350b9c1}"}
```

# Flag flag{40b5b7e5395ee921cbbc804d4350b9c1}