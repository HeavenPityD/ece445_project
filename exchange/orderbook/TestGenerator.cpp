#include <fstream>
#include <iostream>
#include <unordered_map>
#include "Orderbook.h"
using namespace std;

static int tradingDay = 19900101;
bool csvFlag = false;
bool binFlag = false;
int sampleSize = 100000;

inline void writeHeader(ofstream& file) {
    file << "fieldType" << ',' << "index" << ',' << "securityId" << ',' << "tradingDay" << ',' << "exchangeTime" << ',' << "price" << ',' << "volume" << ',' << "direction" << ',' << "askIndex" << ',' << "bidIndex" << endl;
}

inline void writeRowCsv(ofstream& file, char type, int index, string securityId, int time, double price, int volume, char dir, int askIndex, int bidIndex) {
    type += '0';
    dir += '0';
    file << type << ',' << index << ',' << securityId << ',' << tradingDay << ',' << time << ',' << price << ',' << volume << ',' << dir << ',' << askIndex << ',' << bidIndex << endl; 
}

inline void writeRowBin(FILE* file, char type, int index, string securityId, int time, double price, int volume, char dir, int askIndex, int bidIndex) {
    OrderTrade msg;
    msg.fieldType = type;
    msg.index = index;
    for (unsigned i = 0; i < securityId.size(); i++) msg.SecurityId[i] = securityId[i];
    msg.SecurityId[securityId.size()] = '\0';
    msg.tradingDay = tradingDay;
    msg.exchangeTime = time;
    msg.price = price;
    msg.volume = volume;
    msg.direction = dir;
    msg.askIndex = askIndex;
    msg.bidIndex = bidIndex;
    fwrite(&msg, sizeof(msg), 1, file);
}

/* Single security, including order and cancel messages, no trade messages, multiple levels */
void testSingleSecurityNoTrade() {
    ofstream csvFile;
    if (csvFlag) {
        csvFile.open("sample1.in");
        writeHeader(csvFile);
    }
    FILE* binFile;
    if (binFlag) binFile = fopen("sample1.bin", "wb+");
    
    cout << "generating sample1..." << endl;
    int index = 0;
    int time = 9000000;

    while (1) {
        if (index > sampleSize) break;
        
        /* bid order $100 to $99.87  */
        for (int i = 0; i < 13; i++) {
            if (csvFlag) writeRowCsv(csvFile, 0, index, "A", time, 100.0 - (i+1) / 100.0, 100, 0, 0, i);
            if (binFlag) writeRowBin(binFile, 0, index, "A", time, 100.0 - (i+1) / 100.0, 100, 0, 0, i);
            time++;
            index++;
        }

        /* ask order $100 to $100.13 */
        for (int i = 0; i < 13; i++) {
            if (csvFlag) writeRowCsv(csvFile, 0, index, "A", time, 100.0 + (i+1) / 100.0, 100, 1, i, 0);
            if (binFlag) writeRowBin(binFile, 0, index, "A", time, 100.0 + (i+1) / 100.0, 100, 1, i, 0);
            time++;
            index++;
        }

        /* cancel bid orders */
        for (int i = 0; i < 13; i++) {
            if (csvFlag) writeRowCsv(csvFile, 2, index, "A", time, 100.0 - (i+1) / 100.0, 100, 0, 0, i);
            if (binFlag) writeRowBin(binFile, 2, index, "A", time, 100.0 - (i+1) / 100.0, 100, 0, 0, i);
            time++;
            index++;
        }

        /* cancel ask orders */
        for (int i = 0; i < 13; i++) {
            if (csvFlag) writeRowCsv(csvFile, 2, index, "A", time, 100.0 + (i+1) / 100.0, 100, 1, i, 0);
            if (binFlag) writeRowBin(binFile, 2, index, "A", time, 100.0 + (i+1) / 100.0, 100, 1, i, 0);
            time++;
            index++;
        }
    }
    if (csvFlag) csvFile.close();
    if (binFlag) fclose(binFile);
}

/* Multiple securities, no trade messages, order on same price same side */
void testMultipleSecuritiesNoTrade() {
    ofstream csvFile;
    if (csvFlag) {
        csvFile.open("sample2.in");
        writeHeader(csvFile);
    }
    FILE* binFile;
    if (binFlag) binFile = fopen("sample2.bin", "wb+");
    
    int index = 0;
    int time = 9000000;
    cout << "generating sample2..." << endl;

    int securityNums = 5000;
    while (1) {
        if (index > sampleSize) break;

        string securityId = to_string(rand()%securityNums);
        if (csvFlag) writeRowCsv(csvFile, 0, index, securityId, time, 100, 100, 0, 0, index);
        if (binFlag) writeRowBin(binFile, 0, index, securityId, time, 100, 100, 0, 0, index);
        time++;
        index++;
    }
    if (csvFlag) csvFile.close();
    if (binFlag) fclose(binFile);
}

/* One security, generates trades. Shouldn't exist unstable states in the snapshots */
void testTrade() {
    ofstream csvFile;
    if (csvFlag) {
        csvFile.open("sample3.in");
        writeHeader(csvFile);
    }
    FILE* binFile;
    if (binFlag) binFile = fopen("sample3.bin", "wb+");
    
    int index = 0;
    int time = 9000000;
    cout << "generating sample3..." << endl;

    int flag = 0;
    int bidIndex = 0;
    while (1) {
        if (index > sampleSize) break;

        if (flag == 0) {
            if (csvFlag) writeRowCsv(csvFile, 0, index, "A", time, 100, 100, 0, 0, bidIndex);
            if (binFlag) writeRowBin(binFile, 0, index, "A", time, 100, 100, 0, 0, bidIndex);
        } else if (flag == 1) {
            if (csvFlag) writeRowCsv(csvFile, 0, index, "A", time, 100, 100, 1, bidIndex, 0);
            if (binFlag) writeRowBin(binFile, 0, index, "A", time, 100, 100, 1, bidIndex, 0);
        } else {
            if (csvFlag) writeRowCsv(csvFile, 1, index, "A", time, 100, 100, 1, bidIndex, bidIndex);
            if (binFlag) writeRowBin(binFile, 1, index, "A", time, 100, 100, 1, bidIndex, bidIndex);
        }
        time++;
        index++;
        flag = (flag+1)%3;
    }
    if (csvFlag) csvFile.close();
    if (binFlag) fclose(binFile);
}

void argParser(int argc, char** argv) {
    int idx = 1;
    while (idx < argc) {
        string arg = string(argv[idx]);
        if (arg == "-c") {
            csvFlag = true;
            idx++;
        } else if (arg == "-b") {
            binFlag = true;
            idx++;
        } else if (arg == "-s") {
            sampleSize = stoi(argv[idx+1]);
            idx += 2;
        }
    }
}

int main(int argc, char** argv) {
    argParser(argc, argv);
    testSingleSecurityNoTrade();
    testMultipleSecuritiesNoTrade();
    testTrade();
}