The inteded solution was WAY simpler than the ret2libc script I did. It was just a matter of noticing what happens right before `gets` function is called. The instructions are:

lea rax, [s]
mov rdi, rax
mov eax, 0
call gets

where s is the buffer of the user input.

gets function returns the address of the buffer upon successful execution, so rax will contain the address of the buffer s after the gets. 

So one could simply insert the shellcode and then overwrite the return address of main with either the address of jmp rax o call rax. 

The script for this solution is called intended_solution.py