// Using BANK0

#define MAX_GPIO 27

// GPIO bit numbers

#define FORCE0	0
#define FORCE1	2
#define EVENT_RDY	3
#define TEST_ENABLE	26
#define CLICK	25

// SPIO CE bits

#define ADR 	0
#define	DATA	1

// SPI1 CE bit

#define EVENT	0

// SPI GPIO assignments: force to input on cleanup.

#define SPI0_MOSI	10
#define SPI0_MISO	7
#define SPI0_SCLK	11
#define SPI0_CE0_N	8
#define SPI0_CE1_N	7
#define SPI1_MOSI	20
#define SPI1_MISO	19
#define SPI1_SCLK	21
#define	SPI1_CE0_N	18

// spiFlags consists of the least significant 22 bits.
// 
// 21 20 19 18 17 16 15 14 13 12 11 10  9  8  7  6  5  4  3  2  1  0
//  b  b  b  b  b  b  R  T  n  n  n  n  W  A u2 u1 u0 p2 p1 p0  m  m
// 
// 
// mm defines the SPI mode.
// 
// Warning: modes 1 and 3 do not appear to work on the auxiliary SPI.
// 
// Mode POL PHA
//  0    0   0
//  1    0   1
//  2    1   0
//  3    1   1
// 
// 
// px is 0 if CEx is active low (default) and 1 for active high.
// 
// ux is 0 if the CEx GPIO is reserved for SPI (default) and 1 otherwise.
// 
// A is 0 for the main SPI, 1 for the auxiliary SPI.
// 
// W is 0 if the device is not 3-wire, 1 if the device is 3-wire. Main SPI only.
// 
// nnnn defines the number of bytes (0-15) to write before switching the MOSI line to MISO to read data. This field is ignored if W is not set. Main SPI only.
// 
// T is 1 if the least significant bit is transmitted on MOSI first, the default (0) shifts the most significant bit out first. Auxiliary SPI only.
// 
// R is 1 if the least significant bit is received on MISO first, the default (0) receives the most significant bit first. Auxiliary SPI only.
// 
// bbbbbb defines the word size in bits (0-32). The default (0) sets 8 bits per word. Auxiliary SPI only.
// 

// ADR and DATA register flags

//  b  b  b  b  b  b  R  T  n  n  n  n  W  A u2 u1 u0 p2 p1 p0  m  m
//  0  0  0  0  0  0  0  0  0  0  0  0  0  0  1  0  0  0  0  0  0  0

#define ADRFLAGS 	0b10000000
#define DATAFLAGS	0b10000000

// ADC flags

//  b  b  b  b  b  b  R  T  n  n  n  n  W  A u2 u1 u0 p2 p1 p0  m  m
//  0  0  0  0  0  0  0  0  0  0  0  0  0  1  1  1  0  0  0  0  0  0

#define EVENTFLAGS	0b111000000

// ADR R/W Description
// x00 rw   null (no write)
#define NULLADR 0x00
// x01 rw   MODE
#define MODE 0x01
//           [    0] 0=off, 1=photons
// x02 rw   HV_CTRL
#define HV_CTRL 0x02
//           [    0] 0=off, 1=on
// x03 rw   DAC_DATA
#define DAC_DATA 0x03
//           [15: 0] AD5328 DAC data
// x10 rw   FPM0_FAST_ADC_GAIN
#define FPM0_FAST_ADC_GAIN 0x10
//           [ 2: 0] 2^N ADC gain
// x11 rw   FPM0_FAST_ADC_OFFSET
#define FPM0_FAST_ADC_OFFSET 0x11
//           [15: 0] 16-bit ADC offset
// x12 rw   FPM0_SLOW_ADC_GAIN
#define FPM0_SLOW_ADC_GAIN 0x12
// x13 rw   FPM0_SLOW_ADC_OFFSET
#define FPM0_SLOW_ADC_OFFSET 0x13
// x20 rw   FPM1_FAST_ADC_GAIN
#define FPM1_FAST_ADC_GAIN 0x20
// x21 rw   FPM1_FAST_ADC_OFFSET
#define FPM1_FAST_ADC_OFFSET 0x21
// x22 rw   FPM1_SLOW_ADC_GAIN
#define FPM1_SLOW_ADC_GAIN 0x22
// x23 rw   FPM1_SLOW_ADC_OFFSET
#define FPM1_SLOW_ADC_OFFSET 0x23
// x30 r    HK_0_0 (FLLD-0)
#define HK_0_0 0x30
// x31 r    HK_0_1 (SLLD-0)
#define HK_0_1 0x31
// x32 r    HK_0_2 (TEMP-0)
#define HK_0_2 0x32
// x33 r    HK_0_3 (HOT-0)
#define HK_0_3 0x33
// x34 r    HK_0_4 (HVHK-0)
#define HK_0_4 0x34
// x35 r    HK_0_5 (TIS-0)
#define HK_0_5 0x35
// x36 r    HK_0_6 (TVS-0)
#define HK_0_6 0x36
// x37 r    HK_0_7 (unused)
#define HK_0_7 0x37
// x38 r    HK_1_0 (FLLD-1)
#define HK_1_0 0x38
// x39 r    HK_1_1 (SLLD-1)
#define HK_1_1 0x39
// x3A r    HK_1_2 (TEMP-1)
#define HK_1_2 0x3A
// x3B r    HK_1_3 (HOT-1)
#define HK_1_3 0x3B
// x3C r    HK_1_4 (HVHK-1)
#define HK_1_4 0x3C
// x3D r    HK_1_5 (TIS-1)
#define HK_1_5 0x3D
// x3E r    HK_1_6 (TVS-1)
#define HK_1_6 0x3E
// x3F r    HK_1_7 (unused)
#define HK_1_7 0x3F
