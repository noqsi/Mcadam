
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
#define EVENT_TIMEOUT	10000	/* microseconds */

void gpio_perror(const char *s, int n);

static void mode( unsigned gpio, unsigned mode ){
	int code = gpioSetMode( gpio, mode );
	if( code >= 0 ) return;
	fprintf( stderr, "GPIO %u ", gpio );
	gpio_perror( "lexagse", code );
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
	gpio_perror( "lexagse", code );
	exit( 1 );
}

// a pulse of uncontrolled duration.

static void pulse( unsigned gpio ){
	int code = gpioWrite( gpio, 1 );
	if( code >= 0 ) code = gpioWrite( gpio, 0 );
	if( code >= 0 ) return;
	fprintf( stderr, "GPIO %u ", gpio );
	gpio_perror( "lexagse", code );
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
		perror( "lexagse" );
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
		perror( "lexagse" );
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
			gpio_perror( "lexagse", code );
			exit( 1 );
		}
	}
	click_id = gpioWaveCreate();
	if( click_id < 0 ) {
		gpio_perror( "lexagse", code );
		exit( 1 );
	}
}


static void click( void ) {
	if( gpioWaveTxBusy()) return;	// skip the click if busy
	int code = gpioWaveTxSend( click_id, PI_WAVE_MODE_ONE_SHOT );
	if( code >= 0 ) return;
	
	gpio_perror( "lexagse", code );
	exit( 1 );
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
			gpio_perror( "lexagse", code );
			exit( 1 );
		}
		force_id[ i ] = gpioWaveCreate();
		if( force_id[ i ] < 0 ) {
			gpio_perror( "lexagse", code );
			exit( 1 );
		}
	}
}

/* toggle the PPS bit */

static void pps( void ) {
	int code = gpioWrite( PPS, 1^gpioRead( PPS ));
	if( code < 0 ) {
		gpio_perror( "lexagse", code );
		exit( 1 );
	}
}

// Transfer to/from address register. tx, rx, should be two characters apiece.

static void xadr( char *tx, char *rx ) {
	int code = spiXfer( adr_reg, tx, rx, 2 );
	if ( code == 2 ) return;
	
	gpio_perror( "lexagse", code );
	exit( 1 );
}


// Transfer to/from data register. tx, rx, should be two characters apiece.
// 16 bit quantities, big-endian.

static void xdata( char *tx, char *rx ) {
	int code = spiXfer( data_reg, tx, rx, 2 );
	if ( code == 2 ) return;
	
	gpio_perror( "lexagse", code );
	exit( 1 );
}


// Read event structure as a 64 bit unsigned integer.
// See test_if.txt for coding.


static uint64_t read_event( void ) {
	int i;
	char bytes[8];
	uint64_t ev = 0;
	int code = spiRead( event_reg, bytes, 8 );
	if( code != 8 ) {
		gpio_perror( "lexagse", code );
		exit( 1 );
	}
	for( i = 0; i < 8; i += 1 ) {		// reverse byte order
		ev = ev << 8 | bytes[i];
	}
	return ev;
}

static int check_event( void ) {
	int rdy = gpioRead( EVENT_RDY );
	if( rdy < 0 ) {
		gpio_perror( "lexagse", rdy );
		exit( 1 );
	}
	return rdy;
}

static void log_event ( void ) {
	
	uint64_t event = read_event();
	
	unsigned fpm_id = event >> 61 & 3;
	unsigned mpu_time = event >> 36 & 0x1ffffff;
	unsigned slow_ph = event >> 24 & 0xfff;
	unsigned fast_ph = event >> 12 & 0xfff;
	unsigned dead_time = event >> 5 & 0x7f;
	unsigned slow = event >> 4 & 1;
	unsigned fast = event >> 3 & 1;
	unsigned force = event >> 2 & 1;
	unsigned over = event >> 1 & 1;
	unsigned dump = event & 1;
	
	lock_out();
	timetag();
	printf( "event\t%u\t%u\t%u\t%u\t%u\n", 
		fpm_id, mpu_time, slow_ph, fast_ph, dead_time );
	timetag();
	printf( "flags\t%u\t%u\t%u\t%u\t%u\n", 
		slow, fast, force, over, dump );
	unlock_out();

	if( slow || fast ) click();
}

static void flush_events( void ) {
	while( check_event()) (void) read_event();
}

// ISR. Log all enqueued events.

static void event_handler( int gpio, int level, uint32_t tick ) {
	while( check_event()) log_event();
}

// Here, use a timeout to potentially recover from a lost interrupt.

