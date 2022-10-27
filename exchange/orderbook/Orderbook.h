#include <unordered_map>
#include <string>
#include <map>
#include <iostream>
#include <fstream>
#include <cmath>
#include <float.h>
#include <thread>
#include <sstream>
#include <queue>
#include <mutex>
#include <condition_variable>
#include "container.h"
using namespace std;



struct OrderTrade {
    char fieldType; // 0 for order, 1 for trade, 2 for cancel
    int index = -1;
    char SecurityId[16];
    int tradingDay;
    int exchangeTime;
    double price;
    int volume;
    char direction; // 0 for bid, 1 for ask
    int askIndex;
    int bidIndex;

    OrderTrade();
    OrderTrade(ifstream& csv);
};

class Orderbook {
    private:
        class Level {
            private:
                int price;
                unordered_map<int, int> orders;
                int aggregatedVolume = 0;
                
            public:
                Level(int price);
                void add(int index, int quantity);
                void remove(int index, int quantity);
                int getAggregatedVolume() const;
                
        };

        unordered_map<int, Level*> askLevels;
        unordered_map<int, Level*> bidLevels;
        SafeQueue<string>& outputBuffer;
        int bestBid = INT32_MIN;
        int bestAsk = INT32_MAX;
        int otindex;
        string securityId;
        int tradingDay = -1;
        int timeStamp = -1;
        int totalVolume = 0;
        long long int totalValue = 0;
        int lastPrice = -1;

        inline void add(OrderTrade* msg);
        inline void remove(OrderTrade* msg);
        inline void trade(OrderTrade* msg);
        void findBestBidHighLiquidity();
        void findBestAskHighLiquidity();
        void generateSnapshotHighLiquidity() const;
    
    public:
        Orderbook(string securityId, SafeQueue<string>& outputBuffer);
        void listen(OrderTrade* msg);
        ~Orderbook();
};
