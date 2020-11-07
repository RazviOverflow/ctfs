#include <stdio.h>
#include <stdint.h>
#include <limits.h>

int main() {
    setvbuf(stdout, NULL, _IONBF, 0);
    int64_t a = 2718281828;
    uint32_t b = 2718281828;

    for(int i = 0; i < INT_MAX; i++){
    	uint32_t number = i + b;
    	if(number == 42){
    		printf("The solution is -> %lld\n", i);
    		break;
    	}
    }
    
    return 0;
}
