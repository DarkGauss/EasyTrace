#******************************
# Make file for EasyTrace
# Made by Robert Goes (2018)
#******************************

CC = gcc
CFLAGS = -Wall -std=gnu99
MAIN_INCLUDES = trace.o error.o
MAIN_NAME = example_main.c
FILENAME = EasyTrace

.PHONY: all clean debug
#*****************************

all: clean $(FILENAME)

debug: CFLAGS += -g
debug: $(FILENAME)

clean:
	-rm -f *.o $(FILENAME)
#******************************
$(FILENAME): main.o $(MAIN_INCLUDES)
	$(CC) $(CFLAGS) -o $(FILENAME) main.o $(MAIN_INCLUDES)

main.o: $(MAIN_NAME)
	$(CC) $(CFLAGS) -c -o main.o $(MAIN_NAME)

error.o: error.c error.h trace.o
	$(CC) $(CFLAGS) -c -o error.o error.c

trace.o: trace.c trace.h
	$(CC) $(CFLAGS) -c -o trace.o trace.c
