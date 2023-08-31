# LEXA GSE Software Manual
## Installation
The `lexagse` utility runs on a Raspberry Pi 400 computer. It may also be runnable on other Raspberry Pi models, but this has not been tested. It cannot be run on other computers as it depends on Raspberry Pi embedded I/O (pigpio).

To install it, first issue the following commands in a terminal window to make sure your software is up to date and pigpio is installed.

```
sudo apt update
sudo apt upgrade
sudo apt install pigpio
```

Then get the project files:

```
git clone https://github.com/noqsi/Mcadam.git
```

This will pick up all of the controlled source files for hardware and software developed by Noqsi Aerospace for the LEXA project (thus not the PCB or FPGA design).

Next, build and install the program:

```
cd Mcadam/GSE/Software/src/
make
sudo make install
```

## Usage
The `lexagse` utility is a simple Linux "filter": it accepts commands from standard input and writes responses and other data to standard output. It does not use command arguments, usage in simply:

`lexagse`

You may create command scripts and execute them with commands like:

`lexagse <script_file`

`lexagse` preserves the FPGA and GSE interface states between invocations.

## FPGA Data Model

The FPGA contains two address registers, an array of data registers, and an event queue.

The **xadr** command sets the contents of the address  registers. The write address register points to the data register that the **xdata** command writes. The read address register points to the register that the **xdata** command reads. Here are the addresses and functions of the data registers:

ADR | R/W | Bits | Description
--- | --- | --- | ---
x00 | rw  | - | null (no write)
x01 |rw  | 1 | MODE  0=off, 1=photons
x02| rw  | 1 |  HV\_CTRL 0=off, 1=on
x03 |rw  | 16 | DAC\_DATA AD5328 DAC data
x04 | rw | 8 | HSEC (histogram integration time)
x10 |rw  | 3 | FPM0\_FAST\_ADC\_GAIN 2^N ADC gain
x11 | rw  | 3 |FPM0\_SLOW\_ADC\_GAIN 2^N ADC gain
x12 |rw  | 16 | FPM0\_FAST\_ADC\_OFFSET] ADC offset
x13 | rw | 16 |FPM0\_SLOW\_ADC\_OFFSET
x20 | rw | 3 |FPM1\_FAST\_ADC\_GAIN 2^N ADC gain
x21 | rw | 3 |FPM1\_SLOW\_ADC\_GAIN 2^N ADC gain
x22 | rw | 16 |FPM1\_FAST\_ADC\_OFFSET
x23 | rw | 16 |FPM1\_SLOW\_ADC\_OFFSET
x30 | r | 16 | HK\_0\_0 (FLLD-0)
x31 | r | 16 | HK\_0\_1 (SLLD-0)
x32 | r | 16 | HK\_0\_2 (TEMP-0)
x33 | r | 16 | HK\_0\_3 (HOT-0)
x34 | r | 16 | HK\_0\_4 (HVHK-0)
x35 | r | 16 | HK\_0\_5 (TIS-0)
x36 | r | 16 | HK\_0\_6 (TVS-0)
x37 | r | 16 | HK\_0\_7 (unused)
x38 | r | 16 | HK\_1\_0 (FLLD-1)
x39 | r | 16 | HK\_1\_1 (SLLD-1)
x3A | r | 16 | HK\_1\_2 (TEMP-1)
x3B | r | 16 | HK\_1\_3 (HOT-1)
x3C | r | 16 | HK\_1\_4 (HVHK-1)
x3D | r | 16 | HK\_1\_5 (TIS-1)
x3E | r | 16 | HK\_1\_6 (TVS-1)
x3F | r | 16 | HK\_1\_7 (unused)

Event structure contents:

Name | Bits | Description
--- | --- | ---
fpm_id | 3 | FPM that produced this event
mpu_time | 25 | Time of the event in MPU clock ticks
slow_ph | 12 | Pulse height from slow shaper
fast_ph | 12 | Pulse height from fast shaper
dead_time | 7 | Event processing time
slow_flag | 1 | slow_ph is valid
fast_flag | 1 | fast_ph is valid
force_flag | 1 | Software trigger, both valid
over_flag | 1 | Excessive event amplitude
dump | 1 | Detector charge dump
## Commands
### click
Makes the loudspeaker click. For testing that the interface board is connected and powered. Yields no output.
### enable
Asserts the TEST_ENABLE pin on the MPU test connector, allowing the GSE to read and write data to the MPU. Yields no output.
### disable
Deasserts the TEST_ENABLE pin. Yields no output.

### ready?
Prints the value of the EVENT_READY signal. Output tag is **event\_rdy**, output data is 1 for ready, otherwise 0.

### xadr *wadr* *radr*

Exchange addresses. Sets the write and read register addresses *wadr* and *radr*, given in hexadecimal. Output tag is **last\_adr**. Output data is the previous settings of the write and read addresses.

### xdata *data*
Exchange data. Writes *data* to the data register addressed by the write register. Output tag is **data\_reg**. Output data is the value read from the data register addressed by the read register. Input and output values are unsigned decimal 0-65535.

### force *id*
Pulse the FORCE TRIGGER signal for the detector specified by *id*, which must be either 0 or 1. Yields no output.

### event

Collect any ready event. Yields output with **event** and **flags** tags.

### auto
Automatically collect ready events as they arrive. Same output as **event**, but the number of events is unlimited. Commands will still be processed while this is in progress.

### idle
Disable automatic event collection.

### dwell *seconds*

Suspend command input for the specified number of seconds, thus maintaining the current configuration. This is good for waiting for temperature to stabilize following a change in TEC current, or for timed exposures.


Q## Output

Output is in the form of lines of text containing fields separated by tabs. The first field is a time stamp in seconds since January 1, 1970 (POSIX standard). The second field is a tag that identifies the data type. Additional fields contain the data.

The program periodically generates timestamps.

| *t* | time | *human-readable time* |
| --- | --- | ---|

Example:

`1676987572.099603	time	Tue Feb 21 08:52:52 2023
`

Every command is logged.

| *t* | command | *command text* |
| --- | --- | ---|

Example:

`1676987786.036821	command	xdata 42
`

The response from the `ready?` command:

| *t* | event_rdy | 0 (not ready) or 1 (ready |
| --- | --- | ---|

Example:

`1676995081.065113	event_rdy	0`

The response from the `xadr` command:

| *t* | last_adr | *write adr* | *read adr* |
| --- | --- | ---| --- |

Example:

`1676995343.015674	last_adr	0	3a
`

The response from the `xdata` command:

| *t* | data_reg | *data value* |
| --- | --- | ---|

Example:

`1676995678.057810	data_reg	42`

The `event` and `flags` responses are generated together, either as a response to an `event` command, or automatically if automatic event collection is enabled. All data fields are decimal integers.

| *t* | event | *fpm\_id* | *mpu\_time* | *slow\_ph* | *fast_ph* | *dead_time* |
| --- | --- | ---|---|---|---|---|


| *t* | flags | *slow* | *fast* | *force* | *over* | *dump* |
| --- | --- | ---|---|---|---|---|

