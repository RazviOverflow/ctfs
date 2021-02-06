#include <stdio.h>
#include <stdlib.h>

#define FLAG "CTFA{here_would_be_the_flag}"

extern unsigned char __executable_start;

void ignore_me_init_buffering() {
        setvbuf(stdout, NULL, _IONBF, 0);
        setvbuf(stdin, NULL, _IONBF, 0);
        setvbuf(stderr, NULL, _IONBF, 0);
}

int flag() {
    fprintf(stderr, "%s\n", FLAG);
    return 0;
}

int main() {
    ignore_me_init_buffering();
    unsigned char *start = &__executable_start;
    char *ptr = (char *)malloc(1024);
    char message[50];
    fprintf(stderr, "Welcome dude!\nI GOT SOMETHING!! (%p%p)\nEnter any message: ", start, system);
    gets(message);
    fprintf(stderr, "Alright so: %s\n", message);
    fprintf(stderr, "Now, we will write something in a random space...\nEnter something: ");
    fgets(ptr, 10, stdin);
    puts("Dude! I'm printing this\n");
    return 0;
}
