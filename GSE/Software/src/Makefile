CC=gcc
CFLAGS=-Wall -pthread
LDLIBS=-lpigpio -lrt
LDFLAGS=-pthread

lexigse: lexigse.o gpio_perror.o hkcal.o

clean:
	rm -rf *.o lexigse
