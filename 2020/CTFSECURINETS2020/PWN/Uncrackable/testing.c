#include <stdlib.h>
#include <stdio.h>

void main(){

	char filename[100];
	char input[300];

	scanf("%32s", input);

	printf("Se ha recogido por entrada estandar: %s\n", input);

	sprintf(filename, "echo -n \'%s\' | md5sum", input);

	printf("El comando resultante es: %s\n", filename);


	FILE* file = popen(filename, "r");

	if(file == 0){
		printf("[+] ERROR\n");
	} 

	//int return_popen = popen(filename, );

}