#define _GNU_SOURCE

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>
#include <unistd.h>

#define FLAGSIZE 128

void print_flag() {
    gid_t gid = getegid();
    setresgid(gid, gid, gid);
    FILE *file = fopen("flag.txt", "r");
    char flag[FLAGSIZE];
    if (file == NULL) {
        printf("Cannot read flag file.\n");
        exit(1);
    }
    fgets(flag, FLAGSIZE, file);
    printf("%s", flag);https://twitter.com/jnic_conf/status/1240315569980792834
}

int main(int argc, char* argv[]) {
    setvbuf(stdout, NULL, _IONBF, 0);
    if (argc != 2) {
        puts("Your argument count isn't right.");
        return 1;
    }
    if (strcmp(argv[1], " \n'\"\x07")) {
        printf("RECEIVED: %s\n", argv[1]);

        int i;
        for (i = 0; i < strlen(argv[1]); i++)
        {
            if (i > 0) printf(":");
            printf("%02X", argv[1][i]);
        }
        printf("\n");

        printf("EXPEECTED: %s\n", " \n'\"\x07");
        char* string = " \n'\"\x07";
        
        for (i = 0; i < strlen(string); i++)
        {
            if (i > 0) printf(":");
            printf("%02X", string[i]);
        }
        printf("\n");


        puts("Your argument isn't right.");
        return 1;
    }
    char buf[128];
    fgets(buf, 128, stdin);
    if (strcmp(buf, "\x00\x01\x02\x03\n")) {
        puts("Your input isn't right.");
        return 1;
    }
    puts("You seem to know what you're doing.");
    print_flag();
}