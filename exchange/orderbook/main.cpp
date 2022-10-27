#include <fstream>
#include <string>
#include <iostream>
#include <vector>
#include <unordered_map>
#include <thread>
#include <mutex>
#include <chrono>
#include <execution>
#include <queue>
#include <functional>
#include <list>
#include <condition_variable>
#include <queue>
#include "Orderbook.h"

#define LISTENER_NUM 4

using namespace std;
using namespace std::chrono;

SafeMap<string, Orderbook*> books;
vector<Orderbook*> orderbookPtr;
mutex bookLock;
string inName = "sample1.in";
string outName = "sample1.out";
ifstream in;
ofstream out;

SafeQueue<pair<string, OrderTrade*>> jobQueue;
mutex queueLock;
mutex counterLock;
int ct = 0;
int writeCt = 0;
SafeQueue<string> outputBuffer;
bool csvFlag = true;

/* process message */
void listeningThread() {
    while (1) {
        queueLock.lock();
        if (jobQueue.empty()) {
            outputBuffer.markDone();
            queueLock.unlock();
            return;
        }
        books.lock(jobQueue.front().first);
        auto x = jobQueue.pop();
        queueLock.unlock();
        counterLock.lock();
        ct += 1;
        if (ct % 1000000 == 0) cout << "Processed Message count: " <<  ct / 1000000 << " million" << endl;
        counterLock.unlock();
        books[x.first] -> listen(x.second);
        books.unlock(x.first);
        delete x.second;
    }
}


/* write snapshots to output file */
void outputThread() {
    while (!outputBuffer.empty()) {
        out << outputBuffer.pop();
        //cout << outputBuffer.empty() << endl;
        writeCt++;
    }
}

/* add job to jobQueue */
void addJobThreadCsv() {
    while (1) {
        OrderTrade* msg = new OrderTrade(in);
        if (msg -> index == -1) break;
        string securityId = msg -> SecurityId;
        if (!books.contains(securityId)) {
            books[securityId] = new Orderbook(securityId, outputBuffer);
            orderbookPtr.push_back(books[securityId]);
        }
        jobQueue.push(pair<string, OrderTrade*>(securityId, msg));
    }
    jobQueue.markDone();
}

void addJobThreadBin() {
    while (1) {
        OrderTrade* msg = new OrderTrade();
        in.read((char*)msg, sizeof(OrderTrade));
        if (msg -> index == -1) break;
        string securityId = msg -> SecurityId;
        if (!books.contains(securityId)) {
            books[securityId] = new Orderbook(securityId, outputBuffer);
        }
        jobQueue.push(pair<string, OrderTrade*>(securityId, msg));
    }
    jobQueue.markDone();
}

void argParser(int argc, char** argv) {
    int idx = 1;
    while (idx < argc) {
        string arg = string(argv[idx]);
        if (arg == "-c") {
            csvFlag = true;
            idx++;
        } else if (arg == "-b") {
            csvFlag = false;
            idx++;
        } else if (arg == "-f") {
            inName = argv[idx+1];
            idx += 2;
        } else if (arg == "-o") {
            outName = argv[idx+1];
            idx += 2;
        }
    }
}

int main(int argc, char** argv) {
    argParser(argc, argv);
    if (csvFlag) {
        in.open(inName);
        string line;
        getline(in, line);
    } else in.open(inName, ios::binary);

    auto start = high_resolution_clock::now();
    out.open(outName);
    out << "otindex" << ',' << "securityID" << ',' << "tradingDay" << ',' << "timeStamp" << ',' << "totalvolume" << ',' << "totalvalue" << ',' << "lastprice" << ',';
    for (int i = 1; i <= 5; i++) {
        out << "bp" << i << ',';
        out << "bv" << i << ',';
    }
    for (int i = 1; i <= 5; i++) {
        out << "ap" << i << ',';
        out << "av" << i << ',';
    }
    out << endl;

    thread listener[LISTENER_NUM];
    for (int i = 0; i < LISTENER_NUM; i++) listener[i] = thread(listeningThread);
    
    thread writer = thread(outputThread);
    
    thread decoder;
    if (csvFlag) decoder = thread(addJobThreadCsv);
    else decoder = thread(addJobThreadBin);
    
    decoder.join();
    for (int i = 0; i < LISTENER_NUM; i++) listener[i].join();
    auto end = high_resolution_clock::now();
    auto duration = duration_cast<microseconds>(end - start);
    cout << "finished listening, total messages processed: " << ct-1 << endl;
    cout << "Time taken: "<< duration.count() / 1000000.0 << " seconds" << endl;
    writer.join();
    end = high_resolution_clock::now();
    duration = duration_cast<microseconds>(end - start);
    cout << "finished writing, total snapshots written to file: " << writeCt << endl;
    cout << "Time taken: "<< duration.count() / 1000000.0 << " seconds" << endl;
    in.close();
    out.close();
    
    for (auto it: orderbookPtr) delete it;
    return 0;
}
