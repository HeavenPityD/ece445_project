#include "Orderbook.h"
using namespace std;

volatile bool highLiquidityDone = false;
volatile bool lowLiquidityDone = false;
mutex globalLock;
stringstream bufferStream;

OrderTrade::OrderTrade() {}

OrderTrade::OrderTrade(ifstream& csv) {
    string c;
    if (getline(csv, c, ','))
    fieldType = c[0] - '0';
    if (getline(csv, c, ','))
    index = stoi(c);
    if (getline(csv, c, ','))
    for (unsigned i = 0; i < c.size(); i++) SecurityId[i] = c[i];
    SecurityId[c.size()] = '\0';
    if (getline(csv, c, ','))
    tradingDay = stoi(c);
    if (getline(csv, c, ','))
    exchangeTime = stoi(c);
    if (getline(csv, c, ','))
    price = stod(c);
    if (getline(csv, c, ','))
    volume = stoi(c);
    if (getline(csv, c, ','))
    direction = c[0] - '0';
    if (getline(csv, c, ','))
    askIndex = stoi(c);
    if (getline(csv, c, '\n'))
    bidIndex = stoi(c);
}

Orderbook::Level::Level(int price): price(price) {}

void Orderbook::Level::add(int index, int quantity) {
    orders[index] = quantity;
    aggregatedVolume += quantity;
}

void Orderbook::Level::remove(int index, int quantity) {
    if (quantity == 0) quantity = orders[index];
    aggregatedVolume -= quantity;
    if (orders[index] == 0) orders.erase(index);
}

int Orderbook::Level::getAggregatedVolume() const {
    return aggregatedVolume;
}

inline void Orderbook::add(OrderTrade* msg) {
    int price = round(msg -> price * 100);
    if (!msg -> direction) {
        if (bidLevels.find(price) == bidLevels.end()) {
            bidLevels[price] = new Level(price);
        }
        bidLevels[price] -> add(msg ->bidIndex, msg -> volume);
        bestBid = max(bestBid, price);
    } else {
        if (askLevels.find(price) == askLevels.end()) {
            askLevels[price] = new Level(price);
        }
        askLevels[price] -> add(msg -> askIndex, msg -> volume);
        bestAsk = min(bestAsk, price);
    }
}

inline void Orderbook::remove(OrderTrade* msg) {
    int price = round(msg -> price * 100);
    if (!msg -> direction) {
        bidLevels[price] -> remove(msg -> bidIndex, msg -> volume);
        if (bidLevels[price] -> getAggregatedVolume() == 0) {
            bidLevels.erase(price);
            if (price == bestBid) findBestBidHighLiquidity();
        }
    } else {
        askLevels[price] -> remove(msg -> askIndex, msg ->volume);
        if (askLevels[price] -> getAggregatedVolume() == 0) {
            askLevels.erase(price);
            if (price == bestAsk) findBestAskHighLiquidity();
        }
    }
}

inline void Orderbook::trade(OrderTrade* msg) {
    int price = round(msg -> price * 100);
    bidLevels[price] -> remove(msg -> bidIndex, msg -> volume);
    askLevels[price] -> remove(msg -> askIndex, msg -> volume);
    lastPrice = price;
    totalVolume += msg -> volume;
    totalValue += msg -> volume * price;
}

/* In a market with high liquidity, bid-ask spread tends to be small and so does price difference between different price levels,
thus linear search from best bid ask with a step equal to tick size (0.01) can be optimal in such a case */

/* In case of low liquidity, there can be another function that get the best five levels by iterate over all existing levels.
There can be two threads running those two functions concurrently and once one of them are done exit the other one. The implementation will be 
simliar to main.cpp's implementation of main thread and listening thread notifying each other using SafeQueue. */
inline void Orderbook::generateSnapshotHighLiquidity() const {
    stringstream stream;
    
    stream << otindex << ',' << securityId << ',' << tradingDay << ',' << timeStamp << ',' << totalVolume << ',' << totalValue << ',' << lastPrice/100 << ',';
    int idx, minIdx, price, missCt;

    idx = 0;
    minIdx = min(5, (int) bidLevels.size()); 
    
    missCt = 0;
    price = bestBid;
    while (idx < minIdx) {
        auto it = bidLevels.end();
        if ((it = bidLevels.find(price)) != bidLevels.end()) {
            if (askLevels.find(price) != askLevels.end()) {
                if (askLevels.at(price) -> getAggregatedVolume() >= (*it).second -> getAggregatedVolume() ) {
                    missCt += 1;
                    minIdx = min(5, (int) (bidLevels.size() - missCt));
                    continue;
                }
            }
            stream << price/100.0 << ',' << (*it).second -> getAggregatedVolume() << ',';
            idx++;
        }
        price -= 1;
    }
    while (idx++ < 5) {
        stream << "nan" << ',' << 0 << ',';
    }

    idx = 0;
    minIdx = min(5, (int) askLevels.size());
    price = bestAsk;
    missCt = 0;

    while (idx < minIdx) {
        auto it = askLevels.end();
        if ((it = askLevels.find(price)) != askLevels.end()) {
            if (bidLevels.find(price) != bidLevels.end()) {
                if (bidLevels.at(price) -> getAggregatedVolume() >= (*it).second -> getAggregatedVolume() ) {
                    missCt += 1;
                    minIdx = min(5, (int) (bidLevels.size() - missCt));
                    continue;
                }
            }
            stream << price/100.0 << ',' << (*it).second -> getAggregatedVolume() << ',';
            idx++;
        }
        price += 1;
    }
    while (idx++ < 5) {
        stream << "nan" << ',' << 0 << ',';
    }
    stream << endl;
    outputBuffer.push(stream.str());
}


inline void Orderbook::findBestBidHighLiquidity() {
    if (bidLevels.empty()) bestBid = INT32_MIN;
    else while (bidLevels.find(bestBid) == bidLevels.end()) bestBid -= 1;
}

inline void Orderbook::findBestAskHighLiquidity() {
    if (askLevels.empty()) bestAsk = INT32_MAX;
    else while (askLevels.find(bestAsk) == askLevels.end()) bestAsk += 1;
}

Orderbook::Orderbook(string securityId, SafeQueue<string>& outputBuffer): securityId(securityId), outputBuffer(outputBuffer) {}

Orderbook::~Orderbook() {
    for (auto it = bidLevels.begin(); it != bidLevels.end(); it++) {
        delete (*it).second;
    }
    for (auto it = askLevels.begin(); it != askLevels.end(); it++) {
        delete (*it).second;
    }
}

void Orderbook::listen(OrderTrade* msg) {
    int newTimeStamp = msg -> exchangeTime / 1000;
    if (newTimeStamp != timeStamp) {
        generateSnapshotHighLiquidity();
        timeStamp = newTimeStamp;
    }
    otindex = msg -> index;
    if (tradingDay == -1) tradingDay = msg -> tradingDay;
    if (msg -> fieldType == 0) {
        add(msg);
    } else if (msg -> fieldType == 1) {
        trade(msg);
    } else if (msg -> fieldType == 2) {
        remove(msg);
    }
}
