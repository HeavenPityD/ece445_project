#include <fstream>
#include <string>
#include <iostream>
#include <vector>
#include <unordered_map>
#include <thread>
#include <mutex>
#include <execution>
#include <queue>
#include <functional>
#include <condition_variable>
#include <queue>
#include "Orderbook.h"
#include "Listener.h"
#include <iomanip>

#define LISTENER_NUM 4

using namespace std;
using namespace std::chrono;

SafeQueue<MarketMessage*> outputQueue;
Orderbook book(outputQueue);
Listener listener(outputQueue, book);

void terminal() {
    while(1) {
        system("clear");
        book.printOrderbook();
        std::this_thread::sleep_for(std::chrono::milliseconds(1000));
    }
}

int main() {
    cout << fixed;
    cout << setprecision(2);
    listener.init();
    thread listen = listener.listenThread();
    thread broadcast = listener.broadcastThread();
    listen.join();
}
