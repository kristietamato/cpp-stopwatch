# Makefile for stopwatch program

.PHONY: stopwatch clean

stopwatch: main.o stopwatch.o testStopwatch.o
	g++ main.o stopwatch.o testStopwatch.o -o stopwatch

main.o: main.cpp
	g++ -c main.cpp

stopwatch.o: stopwatch.cpp stopwatch.h
	g++ -c stopwatch.cpp

testStopwatch.o: testStopwatch.cpp testStopwatch.h
	g++ -c testStopwatch.cpp

clean:
	rm *.o stopwatch