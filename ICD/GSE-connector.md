# LEXA GSE Interface

## Overview

Two available SPI busses. SPI0 supports two devices, SPI1 supports three. Put housekeeping and DAC-controlled parameters on SPI0, events on SPI1.

SPI | CE | MOSI | MISO
---- | ---- |---- | ----
SPI0 | CE0 | ADR_REG | ADR_REG (last)
SPI0 | CE1 | WR_REG | RD_REG
SPI1 | CE0 | - | EVT_PKT

In addition, have a single line, WAKEUP, to inform the GSE of an event. This totals 11 lines. 13 are available. If we need another SPI device, we could assign a free line to SPI1-CE2, or do something else with it.

## GSE D-Sub connector map
Note that pin *n* is named BIT*n* in the schematic/netlist.

Pin | Name | Function
--- | ---  | ---
1 | SPI0_MOSI | Register write
2 | SPI0_MISO | Register read
3 | SPI0_SCLK | Register access
4 | SPI0\_CE0_N | Address read/write
5 | SPI0\_CE1_N | Data read/write
6 | SPI1_MOSI (unused)
7 | SPI1_MISO | Packet read
8 | SPI1_SCLK | Packet read
9 | SPI1\_CE0_N | Packet read
10 | FORCE0 | Force trigger FPM 0
11 | FORCE1 | Force trigger FPM 1
12 | EVENT_RDY | Event packet read to read
13 | TEST_ENABLE | Set high to enable this interface

## Raspberry Pi GPIO assignments

D-Sub Pin | Pi Pin | Name | GPIO
--- | --- | --- | ---
1 | 19 | SPI0_MOSI | 10
2 | 21 | SPI0_MISO | 9
3 | 23 | SPI0_SCLK | 11
4 | 24 | SPI0\_CE0_N | 8
5 | 26 | SPI0\_CE1_N | 7
6 | 38 | SPI1_MOSI | 20
7 | 35 | SPI1_MISO | 19
8 | 40 | SPI1_SCLK | 21
9 | 12 | SPI1\_CE0_N | 18
10 | 11 | FORCE0 | 17
11 | 15 | FORCE1 | 22
12 | 13 | EVENT_RDY | 27
13 | 16 | TEST_ENABLE | 23

## Data bits

I assume all devices use 16 bit data transfers.

### HK_CONTROL
Bit | FUNCTION
--- | ---
0 | HK0
1 | HK1
2 | HK2
3 | HKEN0
4 | HKEN1
5-15 | -

### HK_DATA

Bit | FUNCTION
--- | ---
0-15 | HK ADC Data, 16 MSBs from AD7984

### DAC_DATA
Bit | Function
--- | -----
0-15 | DAC command/data to AD5328

### PH_DATA
Bit | Function
--- | -----
0-15| Pulse heigth, 16 MSBs from selected AD7984

### ACQ_CONTROL
Bit | Function
--- | -----
0 | Select detector
1 | Select chain, 0=Fast
2 | DUMP-0
3 | DUMP-1
4 | Force trigger, Fast 0
5 | Force trigger, Slow 0
6 | Force trigger, Fast 1
7 | Force trigger, Slow 1
8-15 | -

### ACQ_STATUS
Bit | Function
--- | -----
0 | Fast trigger 0
1 | Slow trigger 0
2 | Fast trigger 1
3 | Slow trigger 1
4 | Overshoot 0
5 | Overshoot 1
6 | Full 0
7 | Full 1
8-15 | -

### WAKEUP
The WAKEUP bit is the logical OR of the bits in ACQ_STATUS.
