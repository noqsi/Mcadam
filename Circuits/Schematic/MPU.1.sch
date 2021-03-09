v 20200604 2
C 40000 40000 0 0 0 Noqsi-title-B.sym
{
T 50000 40500 5 10 1 1 0 0 1
date=20200309
T 53900 40500 5 10 1 1 0 0 1
rev=Mcadam1.9
T 55400 40200 5 10 1 1 0 0 1
auth=jpd
T 53200 41200 5 14 1 1 0 4 1
title=Mcadam SDD
}
U 51800 46300 51800 49400 10 -1
N 49100 49000 51600 49000 4
{
T 48900 49100 5 10 1 1 0 1 1
netname=FSDO-0
}
C 51600 49000 1 270 0 busripper-1.sym
C 51600 48700 1 270 0 busripper-1.sym
N 49100 48700 51600 48700 4
{
T 48900 48800 5 10 1 1 0 1 1
netname=SSDO-0
}
C 51600 48400 1 270 0 busripper-1.sym
N 49100 48400 51600 48400 4
{
T 48900 48500 5 10 1 1 0 1 1
netname=FTRIG-0
}
C 51600 48100 1 270 0 busripper-1.sym
N 49100 48100 51600 48100 4
{
T 48900 48200 5 10 1 1 0 1 1
netname=FZX-0
}
C 51600 47800 1 270 0 busripper-1.sym
N 49100 47800 51600 47800 4
{
T 48900 47900 5 10 1 1 0 1 1
netname=STRIG-0
}
C 51600 47500 1 270 0 busripper-1.sym
N 49100 47500 51600 47500 4
{
T 48900 47600 5 10 1 1 0 1 1
netname=SZX-0
}
C 51600 47200 1 270 0 busripper-1.sym
N 49100 47200 51600 47200 4
{
T 48900 47300 5 10 1 1 0 1 1
netname=FULL-0
}
C 51600 46900 1 270 0 busripper-1.sym
N 49100 46900 51600 46900 4
{
T 48900 47000 5 10 1 1 0 1 1
netname=OVER-0
}
C 45400 48200 1 0 1 busripper-1.sym
N 46300 48200 45400 48200 4
{
T 46500 48300 5 10 1 1 0 7 1
netname=DUMP-0
}
U 51800 41600 51800 46300 10 -1
N 49100 42000 51600 42000 4
{
T 48900 41900 5 10 1 1 180 7 1
netname=FSDO-1
}
C 51600 44100 1 270 0 busripper-1.sym
C 51600 43800 1 270 0 busripper-1.sym
N 49100 42300 51600 42300 4
{
T 48900 42200 5 10 1 1 180 7 1
netname=SSDO-1
}
C 51600 43500 1 270 0 busripper-1.sym
N 49100 42600 51600 42600 4
{
T 48900 42500 5 10 1 1 180 7 1
netname=FTRIG-1
}
C 51600 43200 1 270 0 busripper-1.sym
N 49100 42900 51600 42900 4
{
T 48900 42800 5 10 1 1 180 7 1
netname=FZX-1
}
C 51600 42900 1 270 0 busripper-1.sym
N 49100 43200 51600 43200 4
{
T 48900 43100 5 10 1 1 180 7 1
netname=STRIG-1
}
C 51600 42600 1 270 0 busripper-1.sym
N 49100 43500 51600 43500 4
{
T 48900 43400 5 10 1 1 180 7 1
netname=SZX-1
}
C 51600 42300 1 270 0 busripper-1.sym
N 49100 43800 51600 43800 4
{
T 48900 43700 5 10 1 1 180 7 1
netname=FULL-1
}
C 51600 42000 1 270 0 busripper-1.sym
N 49100 44100 51600 44100 4
{
T 48900 44000 5 10 1 1 180 7 1
netname=OVER-1
}
C 45400 42800 1 0 1 busripper-1.sym
N 46300 42800 45400 42800 4
{
T 46500 42700 5 10 1 1 180 1 1
netname=DUMP-1
}
N 52000 48900 55500 48900 4
{
T 52700 49000 5 10 1 1 0 6 1
netname=DIN+
}
C 52000 48900 1 180 0 busripper-1.sym
N 52000 48000 55200 48000 4
{
T 52600 48100 5 10 1 1 0 6 1
netname=DIN-
}
C 52000 48000 1 180 0 busripper-1.sym
N 52000 47700 54900 47700 4
{
T 52700 47800 5 10 1 1 0 6 1
netname=SIN+
}
C 52000 47700 1 180 0 busripper-1.sym
N 53800 46800 52000 46800 4
{
T 52600 46900 5 10 1 1 0 6 1
netname=SIN-
}
C 52000 46800 1 180 0 busripper-1.sym
N 52900 43500 52000 43500 4
{
T 52800 43550 5 10 1 1 0 6 1
netname=DOUT-
}
C 52000 43500 1 0 1 busripper-1.sym
N 52900 44400 52000 44400 4
{
T 52900 44500 5 10 1 1 0 6 1
netname=DOUT+
}
C 52000 44400 1 0 1 busripper-1.sym
N 52900 45100 52000 45100 4
{
T 52800 45200 5 10 1 1 0 6 1
netname=SOUT-
}
C 52000 45100 1 0 1 busripper-1.sym
N 52900 46000 52000 46000 4
{
T 52900 46100 5 10 1 1 0 6 1
netname=SOUT+
}
C 52000 46000 1 0 1 busripper-1.sym
C 52900 48000 1 90 0 resistor5.sym
{
T 53200 48800 5 10 1 1 180 0 1
refdes=R1
T 53300 48500 5 10 1 1 180 0 1
value=100
}
C 56700 44800 1 0 1 DB9-1.sym
{
T 56500 48000 5 10 1 1 0 6 1
refdes=JS
T 56700 44800 5 10 0 0 0 0 1
footprint=MDM9S
T 56700 44800 5 10 0 0 0 0 1
pins=9
T 55700 47700 5 10 0 0 0 6 1
device=MDM9
T 56700 44800 5 10 0 0 0 0 1
value=MDM-9SCBRM7
}
C 55100 46100 1 0 0 gnd-1.sym
N 55200 46400 55500 46400 4
N 55500 46400 55500 46300 4
C 52900 46800 1 90 0 resistor5.sym
{
T 53200 47600 5 10 1 1 180 0 1
refdes=R2
T 53300 47300 5 10 1 1 180 0 1
value=100
}
C 53900 45100 1 90 0 resistor5.sym
{
T 54200 45900 5 10 1 1 180 0 1
refdes=R3
T 54300 45600 5 10 1 1 180 0 1
value=140
}
C 52900 45900 1 0 0 resistor5.sym
{
T 53100 46200 5 10 1 1 0 0 1
refdes=R4
T 53200 45700 5 10 1 1 0 0 1
value=165
}
C 52900 45000 1 0 0 resistor5.sym
{
T 53100 45300 5 10 1 1 0 0 1
refdes=R5
T 53200 44800 5 10 1 1 0 0 1
value=165
}
C 53900 43500 1 90 0 resistor5.sym
{
T 54200 44300 5 10 1 1 180 0 1
refdes=R6
T 54300 44000 5 10 1 1 180 0 1
value=140
}
C 52900 44300 1 0 0 resistor5.sym
{
T 53100 44600 5 10 1 1 0 0 1
refdes=R7
T 53200 44100 5 10 1 1 0 0 1
value=165
}
C 52900 43400 1 0 0 resistor5.sym
{
T 53100 43700 5 10 1 1 0 0 1
refdes=R8
T 53200 43200 5 10 1 1 0 0 1
value=165
}
N 55500 46000 53800 46000 4
N 55500 45700 54400 45700 4
N 54400 45100 54400 45700 4
N 54400 45100 53800 45100 4
N 55500 45400 54700 45400 4
N 54700 44400 54700 45400 4
N 54700 44400 53800 44400 4
N 55500 43500 55500 45100 4
N 55500 43500 53800 43500 4
N 55500 46600 53800 46600 4
N 53800 46600 53800 46800 4
N 55500 47500 55500 48900 4
N 55500 47200 55200 47200 4
N 55200 47200 55200 48000 4
N 55500 46900 54900 46900 4
N 54900 46900 54900 47700 4
C 44100 48700 1 90 0 resistor5.sym
{
T 44400 49500 5 10 1 1 180 0 1
refdes=R9
T 44500 49200 5 10 1 1 180 0 1
value=100
}
N 43000 49600 45000 49600 4
{
T 44400 49700 5 10 1 1 0 0 1
netname=PPS+
}
C 45000 49600 1 270 0 busripper-1.sym
N 41600 48700 45000 48700 4
{
T 44400 48500 5 10 1 1 0 0 1
netname=PPS-
}
C 45000 48700 1 270 0 busripper-1.sym
C 41600 49000 1 0 0 header4.sym
{
T 42200 49900 5 10 1 1 0 0 1
refdes=JPPS
T 41600 49000 5 10 0 0 0 0 1
footprint=HEADER4
}
C 42900 48900 1 0 0 gnd-1.sym
C 41300 49300 1 0 0 gnd-1.sym
N 41400 49600 41600 49600 4
N 41600 49200 41600 48700 4
C 50000 44600 1 0 0 FPGA.sym
{
T 50300 44900 5 10 1 1 0 0 1
device=FPGA
T 50400 45400 5 10 1 1 0 0 1
refdes=U1
}
C 46300 46300 1 0 0 PerFPM.sym
{
T 49100 49600 5 10 1 1 0 6 1
refdes=F0
}
C 46300 44700 1 180 1 PerFPM.sym
{
T 49100 41400 5 10 1 1 180 0 1
refdes=F1
}
C 48400 46000 1 0 0 gnd-1.sym
C 48900 44400 1 0 0 gnd-1.sym
N 49000 44700 48500 44700 4
U 51100 45200 51800 45200 10 0
U 50000 45200 45200 45200 10 0
U 45200 49700 45200 41700 10 -1
U 45900 45700 48800 45700 10 1
N 46800 46300 46800 45900 4
{
T 47000 46600 5 10 1 1 270 2 1
netname=TVS-0
}
C 46800 45900 1 270 0 busripper-1.sym
N 47100 46300 47100 45900 4
{
T 47300 46600 5 10 1 1 270 2 1
netname=TIS-0
}
C 47100 45900 1 270 0 busripper-1.sym
N 47400 46300 47400 45900 4
{
T 47600 46600 5 10 1 1 270 2 1
netname=HVHK-0
}
C 47400 45900 1 270 0 busripper-1.sym
N 47700 46300 47700 45900 4
{
T 47900 46600 5 10 1 1 270 2 1
netname=HOT-0
}
C 47700 45900 1 270 0 busripper-1.sym
N 48000 46300 48000 45900 4
{
T 48200 46600 5 10 1 1 270 2 1
netname=TEMP-0
}
C 48000 45900 1 270 0 busripper-1.sym
N 46800 44700 46800 45500 4
{
T 47000 44400 5 10 1 1 90 0 1
netname=TVS-1
}
C 46800 45500 1 270 1 busripper-1.sym
N 47100 44700 47100 45500 4
{
T 47300 44400 5 10 1 1 90 0 1
netname=TIS-1
}
C 47100 45500 1 270 1 busripper-1.sym
N 47400 44700 47400 45500 4
{
T 47600 44400 5 10 1 1 90 0 1
netname=HVHK-1
}
C 47400 45500 1 270 1 busripper-1.sym
N 47700 44700 47700 45500 4
{
T 47900 44400 5 10 1 1 90 0 1
netname=HOT-1
}
C 47700 45500 1 270 1 busripper-1.sym
N 48000 44700 48000 45500 4
{
T 48200 44400 5 10 1 1 90 0 1
netname=TEMP-1
}
C 48000 45500 1 270 1 busripper-1.sym
C 45700 47900 1 0 1 busripper-1.sym
N 46300 47900 45700 47900 4
{
T 46500 48000 5 10 1 1 0 7 1
netname=FLLD-0
}
C 45700 47600 1 0 1 busripper-1.sym
N 46300 47600 45700 47600 4
{
T 46500 47700 5 10 1 1 0 7 1
netname=HVDAC-0
}
C 45700 47300 1 0 1 busripper-1.sym
N 46300 47300 45700 47300 4
{
T 46500 47400 5 10 1 1 0 7 1
netname=SLLD-0
}
C 45700 47000 1 0 1 busripper-1.sym
N 46300 47000 45700 47000 4
{
T 46500 47100 5 10 1 1 0 7 1
netname=TDAC-0
}
C 45700 44000 1 0 1 busripper-1.sym
N 46300 43100 45700 43100 4
{
T 46500 43000 5 10 1 1 180 1 1
netname=FLLD-1
}
C 45700 43700 1 0 1 busripper-1.sym
N 46300 43400 45700 43400 4
{
T 46500 43300 5 10 1 1 180 1 1
netname=HVDAC-1
}
C 45700 43400 1 0 1 busripper-1.sym
N 46300 43700 45700 43700 4
{
T 46500 43600 5 10 1 1 180 1 1
netname=SLLD-1
}
C 45700 43100 1 0 1 busripper-1.sym
N 46300 44000 45700 44000 4
{
T 46500 43900 5 10 1 1 180 1 1
netname=TDAC-1
}
U 45500 48100 45500 45700 10 0
U 45500 45700 45900 45700 10 0
U 45500 45700 45500 43200 10 0
T 49200 45700 9 10 1 0 0 4 1
Page 2
L 48900 45850 49500 45850 3 10 1 0 -1 -1
L 49500 45850 49600 45700 3 10 1 0 -1 -1
L 49600 45700 49500 45550 3 10 1 0 -1 -1
L 49500 45550 48900 45550 3 10 1 0 -1 -1
L 48900 45550 48800 45700 3 10 1 0 -1 -1
L 48800 45700 48900 45850 3 10 1 0 -1 -1
C 47200 50400 1 0 0 2.5V-plus-1.sym
C 47500 50200 1 0 0 3.3V-plus-1.sym
C 46900 50200 1 0 0 5V-minus-1.sym
C 46600 50400 1 0 0 5V-plus-1.sym
C 47800 50400 1 0 0 VFS.sym
C 48100 50200 1 0 0 VHS.sym
C 48400 50400 1 0 0 HVrail.sym
C 47200 40800 1 180 1 2.5V-plus-1.sym
C 47500 40600 1 180 1 3.3V-plus-1.sym
C 46900 40600 1 180 1 5V-minus-1.sym
C 46600 40800 1 180 1 5V-plus-1.sym
C 47800 40800 1 180 1 VFS.sym
C 48100 40600 1 180 1 VHS.sym
C 48400 40800 1 180 1 HVrail.sym
N 47100 40600 47100 40800 4
N 47700 40600 47700 40800 4
N 48300 40600 48300 40800 4
T 50400 40200 9 10 1 0 0 0 1
1
T 52000 40200 9 10 1 0 0 0 1
4
T 40700 40600 9 20 1 0 0 0 1
X-ray Signal Flow
T 41800 48100 9 10 1 0 0 0 2
100 ohm LVDS balanced pair
R9 near FPGA
T 52300 42700 9 10 1 0 0 0 2
100 ohm LVDS balanced pairs
Resistors near FPGA
C 41800 45500 1 0 0 header6.sym
{
T 42400 46800 5 10 1 1 0 0 1
refdes=JID
T 41800 45500 5 10 0 0 0 0 1
footprint=HEADER6
}
C 41700 45400 1 0 0 gnd-1.sym
N 41800 46500 41800 45700 4
N 43200 45700 45000 45700 4
{
T 44000 45700 5 10 1 1 0 0 1
netname=\_ID2
}
C 45000 45700 1 270 0 busripper-1.sym
N 43200 46100 45000 46100 4
{
T 44000 46100 5 10 1 1 0 0 1
netname=\_ID1
}
C 45000 46100 1 270 0 busripper-1.sym
N 43200 46500 45000 46500 4
{
T 44000 46500 5 10 1 1 0 0 1
netname=\_ID0
}
C 45000 46500 1 270 0 busripper-1.sym
N 47400 50400 47400 50200 4
N 46800 50400 46800 50200 4
N 48000 50400 48000 50200 4
N 48600 50400 48600 50200 4
C 45400 49400 1 0 1 busripper-1.sym
N 46300 49400 45400 49400 4
{
T 46500 49500 5 10 1 1 0 7 1
netname=FCNV-0
}
C 45400 49100 1 0 1 busripper-1.sym
N 46300 49100 45400 49100 4
{
T 46500 49200 5 10 1 1 0 7 1
netname=FSCK-0
}
C 45400 48800 1 0 1 busripper-1.sym
N 46300 48800 45400 48800 4
{
T 46500 48900 5 10 1 1 0 7 1
netname=SCNV-0
}
C 45400 48500 1 0 1 busripper-1.sym
N 46300 48500 45400 48500 4
{
T 46500 48600 5 10 1 1 0 7 1
netname=SSCK-0
}
N 46300 41600 45400 41600 4
{
T 46500 41500 5 10 1 1 180 1 1
netname=FCNV-1
}
N 46300 41900 45400 41900 4
{
T 46500 41800 5 10 1 1 180 1 1
netname=FSCK-1
}
C 45400 41900 1 0 1 busripper-1.sym
N 46300 42200 45400 42200 4
{
T 46500 42100 5 10 1 1 180 1 1
netname=SCNV-1
}
C 45400 41600 1 0 1 busripper-1.sym
C 45400 42200 1 0 1 busripper-1.sym
C 45400 42500 1 0 1 busripper-1.sym
N 46300 42500 45400 42500 4
{
T 46500 42400 5 10 1 1 180 1 1
netname=SSCK-1
}
