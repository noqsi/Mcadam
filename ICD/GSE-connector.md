# APXS GSE Interface

## Overview

Two available SPI busses. SPI0 supports two devices, SPI1 supports three. Put housekeeping and DAC-controlled parameters on SPI0, events on SPI1.

SPI | CE | MOSI | MISO
---- | ---- |---- | ----
SPI0 | CE0 | HK_CONTROL | HK_DATA
SPI0 | CE1 | DAC_DATA | -
SPI1 | CE0 | - | PH_DATA
SPI1 | CE1 | ACQ_CONTROL | ACQ_STATUS

In addition, have a single line, WAKEUP, to inform the GSE of an event. This totals 11 lines. 13 are available. If we need another SPI device, we could assign a free line to SPI1-CE2, or do something else with it.

## GSE D-Sub connector map
Note that pin *n* is named BIT*n* in the schematic/netlist.

Pin | Function
--- | ---
1 | SPI0_MOSI
2 | SPIO_MISO
3 | SPIO_SCLK
4 | SPIO\_CE0_N
5 | SPIO\_CE1_N
6 | SPI1_MOSI
7 | SPI1_MISO
8 | SPI1_SCLK
9 | SPI1\_CE0_N
10 | SPI1\_CE1_N
11 | SPI1\_CE2_N (unused)
12 | WAKEUP
13 | (unused)

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
