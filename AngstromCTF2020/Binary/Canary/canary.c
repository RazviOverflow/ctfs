#define _GNU_SOURCE

#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <sys/types.h>

void flag() {
	system("/bin/cat flag.txt");
}

void wake() {
	puts("Cock-a-doodle-doo! Cock-a-doodle-doo!\n");
	puts("        .-\"-.");
	puts("       / 4 4 \\");
	puts("       \\_ v _/");
	puts("       //   \\\\");
	puts("      ((     ))");
	puts("=======\"\"===\"\"=======");
	puts("         |||");
	puts("         '|'\n");
	puts("Ahhhh, what a beautiful morning on the farm!");
	puts("And my canary woke me up at 5 AM on the dot!\n");
	puts("       _.-^-._    .--.");
	puts("    .-'   _   '-. |__|");
	puts("   /     |_|     \\|  |");
	puts("  /               \\  |");
	puts(" /|     _____     |\\ |");
	puts("  |    |==|==|    |  |");
	puts("  |    |--|--|    |  |");
	puts("  |    |==|==|    |  |");
	puts("^^^^^^^^^^^^^^^^^^^^^^^^\n");
}

void greet() {
	printf("Hi! What's your name? ");
	char name[20];
	gets(name);
	printf("Nice to meet you, ");
	printf(strcat(name, "!\n"));
	printf("Anything else you want to tell me? ");
	char info[50];
	gets(info);
	printf("ADDRESS OF name is %X\n", &name);
}

int main() {
	setvbuf(stdin, NULL, _IONBF, 0);
	setvbuf(stdout, NULL, _IONBF, 0);
	gid_t gid = getegid();
	setresgid(gid, gid, gid);
	wake();
	greet();
}

//ABCD.%6$016lX.%8$016lX.%9$016lX.%10$016lX.
// %19$016lX
// %14$016lX
// %17$016lX CANARY IS HERE