CC=gcc
CFLAGS=-Wall -pthread
LDLIBS=-lpigpio -lrt
LDFLAGS=-pthread


lexigse: lexigse.o gpio_perror.o

lexigse.o : gpio.h

noodle: noodle.o gpio_perror.o

clean:
	rm -rf *.o lexigse
