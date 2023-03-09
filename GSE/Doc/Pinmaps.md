## Jtp (MPU)

Jtp has every digital signal from the interface between the analog part of the MPU and the FPGA.

| Pin | Signal |
| --- | --- |
| 1 | GND |
| 2 | FTRIG-0 |
| 3 | FCNV-0 |
| 4 | FZX-0 |
| 5 | FSDO-0 |
| 6 | DUMP-0 |
| 7 | FSCK-0 |
| 8 | GND |
| 9 | STRIG-0 |
| 10 | SCNV-0 |
| 11 | SZX-0 |
| 12 | SSDO-0 |
| 13 | SSCK-0 |
| 14 | OVER-0 |
| 15 | FULL-0 |
| 16 | GND |
| 17 | FTRIG-1 |
| 18 | FCNV-1 |
| 19 | FZX-1 |
| 20 | FSDO-1 |
| 21 | DUMP-1 |
| 22 | FSCK-1 |
| 23 | GND |
| 24 | STRIG-1 |
| 25 | SCNV-1 |
| 26 | SZX-1 |
| 27 | SSDO-1 |
| 28 | SSCK-1 |
| 29 | OVER-1 |
| 30 | FULL-1 |
| 31 | GND |
| 32 | \_ID2 |
| 33 | \_ID1 |
| 34 | \_ID0 |
| 35 | \_SYNC |
| 36 | GND |
| 37 | SCLK |
| 38 | DIN |
| 39 | HVCLK |
| 40 | \_PUR |
| 41 | GND |
| 42 | HKEN1 |
| 43 | HKEN0 |
| 44 | HK2 |
| 45 | HK1 |
| 46 | HK0 |
| 47 | HCNV |
| 48 | HSDO |
| 49 | HSCK |
| 50 | GND |

## Jdb (MPU)

Jdb is for FPGA debugging. Signals are defined in FPGA microcode and will depend on what needs watching.

| Pin | Signal |
| --- | --- |
| 1 | GND |
| 2 | DB0 |
| 3 | DB1 |
| 4 | DB2 |
| 5 | DB3 |
| 6 | DB4 |
| 7 | DB5 |
| 8 | DB6 |
| 9 | DB7 |
| 10 | GND |
| 11 | GND |
| 12 | DB8 |
| 13 | DB9 |
| 14 | DB10 |
| 15 | DB11 |
| 16 | DB12 |
| 17 | DB13 |
| 18 | DB14 |
| 19 | DB15 |
| 20 | GND |

## JP (MPU) J3 (GSE) J4 (GSE)

Power connectors. The power supply connects to J3. The GSE board relays power to the MPU via J4, cabled to JP.

| Pin | Signal |
| --- | --- |
| 1 | +3.3V |
| 2 | GND |
| 3 | GND |
| 4 | +5V |
| 5 | +5V |
| 7 | -5V |
| 8 | GND |

## JPPS (MPU) JPPS (GSE)

This is an LVDS pair. A cable between these allows the Raspberry Pi to send a PPS pulse to the FPGA. A more stable source could also be connected to the MPU if desired.

| Pin | Signal |
| --- | --- |
| 1 | GND |
| 2 | PPS+ |
| 3 | PPS- |
| 4 | GND |

## JTEST (MPU) J2 (GSE)
| Pin | Signal | Bit |
| --- | --- | --- |
| 1 | SPI0\_MOSI |  |
| 3 | SPI0\_MISO |  |
| 5 | SPIO\_SCLK |  |
| 7 | SPI0\_CE0\_N |  |
| 9 | SPI0\_CE1\_N |  |
| 11 | SPI1\_MOSI | Unused |
| 13 | SPI1\_MISO |  |
| 15 | SPI1\_SCLK |  |
| 17 | SPI1\_CE0 |  |
| 19 | FORCE0 | GPIO17 |
| 21 | FORCE1 | GPIO22 |
| 23 | EVENT\_RDY | GPIO27 |
| 25 | TEST\_ENABLE | GPIO23 |

## J1 (GSE)

| Pin | Signal | Bit |
| --- | --- | --- |
| 3 | CLICK | GPIO2 |
| 11 | FORCE0 | GPIO17 |
| 12 | SPI1\_CE0 | GPIO18 |
| 13 | EVENT\_RDY | GPIO27 |
| 15 | FORCE1 | GPIO22 |
| 16 | TEST\_ENABLE | GPIO23 |
| 19 | SPI0\_MOSI | GPIO10 |
| 21 | SPI0\_MISO | GPIO9 |
| 23 | SPIO\_SCLK |  GPIO11 |
| 24 | SPI0\_CE0\_N | GPIO8 |
| 26 | SPI0\_CE1\_N | GPIO7 |
| 35 | SPI1\_MISO | GPIO19 |
| 38 | SPI1\_MOSI | GPIO20 |
| 40 | SPI1\_SCLK | GPIO21 |
