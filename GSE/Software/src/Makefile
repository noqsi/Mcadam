CC=gcc
CFLAGS=-Wall -pthread
LDLIBS=-lpigpio -lrt
LDFLAGS=-pthread
BIN=/usr/local/bin


lexagse: lexagse.o record.o gpio_perror.o

lexagse.o record.o: gpio.h record.h

install: lexagse
	mkdir -p $(BIN)
	cp lexagse $(BIN)
	chmod u+s $(BIN)/lexagse

clean:
	rm -rf *.o lexagse
