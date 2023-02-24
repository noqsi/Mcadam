CC=gcc
CFLAGS=-Wall -pthread
LDLIBS=-lpigpio -lrt
LDFLAGS=-pthread
BIN=/usr/local/bin


lexagse: lexagse.o gpio_perror.o

lexagse.o : gpio.h

install: lexagse
	mkdir -p $(BIN)
	cp lexagse $(BIN)
	chmod u+s $(BIN)/lexagse

clean:
	rm -rf *.o lexagse
