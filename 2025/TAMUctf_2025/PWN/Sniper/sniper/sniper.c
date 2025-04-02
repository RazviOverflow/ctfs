#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/mman.h>
#include <sys/fcntl.h>

void init() {
    setvbuf(stdin, NULL, _IONBF, 0);
    setvbuf(stdout, NULL, _IONBF, 0);
}

void load_flag() {
    int fd = open("flag.txt", O_RDONLY);
    mmap(0x000000000a0a0000, 0x1000, PROT_READ, MAP_PRIVATE, fd, 0);
}

void vuln() {
    char buf[48];
    printf("%p\n", buf);
    fgets(buf, sizeof(buf), stdin);
    close(0);
    printf(buf);
    exit(0);
}

int main() {
    init();
    load_flag();
    vuln();
}
