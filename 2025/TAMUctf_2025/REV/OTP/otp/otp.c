#include <string.h>
#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>

#define KEYS 1000

int RANDOM_FD = -1;

void dump() {
    char cmd[128];
    int pid = getpid();
    snprintf(cmd, sizeof(cmd), "gcore -o dump %d; mv dump.%d dump", pid, pid);
    system(cmd);
}

void otp(unsigned char* p, int n, int depth) {
    char key[128];

    read(RANDOM_FD, key, n);
    for (int i = 0; i < n; ++i) {
        p[i] ^= key[i];
    }

    if (depth < KEYS - 1) {
        otp(p, n, depth + 1);
    } else {
        dump();
    }
}

int main(int argc, char** argv) {
    if (argc != 3) {
        printf("Usage: %s <FLAG_FILE> <ENCRYPTED_FLAG_FILE>\n", argv[0]);
        return 0;
    }
    char* flag = argv[1];
    char* encrypted_flag = argv[2];
    RANDOM_FD = open("/dev/urandom", O_RDONLY);
    unsigned char p[128];

    int fd = open(flag, O_RDONLY);
    if (fd < 0) {
        printf("%s not found\n", flag);
        return 0;
    }
    int n = read(fd, p, 128);
    int write_fd = open(encrypted_flag, O_WRONLY | O_CREAT, 0644);
    if (n > 1) {
        if (p[n - 1] == '\n') {
            --n;
        }
        otp(p, n, 0);
        write(write_fd, p, n);
    }
    close(RANDOM_FD);
    close(fd);
    close(write_fd);
}
