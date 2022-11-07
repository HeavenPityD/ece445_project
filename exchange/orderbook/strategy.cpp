#include "ClientOrderbook.h"
#include <stdio.h> 
#include <stdlib.h> 
#include <unistd.h> 
#include <string.h> 
#include <sys/types.h> 
#include <sys/socket.h> 
#include <arpa/inet.h> 
#include <netinet/in.h> 
#include "Message.h"
#include <thread>
#include <string>
#include <iostream>
#define PORT     8080 
#define MAXLINE 1024
#define SERVER "127.0.0.1"
struct sockaddr_in     servaddr; 
int sockfd;

void receiveThread() {
    uint8_t len;
    uint8_t buf[MAXLINE];
    char buffer[MAXLINE];
    int n;
    while (1) {
        cout << "line 26" << endl;
        n = recvfrom(sockfd, (char *)buffer, MAXLINE,  
                    MSG_WAITALL, (struct sockaddr *) &servaddr, 
                    (socklen_t*) &len);


        cout <<  "received " << n << ' ' << buffer[0] << endl;
        if (n > 0) {
            if (buffer[0] == 0) {
                cout << "add order market data" << endl;
            } else if (buffer[0] == 1) {
                cout << "cancel order market data" << endl;
            } else if (buffer[0] == 2) {
                cout << "trade market data" << endl;
            } else {
                if (buffer[1] == 0) {
                    cout << "add order successful, reference number " << *((uint32_t*)(buffer+2)) << endl;
                }
            }
        }
    }
}

int main() {   
    uint8_t buf[MAXLINE];
    char buffer[MAXLINE]; 
    memset(&servaddr, 0, sizeof(servaddr)); 
        
    servaddr.sin_family = AF_INET; 
    servaddr.sin_port = htons(PORT); 
    servaddr.sin_addr.s_addr = inet_addr("127.0.0.1");
        
    int n; 
    uint8_t len;
    
    if ( (sockfd = socket(AF_INET, SOCK_DGRAM, 0)) < 0 ) { 
            perror("socket creation failed"); 
            exit(EXIT_FAILURE); 
        } 
    buf[0] = 3;
    *((uint32_t*) (buf+1)) = 1;
    sendto(sockfd, buf, 5, 
            MSG_CONFIRM, (const struct sockaddr *) &servaddr,  
                sizeof(servaddr)); 
    thread t2(receiveThread);
    t2.join();
    int a;
    return 0;
}