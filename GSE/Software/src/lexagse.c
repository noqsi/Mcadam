
#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include <errno.h>
#include <string.h>
#include <pigpio.h>
#include <pthread.h>
#include <time.h>
#include <ctype.h>


#include "gpio.h"

#define TIME_TIMER	0
#define PPS_TIMER	1

void gpio_perror(const char *s, int n);

static void mode( unsigned gpio, unsigned mode ){
	int code = gpioSetMode( gpio, mode );
	if( code >= 0 ) return;
	fprintf( stderr, "GPIO %u ", gpio );
	gpio_perror( "lexigse", code );
	exit( 1 );
}

static void input( unsigned gpio ){
	mode( gpio, PI_INPUT );
}

static void zero( unsigned gpio ){
	mode( gpio, PI_OUTPUT );
	int code = gpioWrite( gpio, 0 );
	if( code >= 0 ) return;
	fprintf( stderr, "GPIO %u ", gpio );
	gpio_perror( "lexigse", code );
	exit( 1 );
}


static int adr_reg, data_reg, event_reg;

// Place the interface in a safe state.
// Beware that when exit() is called, pigpio may be in an uninitialized
// state, so cleanup() must initialize it in order to use it.
// There's no error checking here because there's no safe and sane response.

static void cleanup( void ){
	gpioInitialise();	// make sure we can turn stuff off
	
	zero( TEST_ENABLE );	// disable the interface
	spiClose( adr_reg );
	spiClose( data_reg);
	spiClose( event_reg );
	gpioWaveClear();
	for( unsigned i = 0; i <= MAX_GPIO; i += 1 ) {
		gpioSetPullUpDown( i, PI_PUD_DOWN );
		gpioSetMode( i, PI_INPUT );		
	}
	
	gpioTerminate();
}

static void timetag( void ){
	int seconds, micros;
	gpioTime(PI_TIME_ABSOLUTE, &seconds, &micros);
	printf( "%f\t", seconds + .0000001*micros );
}


static pthread_mutex_t m_out;		// Lock for output stream


static void lock_out( void ) {
	int code = pthread_mutex_lock( &m_out );
	if( code ) {
		perror( "lexigse" );
		exit( 1 );
	}
}

static void unlock_out( void ) {
        int code = fflush( stdout );
	if( code ) {
		perror( "fflush" );
		exit( 1 );
	}
	code = pthread_mutex_unlock( &m_out );
	if( code ) {
		perror( "lexigse" );
		exit( 1 );
	}
}

static void log_time( void ){
	lock_out();
	timetag();
	time_t now = time(NULL);
	printf( "time\t%s", ctime(&now));
	unlock_out();
}

static int click_id;

static void init_click( uint32_t us, int cycles ) {
	gpioPulse_t pulse[2];
	int code;
	
	pulse[0].gpioOn = 1 << CLICK;
	pulse[0].gpioOff = 0;
	pulse[0].usDelay = us;
	pulse[1].gpioOn = 0;
	pulse[1].gpioOff = 1 << CLICK;
	pulse[1].usDelay = us;
	
	while( cycles-- ) {
		code = gpioWaveAddGeneric( 2, pulse );
		if( code < 0 ) {
			gpio_perror( "lexigse", code );
			exit( 1 );
		}
	}
	click_id = gpioWaveCreate();
	if( click_id < 0 ) {
		gpio_perror( "lexigse", code );
		exit( 1 );
	}
}

static int force_id[2];

static void init_force( void ) {
	int i;
	
	for( i = 0; i < 2; i += 1 ) {
		gpioPulse_t pulse[2];
		int code;
		int bit;
		if( i ) bit = FORCE1;
		else bit = FORCE0;
		
		pulse[0].gpioOn = 1 << bit;
		pulse[0].gpioOff = 0;
		pulse[0].usDelay = 1;		// FORCE is a 1 us pulse
		pulse[1].gpioOn = 0;
		pulse[1].gpioOff = 1 << bit;
		pulse[1].usDelay = 0;
		code = gpioWaveAddGeneric( 2, pulse );
		if( code < 0 ) {
			gpio_perror( "lexigse", code );
			exit( 1 );
		}
		force_id[ i ] = gpioWaveCreate();
		if( force_id[ i ] < 0 ) {
			gpio_perror( "lexigse", code );
			exit( 1 );
		}
	}
}

/* toggle the PPS bit */

static void pps( void ) {
	int code = gpioWrite( PPS, 1^gpioRead( PPS ));
	if( code < 0 ) {
		gpio_perror( "lexigse", code );
		exit( 1 );
	}
}

