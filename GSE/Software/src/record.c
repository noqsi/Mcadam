#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>
#include <pigpio.h>
#include "record.h"

struct recorded_event {
	struct recorded_event *next;
	int seconds, micros;
	uint64_t event;
};

static struct recorded_event *first, *last;

static pthread_mutex_t m_record;		// Lock for recorded event queue


static void lock_record( void ) {
	int code = pthread_mutex_lock( &m_record );
	if( code ) {
		perror( "lexagse" );
		exit( 1 );
	}
}

static void unlock_record( void ) {
	int code = pthread_mutex_unlock( &m_record );
	if( code ) {
		perror( "lexagse" );
		exit( 1 );
	}
}

// ev should point to a malloc'd structure with NULL ev->next

static void append_event( struct recorded_event *ev ) {
	lock_record();

	if( first && last ) {	// there's a record to add to
		last->next = ev;
		last = ev;
	} else {
		first = last = ev;
	}
	
	unlock_record();
}

// Caller should free() the returned struct when done with it

static struct recorded_event *fetch_event( void ) {
	lock_record();
	
	struct recorded_event *ev = first;
	
	if( ev ) first = ev->next;
	
	unlock_record();
	
	return ev;
}	


void record_event( uint64_t event_code ) {
	struct recorded_event *ev = calloc( 1, sizeof( struct recorded_event));
	
	gpioTime(PI_TIME_ABSOLUTE, &ev->seconds, &ev->micros);
	ev->event = event_code;
	
	append_event( ev );
}

// returns 0 if queue empty, otherwise 1

int play_event( void ) {
	struct recorded_event *ev = fetch_event();
	
	if( ev ) {
			
		unsigned fpm_id = ev->event >> 61 & 3;
		unsigned mpu_time = ev->event >> 36 & 0x1ffffff;
		unsigned slow_ph = ev->event >> 24 & 0xfff;
		unsigned fast_ph = ev->event >> 12 & 0xfff;
		unsigned dead_time = ev->event >> 5 & 0x7f;
		unsigned slow = ev->event >> 4 & 1;
		unsigned fast = ev->event >> 3 & 1;
		unsigned force = ev->event >> 2 & 1;
		unsigned over = ev->event >> 1 & 1;
		unsigned dump = ev->event & 1;

		printf( "%f\t", ev->seconds + .0000001*ev->micros );
		printf( "event\t%u\t%u\t%u\t%u\t%u\n", 
			fpm_id, mpu_time, slow_ph, fast_ph, dead_time );
		printf( "%f\t", ev->seconds + .0000001*ev->micros );
		printf( "flags\t%u\t%u\t%u\t%u\t%u\n", 
			slow, fast, force, over, dump );
		
		free( ev );
		return 1;
	}
	
	return 0;
}
	
void clear_recorder( void ) {
	for(;;){
		struct recorded_event *ev = fetch_event();
		if( !ev ) return;
		free( ev );
	}
}
