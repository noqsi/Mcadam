// Using BANK0

#define MAX_GPIO 27

// GPIO bit numbers

#define FORCE0	26
#define FORCE1	22
#define EVENT_RDY	27
#define TEST_ENABLE	23
#define CLICK	2

// SPIO CE bits

#define ADR 	0
#define	DATA	1

// SPI1 CE bit

#define EVENT	0

// SPI GPIO assignments. Maybe not needed in code, but tabulated here.

#define SPI0_MOSI	10
#define SPI0_MISO	9
#define SPI0_SCLK	11
#define SPI0_CE0_N	8
#define SPI0_CE1_N	7
#define SPI1_MOSI	20
#define SPI1_MISO	19
#define SPI1_SCLK	21
#define	SPI1_CE0_N	18

// Defaults should work for SPI, if not change these according pigpio docs

#define ADRFLAGS 	0
#define DATAFLAGS	0
#define EVENTFLAGS	0x100	// Aux SPI

// Defs for FPGA registers. See test_if.txt

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