static void initialize( void ){
	
	int code = gpioInitialise();
	if( code < 0 ) {
		gpio_perror( "lexigse", code );
		exit( 1 );
	}
	
	atexit( cleanup );
	
	code = gpioWaveClear();			// paranoia
	if( code < 0 ) {
		gpio_perror( "lexigse", code );
		exit( 1 );
	}
	
	zero( TEST_ENABLE );
	zero( FORCE0 );
	zero( FORCE1 );
	zero( CLICK );
	zero( PPS );
	input( EVENT_RDY );
	
	init_force();
		
	adr_reg = spiOpen( ADR, 1000000, ADRFLAGS );
	if( adr_reg < 0 ) {
		gpio_perror( "lexigse", adr_reg );
		exit( 1 );
	}
	
	data_reg = spiOpen( DATA, 1000000, DATAFLAGS );
	if( data_reg < 0 ) {
		gpio_perror( "lexigse", data_reg );
		exit( 1 );
	}
	
	event_reg = spiOpen( EVENT, 1000000, EVENTFLAGS );
	if( event_reg < 0 ) {
		gpio_perror( "lexigse", event_reg );
		exit( 1 );
	}
		
	code = pthread_mutex_init( &m_out, NULL );
	if( code ) {
		perror( "lexigse" );
		exit( 1 );
	}
	
	init_click( 100, 20 );
	
	code = gpioSetTimerFunc( PPS_TIMER, 500, pps );
	if( code ) {
		gpio_perror( "lexigse", code );
		exit( 1 );
	}
	
	code = gpioSetTimerFunc( TIME_TIMER, 60000, log_time );
	if( code ) {
		gpio_perror( "lexigse", code );
		exit( 1 );
	}
	
	log_time();
}


// Transfer to/from address register. tx, rx, should be two characters apiece.

static void xadr( char *tx, char *rx ) {
	int code = spiXfer( adr_reg, tx, rx, 2 );
	if ( code == 2 ) return;
	
	gpio_perror( "lexigse", code );
	exit( 1 );
}


// Transfer to/from data register. tx, rx, should be two characters apiece.
// 16 bit quantities, big-endian.

static void xdata( char *tx, char *rx ) {
	int code = spiXfer( data_reg, tx, rx, 2 );
	if ( code == 2 ) return;
	
	gpio_perror( "lexigse", code );
	exit( 1 );
}


// Read event structure. ev should be an 8 character buffer.
// See test_if.txt for coding.


static void read_event( char *ev ) {
	int code = spiRead( event_reg, ev, 8 );
	if( code == 8 ) return;
	
	gpio_perror( "lexigse", code );
	exit( 1 );
}
	

static void test_enable( int enable ) {
	int code = gpioWrite( TEST_ENABLE, enable );
	if( code >=0 ) return;
	
	gpio_perror( "lexigse", code );
	exit( 1 );
}


static void click( void ) {
	int code = gpioWaveTxSend( click_id, PI_WAVE_MODE_ONE_SHOT );
	if( code >= 0 ) return;
	
	gpio_perror( "lexigse", code );
	exit( 1 );
}

static void loop( void ){

	char txpair[2], rxpair[2];
	uint16_t datareg;
	
	for(;;){
		errno = 0;	/* so that EOF is distinguished from error */
		char *line = NULL;
		size_t ll = 0;
		int code = getline( &line, &ll, stdin );
		if (code == -1 ) {
			if(errno != 0) { 
                           perror("lexigse");
                           exit( 1 );
                        }
			return;
		}
		
		/* remove leading white space */
		
		char *dbl = line;
		
		for( int i = 0; i < ll; i += 1 ) {
			if( !isspace( *dbl )) break;
			dbl += 1;
		}

		lock_out();
		timetag();
		printf( "command\t%s", line );
		unlock_out();
		if( strncmp( "click", dbl, 5 ) == 0 ) {
			click();
		} else if( strncmp( "enable", dbl, 6 ) == 0 ){
			test_enable( 1 );
			sleep( 2 ); 
		} else if( strncmp( "disable", dbl, 7 ) == 0 ){
			test_enable( 0 ); 
		} else if ( 2 == sscanf( dbl, "xadr %hhx %hhx", 
			txpair, txpair + 1 )){
			
			xadr( txpair, rxpair );
			lock_out();
			timetag();
			printf( "last_adr\t%x\t%x\n", rxpair[0], rxpair[1] );
			unlock_out();
		} else if ( 1 == sscanf( dbl, "xdata %hu", &datareg )){
			txpair[0] = datareg>>8;
			txpair[1] = datareg & 0xff;
			xdata( txpair, rxpair );
			lock_out();
			timetag();
			printf( "data_reg\t%u\n", rxpair[1] + (rxpair[0]<<8));
			unlock_out();
		} else if( !*dbl || *dbl == '#' ) {	/* nothing */
		} else {
			fprintf(stderr, 
				"unrecognized lexigse command: %s\n", line );
			exit( 1 );
		}
		
		free( line );
	}
}
		

int main( int argc, char **argv ) {
	initialize();
	loop();
	exit( 0 );
}