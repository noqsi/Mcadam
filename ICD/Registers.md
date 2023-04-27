
## SPI0
 - 16-bit transfers
 - CE0 : MOSI=ADR\_REG  MISO=ADR\_REG(last)
 - CE1 : MOSI=WR\_REG   MISO=RD\ _REG

 ### ADR_REG
  - bits 15-8: 8-bit WADR
  -     7-0: 8-bit RADR

 ### ADR R/W Description
 
 Address | Direction | Function
 ------- | --------- | --------
 x00 | rw |   null (no write)
 x01 | rw |   MODE \[    0\] 0=off, 1=photons
 x02 | rw |   HV_CTRL \[    0\] 0=off, 1=on
 x03 | rw |   DAC_DATA \[15: 0\] AD5328 DAC data
 x04 | rw | HSEC
 x10 | rw |   FPM0\_FAST\_ADC\_GAIN  \[ 2: 0\] 2^N ADC gain
 x11 | rw |   FPM0\_SLOW\_ADC\_GAIN
 x12 | rw |   FPM0\_FAST\_ADC\_OFFSET \[15: 0\] 16-bit ADC offset
 x13 | rw |   FPM0\_SLOW\_ADC\_OFFSET
 x20 | rw |   FPM1\_FAST\_ADC\_GAIN
 x21 | rw |   FPM1\_SLOW\_ADC\_GAIN
 x22 | rw |   FPM1\_FAST\_ADC\_OFFSET
 x23 | rw |   FPM1\_SLOW\_ADC\_OFFSET
 x30 | r |    HK\_0\_0 (FLLD-0)
 x31 | r |    HK\_0\_1 (SLLD-0)
 x32 | r |    HK\_0\_2 (TEMP-0)
 x33 | r |    HK\_0\_3 (HOT-0)
 x34 | r |    HK\_0\_4 (HVHK-0)
 x35 | r |    HK\_0\_5 (TIS-0)
 x36 | r |    HK\_0\_6 (TVS-0)
 x37 | r |    HK\_0\_7 (unused)
 x38 | r |    HK\_1\_0 (FLLD-1)
 x39 | r |    HK\_1\_1 (SLLD-1)
 x3A | r |    HK\_1\_2 (TEMP-1)
 x3B | r |    HK\_1\_3 (HOT-1)
 x3C | r |    HK\_1\_4 (HVHK-1)
 x3D | r |    HK\_1\_5 (TIS-1)
 x3E | r |    HK\_1\_6 (TVS-1)
 x3F | r |    HK\_1\_7 (unused)


 ## SPI1
 
 - 64-bit transfers
 - CE0 : MOSI=n/a      MISO=EVT_PKT

 ### EVT_PKT
 
 Bits | Content
 ---- | ------
  \[63:61\] | fpm_id
  \[60:36\] | mpu_time
  \[35:24\] | slow_ph
  \[23:12\] | fast_ph
  \[11: 5\] | dead_time
  \[    4\] | slow_flag
  \[    3\] | fast_flag
  \[    2\] | force_flag
  \[    1\] | over_flag
  \[    0\] | dump_flag