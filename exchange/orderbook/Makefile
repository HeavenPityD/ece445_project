CC = g++
CFLAGS = -Wall -g -pthread -w
 
main: main.o Orderbook.o
	$(CC) $(CFLAGS) -o main main.o Orderbook.o

main.o: main.cpp Orderbook.h
	$(CC) $(CFLAGS) -c main.cpp

Orderbook.o: Orderbook.h Orderbook.cpp
	$(CC) $(CFLAGS) -c Orderbook.cpp

TestGenerator: TestGenerator.o Orderbook.o
	$(CC) $(CFLAGS) -o TestGenerator TestGenerator.o Orderbook.o

TestGenerator.o: TestGenerator.cpp Orderbook.h
	$(CC) $(CFLAGS) -c TestGenerator.cpp

clean:
	rm *.o main