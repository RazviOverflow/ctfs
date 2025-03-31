#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <stdbool.h>

int upkeep() {
	// IGNORE THIS
	setvbuf(stdin, NULL, _IONBF, 0);
	setvbuf(stdout, NULL, _IONBF, 0);
	setvbuf(stderr, NULL, _IONBF, 0);
}

int modify(char input[]) {
	puts("Input a string (max length of 69 characters):\n");
	
	int x = read(0, input, 0x60);
	
	printf("String you entered: %s\n", input);

	for (int i = 0; i < x; ++i) {
		// Make uppercase letters into lowercase
		if (((int)input[i] >= 97) && ((int)input[i] <= 122)) {
			input[i] = (char)((int)input[i]-32);
		}
		// Make lowercase letters into uppercase
		else if (((int)input[i] >= 65) && ((int)input[i] <= 90)) {
			input[i] = (char)((int)input[i]+32);
		}

	}

	return 1;
}

int menu() {
	int sel;
	char input[69];

	while (true) {
		puts("Choose an option:");
		puts("1: Modify string");
		puts("2: Debug Mode");
		puts("3: Exit\n");

		scanf("%d", &sel);
		printf("You selected: %d\n", sel);

		if (sel==1) {
			modify(input);
			printf("Your string: %s\n", input);
			return 1;
		}
		else if (sel==2) {
			// Still working on this function, so I disabled it :)
			//debug();
			puts("Debug mode has been disabled!");
			return 1;
		}
		else if (sel==3) {
			return 1;
		}
		puts("Invalid input! Try again.");
	}
	return 1;
}

// TODO: finish making debug function
int debug() {
	int admin = 0;
	// TODO: Add admin check
	int sel;

	puts("WARNING: If you are reading this and are NOT an");
	puts("administrator, report this to IT immediately!\n");

	while (true) {
		puts("Admin options:");
		puts("1. Print info");
		puts("2. Feature 2 (Uhhhhh idk what to put here)"); // TODO:
		puts("3. Feature 3 (I hope your day is going well :) )"); // TODO:
		
		scanf("%d", &sel);
		printf("You selected: %d\n", sel);

		if (sel==1) {
			printf("libc leak: %lx\n", system);

			puts("Leave a message here (max: 80 characters)!");
			char message[80];

			read(0, message, 800);

			puts("Thanks!");

			return 1;
		}
		else if (sel==2) {
			// TODO:
			return 1;
		}
		else if (sel==3) {
			// TODO:
			return 1;
		}
		puts("Invalid input!");
	}
	return 1;
}

int main() {
	upkeep();

	puts("String Modifier v1.4.2");
	puts("Created by: FlamePyromancer"); // :)

	menu();

	printf("\nExiting...\n");
}

