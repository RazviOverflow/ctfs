// RazviOverflow
#include <stdio.h>
#include <time.h>
#include <stdlib.h>
#include <string.h>
#include <sys/socket.h>
#include <sys/types.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <unistd.h>

void prediction(char * predicted){
    srand((unsigned) time(0));
    int random = rand();

    char janken[3][10] = {"rock", "scissors", "paper"};

    strcpy(predicted,janken[random%3]);
}

char * pwn_him(char * prediction){
	if(!strcmp(prediction, "scissors")){
		return "rock";
	} else if(!strcmp(prediction, "rock")){
		return "paper";
	} else {
		return "scissors";
	}
}

int main(){

	char predicted[10];

	int sockD = socket(AF_INET, SOCK_STREAM, 0);
	struct sockaddr_in servAddr;
  
    servAddr.sin_family = AF_INET;
    servAddr.sin_port = htons(31629); // Change accordingly
    servAddr.sin_addr.s_addr = inet_addr("159.65.94.38"); // Change accordingly

    int connectStatus = connect(sockD, (struct sockaddr*)&servAddr, sizeof(servAddr));
  
    if (connectStatus == -1) {
        printf("Error\n");
    } else {
    	
        char strData[5000];

        // Start connection
        sleep(1);
        int length = recv(sockD, strData, sizeof(strData), 0);
        strData[length] = '\x00';
        printf("Message: %s\n", strData);
  	
  		// Start game: (1) Play
  		sleep(1);
        send(sockD, "1", 2, 0);
        
        length = recv(sockD, strData, sizeof(strData), 0);
        strData[length] = '\x00';
        printf("Message: %s\n", strData);

        while(1){
        	prediction(predicted);
			printf("Prediction: %s\n", predicted);
			char * my_play = pwn_him(predicted);
			printf("Combat: %s\n", pwn_him(my_play));
			send(sockD, my_play, 10, 0);
			length = recv(sockD, strData, sizeof(strData), 0);
        	strData[length] = '\x00';
        	printf("Message: %s\n", strData);
        	sleep(0.2);
        }
   
    }

	return 0;
}

// Flag: HTB{r0ck_p4p3R_5tr5tr_l0g1c_buG}