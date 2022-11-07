#include "Message.h"
#include <stdio.h> 
#include <stdlib.h> 
#include <unistd.h> 
#include <string.h> 
#include <sys/types.h> 
#include <sys/socket.h> 
#include <arpa/inet.h> 
#include <netinet/in.h> 
#include <unordered_map>
#include <string>
#include <thread>
#include "container.h"
#define PORT     8080 
#define MAXLINE 1024 

using namespace std;
class Listener {
    private:
        SafeQueue<MarketMessage*>& outputQueue;
        uint32_t seqNum = 0;
        Orderbook& book;
        unordered_map<uint32_t, sockaddr*> users;
        int sockfd;
        struct sockaddr_in servaddr, cliaddr;
        
        void listen() {
            uint8_t buffer[MAXLINE]; 
            uint8_t resp[MAXLINE];
            int len; 
            len = sizeof(cliaddr);

            while (1) {
                recvfrom(sockfd, (uint8_t *)buffer, MAXLINE, MSG_WAITALL, ( struct sockaddr *) &cliaddr, (socklen_t*) &len); 
                if (buffer[0] == 0) {
                    ClientAddMessage* msg = ClientAddMessage::decode(buffer);
                    uint32_t ref = book.add(msg);
                    resp[0] = 3;
                    resp[1] = 0;
                    *((uint32_t*) (resp+2)) = ref;
                } else if (buffer[0] == 1) {
                    ClientCancelMessage* msg = ClientCancelMessage::decode(buffer);
                    book.remove(msg);
                    resp[0] = 3;
                    resp[1] = 1;
                } else {
                    uint32_t auth = *((uint32_t*) &buffer[1]);
                    users[auth] = ( struct sockaddr *) &cliaddr;
                    cout << auth << endl;
                    resp[0] = 3;
                    resp[1] = 3;
                }
                sendto(sockfd, (char*) resp, 6,  
                    MSG_CONFIRM, (const struct sockaddr *) &cliaddr, 
                        len);
            }
        }

        void broadcast() {
            while (1) {
                if (!outputQueue.empty()) {
                    cout << "line " << users.size() << endl;
                    uint8_t buffer[MAXLINE];
                    int len = sizeof(cliaddr);
                    MarketMessage* msg = outputQueue.pop();
                    int msgLen = msg -> toMarketBinary(buffer);
                    for (auto& item: users) {
                        cout << item.second << endl;
                        sendto(sockfd, buffer, msgLen, MSG_CONFIRM, item.second, len);
                    }
                }
            }
        }
    public:
        Listener(SafeQueue<MarketMessage*>& outputQueue, Orderbook& book): outputQueue(outputQueue), book(book) {}
        void init() {
            if ( (sockfd = socket(AF_INET, SOCK_DGRAM, 0)) < 0 ) { 
                perror("socket creation failed"); 
                exit(EXIT_FAILURE); 
            } 
                
            memset(&servaddr, 0, sizeof(servaddr)); 
            memset(&cliaddr, 0, sizeof(cliaddr)); 
                
            servaddr.sin_family    = AF_INET;
            servaddr.sin_addr.s_addr = INADDR_ANY; 
            servaddr.sin_port = htons(PORT); 
                
            if ( bind(sockfd, (const struct sockaddr *)&servaddr,  
                    sizeof(servaddr)) < 0 ) 
            { 
                perror("bind failed"); 
                exit(EXIT_FAILURE); 
            } 
        }

        thread broadcastThread() {
            return thread([=] {broadcast();});
        }

        thread listenThread() {
            return thread([=] {listen();});
        }
};

