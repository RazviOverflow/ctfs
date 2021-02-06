#include <stdlib.h>
#include <stdio.h>
#include <time.h>

void main(){

	srand(time(0));

	for(int i = 0; i <= 0x63; i++){
			printf("%d\n", rand());
	}
}