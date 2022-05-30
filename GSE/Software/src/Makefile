CC=gcc
CFLAGS=-Wall -pthread
LDLIBS=-lpigpio -lrt
LDFLAGS=-pthread


lexagse: lexagse.o gpio_perror.o

lexagse.o : gpio.h

noodle: noodle.o gpio_perror.o

clean:
	rm -rf *.o lexagse
