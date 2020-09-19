# Mcadam FPGA ICD
Draft of September 14, 2020

John P. Doty, Noqsi Aerospace Ltd
##  Signals and Voltages

### Digital Interface Signals to Analog Electronics (AE)

#### Per-detector signals (two of each)

These are all 3.3V CMOS. Positive logic except **SYNC/**.

* **FTRIG** (AE->FPGA) A pulse has risen above the fast threshold.
* **FZX** (AE->FPGA) After **FTRIG** has been asserted, a rising edge of **FZX** occurs at the moment that the filtered pulse amplitude peaks. This is when the ADC acquisition cycle should start. **FZX** will usually be in an indeterminate state, but will go low at or before the time that **FTRIG** is asserted. The rising edge of **FZX** will occur at or after the trailing edge of **FTRIG**.
* **FCNV** (FPGA->AE) Initiates A/D conversion. The rise of this should asynchronously follow the rise of **FZX** following assertion of **FTRIG**. The fall of **FCNV** initiates ADC readout, and should be synchronized with **SCK**. The **FCNV** pulse should be at least 500ns wide.
* **FSDO** (AE->FPGA) ADC data bits. See Figure 28 of the AD7984 data sheet for acquisition timing.

**STRIG**, **SZX**, **SCNV**, and **SSDO** are functionally the same as the above signals, but serve the slow chain.

* **SCK** (FPGA->AE) ADC clock.
* **OVER** (AE->FPGA) Diagnoses analog overload.
* **FULL** (AE->FPGA) This indicates that the charge integrator in the detector is (nearly) full. The FPGA state machine should issue a **DUMP** pulse. Recording such events is useful for measuring total detector current, radiation plus dark leakage.
* **DUMP** (FPGA->AE) Dump the charge from the SDD's charge integrator. 5 µs, 3.3V pulse.

#### Housekeeping

#### Operating Parameter Control

#### Master clock

#### PPS and Spacewire

## Event Logic and Timing

Event acquisition potentially involves three separate but related activities for an event from a given detector.

1. Acquisition of a pulse height from the fast chain.
2. Acquisition of a pulse height from the slow chain.
3. Detector charge dump.

### Pulse Height Acquisition
![](AcqTiming.png)

Defining *tp* as the peaking time of the chain, 60 ns for the fast chain, 2 µs for the slow chain (TBR), we have the following relationships.

The trigger delay *td*, and the zero-crossing delay *zd* should obey:

0 < *td* < *tp*

0 < *zd* < *tp*

The zero-crossing signal **ZX** is valid for a time *zl* ≈ *tp* before its low to high transition, and *zh* ≈ *tp* after. Outside this interval, it is unpredictable.

The conversion delay *cd* should be minimized. Its estimated value for the FPGA implementation affects the fine tuning of fast shaper time constants.

This timing comes from analog functions driven by photon arrival time, so it is all asynchronous. Once conversion is initiated by a low to high, the acquisition of ADC data may proceed synchronously in accordance with the ADC7984 specification.

### Charge Dump

![](DumpTiming.png)

The detector accumulates charge from dark current, optical loading, particle background, and x-rays. The **FULL** flag indicates accumulation nearing the limit of the detector's capacity to store it. If an x-ray pushes the charge above threshold, it is desirable to acquire that x-ray pulse height before dumping the charge. The **DUMP** pulse should be delayed by an amount *tdd* to allow the acquisition, where:

*tdd* > *tp(slow)*

to insure that the slow channel has the opportunity to trigger. If an x-ray trigger occurs, the delay should be extended to avoid interfering with acquisition.

### Races and Dead Time