static void auto_mode( void ) {
	flush_events();
	int code = gpioSetISRFunc( 
		EVENT_RDY, RISING_EDGE, EVENT_TIMEOUT, event_handler );
        if( code ) {
                gpio_perror( "xtragse", code );
                exit( 1 );
        }
}

static void idle_mode( void ) {
	int code = gpioSetISRFunc( EVENT_RDY, RISING_EDGE, 0, NULL );
        if( code ) {
                gpio_perror( "xtragse", code );
                exit( 1 );
        }
	input( EVENT_RDY );	// go back to having it a simple input
}
		
		
static void test_enable( int enable ) {
	int code = gpioWrite( TEST_ENABLE, enable );
	if( code >=0 ) return;
	
	gpio_perror( "lexagse", code );
	exit( 1 );
}


static void initialize( void ){
	
	int code = gpioInitialise();
	if( code < 0 ) {
		gpio_perror( "lexagse", code );
		exit( 1 );
	}
	
	atexit( cleanup );
	
	code = gpioWaveClear();			// paranoia
	if( code < 0 ) {
		gpio_perror( "lexagse", code );
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
		gpio_perror( "lexagse", adr_reg );
		exit( 1 );
	}
	
	data_reg = spiOpen( DATA, 1000000, DATAFLAGS );
	if( data_reg < 0 ) {
		gpio_perror( "lexagse", data_reg );
		exit( 1 );
	}
	
	event_reg = spiOpen( EVENT, 1000000, EVENTFLAGS );
	if( event_reg < 0 ) {
		gpio_perror( "lexagse", event_reg );
		exit( 1 );
	}
		
	code = pthread_mutex_init( &m_out, NULL );
	if( code ) {
		perror( "lexagse" );
		exit( 1 );
	}
	
	init_click( 100, 20 );
	
	code = gpioSetTimerFunc( PPS_TIMER, 500, pps );
	if( code ) {
		gpio_perror( "lexagse", code );
		exit( 1 );
	}
	
	code = gpioSetTimerFunc( TIME_TIMER, 60000, log_time );
	if( code ) {
		gpio_perror( "lexagse", code );
		exit( 1 );
	}
	
	log_time();
}

static void loop( void ){

	char txpair[2], rxpair[2];
	uint16_t datareg;
	int detid;
	unsigned seconds;
	
	for(;;){
		errno = 0;	/* so that EOF is distinguished from error */
		char *line = NULL;
		size_t ll = 0;
		int code = getline( &line, &ll, stdin );
		if (code == -1 ) {
			if(errno != 0) { 
                           perror("lexagse");
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
		} else if( strncmp( "ready?", dbl, 6 ) == 0 ){
			lock_out();
			timetag();
			printf( "event_rdy\t%d\n", check_event());
			unlock_out();
		} else if ( strncmp( "event", dbl, 5 ) == 0 ) {
			if( check_event()) log_event();
		} else if( strncmp( "auto", dbl, 4 ) == 0 ) {
			auto_mode();
		} else if( strncmp( "idle", dbl, 4 ) == 0 ) {
			idle_mode();
		} else if ( 2 == sscanf( dbl, "xadr %hhx %hhx", 
			txpair, txpair + 1 )){
			
			xadr( txpair, rxpair );
			lock_out();
			timetag();
			printf( "last_adr\t%x\t%x\n", rxpair[0], rxpair[1] );
			timetag();
			printf( "current_adr\t%x\t%x\n", txpair[0], txpair[1] );
			unlock_out();
		} else if ( 1 == sscanf( dbl, "xdata %hu", &datareg )){
			txpair[0] = datareg>>8;
			txpair[1] = datareg & 0xff;
			xdata( txpair, rxpair );
			lock_out();
			timetag();
			printf( "data_out\t%u\n", 
				txpair[1] + (txpair[0]<<8));
			timetag();
			printf( "data_in\t%u\n", rxpair[1] + (rxpair[0]<<8));
			unlock_out();
		} else if ( 1 == sscanf( dbl, "force %d", &detid )){
			switch( detid ) {
			case 0:
				pulse( FORCE0 );
				break;
			case 1:
				pulse( FORCE1 );
				break;
			default:
				fprintf( stderr,
					"Impossible detector ID: %d\n", detid );
			}
		} else if ( 1 == sscanf( dbl, "dwell %u", &seconds )){
			sleep( seconds );
		} else if( !*dbl || *dbl == '#' ) {	/* nothing */
		} else {
			fprintf(stderr, 
				"unrecognized lexagse command: %s\n", line );
		}
		
		free( line );
	}
}
		

int main( int argc, char **argv ) {
	initialize();
	loop();
	exit( 0 );
}
