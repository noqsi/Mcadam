#include <pigpio.h>

int main( int argc, char **argv ) {
	gpioInitialise();
	int h0 = spiOpen( 0, 1000000, 0 );
	int h1 = spiOpen( 1, 1000000, 0 );
	char in[2], out[2];
	for(;;) {
		spiXfer( h0, out, in, 2 );
		spiXfer( h1, out, in, 2 );
	}
}
