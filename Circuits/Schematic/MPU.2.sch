v 20210731 2
C 40000 40000 0 0 0 Noqsi-title-B.sym
{
T 50000 40500 5 10 1 1 0 0 1
date=20210129
T 53900 40500 5 10 1 1 0 0 1
rev=Mcadam1.5
T 55400 40200 5 10 1 1 0 0 1
auth=jpd
T 53200 41200 5 14 1 1 0 4 1
title=Mcadam SDD
}
C 46000 46600 1 0 0 MUX08.sym
{
T 47700 49800 5 10 1 1 0 0 1
refdes=U2
}
C 48100 49700 1 0 0 gnd-1.sym
N 48200 50000 47400 50000 4
C 45700 49700 1 0 0 gnd-1.sym
N 45800 50000 46600 50000 4
C 45500 50300 1 0 0 resistor5.sym
{
T 45800 50100 5 10 1 1 0 0 1
value=499
T 45700 50600 5 10 1 1 0 0 1
refdes=R10
}
N 46400 50400 47300 50400 4
N 47000 50400 47000 50000 4
N 44700 48700 46000 48700 4
{
T 45900 48900 5 10 1 1 180 0 1
netname=TEMP-0
}
N 44700 48400 46000 48400 4
{
T 45900 48600 5 10 1 1 180 0 1
netname=HOT-0
}
N 44700 48100 46000 48100 4
{
T 45900 48300 5 10 1 1 180 0 1
netname=HVHK-0
}
N 44700 47800 46000 47800 4
{
T 45900 48000 5 10 1 1 180 0 1
netname=TIS-0
}
N 44700 47500 46000 47500 4
{
T 45900 47700 5 10 1 1 180 0 1
netname=TVS-0
}
N 45500 50400 45100 50400 4
C 48200 50200 1 0 1 bypass.sym
{
T 48200 51100 5 10 0 0 0 6 1
symversion=20090121
T 48200 50500 5 10 1 1 0 6 1
refdes=C1
T 47600 50500 5 10 1 1 0 6 1
value=1uF
}
C 48100 50100 1 0 0 gnd-1.sym
C 46000 41500 1 0 0 MUX08.sym
{
T 47700 44700 5 10 1 1 0 0 1
refdes=U3
}
C 48100 44600 1 0 0 gnd-1.sym
N 48200 44900 47400 44900 4
C 45700 44600 1 0 0 gnd-1.sym
N 45800 44900 46600 44900 4
C 45500 45200 1 0 0 resistor5.sym
{
T 45800 45000 5 10 1 1 0 0 1
value=499
T 45700 45500 5 10 1 1 0 0 1
refdes=R11
}
N 46400 45300 47300 45300 4
N 47000 45300 47000 44900 4
N 44700 43600 46000 43600 4
{
T 45900 43800 5 10 1 1 180 0 1
netname=TEMP-1
}
N 44700 43300 46000 43300 4
{
T 45900 43500 5 10 1 1 180 0 1
netname=HOT-1
}
N 44700 43000 46000 43000 4
{
T 45900 43200 5 10 1 1 180 0 1
netname=HVHK-1
}
N 44700 42700 46000 42700 4
{
T 45900 42900 5 10 1 1 180 0 1
netname=TIS-1
}
N 44700 42400 46000 42400 4
{
T 45900 42600 5 10 1 1 180 0 1
netname=TVS-1
}
N 45500 45300 45100 45300 4
C 48200 45100 1 0 1 bypass.sym
{
T 48200 46000 5 10 0 0 0 6 1
symversion=20090121
T 48200 45400 5 10 1 1 0 6 1
refdes=C2
T 47600 45400 5 10 1 1 0 6 1
value=1uF
}
C 48100 45000 1 0 0 gnd-1.sym
C 50700 47100 1 0 0 resistor5.sym
{
T 50900 47400 5 10 1 1 0 0 1
refdes=R12
T 51000 46900 5 10 1 1 0 0 1
value=20
}
C 52100 45500 1 270 1 capacitor.sym
{
T 52800 45700 5 10 0 0 270 6 1
device=CAPACITOR
T 53000 45500 5 10 0 0 270 6 1
symversion=20090121
T 52600 46100 5 10 1 1 0 6 1
refdes=C3
T 52900 45800 5 10 1 1 180 0 1
value=1nF
}
C 52400 45900 1 0 0 ad7984.sym
{
T 53700 48200 5 10 0 1 0 0 1
description=ADC
T 54000 47600 5 10 1 1 0 0 1
refdes=U4
}
N 51600 47200 52600 47200 4
C 50700 46300 1 0 0 resistor5.sym
{
T 50900 46600 5 10 1 1 0 0 1
refdes=R13
T 51000 46100 5 10 1 1 0 0 1
value=20
}
N 51600 46400 52600 46400 4
C 52200 45200 1 0 0 gnd-1.sym
C 51600 45300 1 270 1 capacitor.sym
{
T 52300 45500 5 10 0 0 270 6 1
device=CAPACITOR
T 52500 45300 5 10 0 0 270 6 1
symversion=20090121
T 52100 45900 5 10 1 1 0 6 1
refdes=C4
T 52400 45600 5 10 1 1 180 0 1
value=1nF
}
C 51700 45000 1 0 0 gnd-1.sym
N 51800 46200 51800 47200 4
C 53300 45600 1 0 0 gnd-1.sym
N 54500 47100 54600 47100 4
N 54600 47100 54600 47400 4
N 54500 47400 55000 47400 4
C 52800 47600 1 0 1 bypass.sym
{
T 52800 48500 5 10 0 0 0 6 1
symversion=20090121
T 52800 48700 5 10 0 0 0 6 1
footprint=0805
T 52900 48900 5 10 0 1 0 6 1
spec=10WVDC X7R
T 52600 48100 5 10 1 1 0 6 1
refdes=C5
T 52200 47900 5 10 1 1 0 6 1
value=1uF
}
C 51800 47500 1 0 0 gnd-1.sym
N 52800 47800 53200 47800 4
N 53200 47700 53200 48200 4
C 53700 47800 1 0 0 bypass.sym
{
T 53700 48700 5 10 0 0 0 0 1
symversion=20090121
T 53800 48100 5 10 1 1 0 0 1
refdes=C6
T 54300 48100 5 10 1 1 0 0 1
value=1uF
}
C 54500 47700 1 0 0 gnd-1.sym
N 53700 47700 53700 49000 4
N 50500 45900 50500 47200 4
N 50500 47200 50700 47200 4
N 50500 45200 50700 45200 4
N 50700 46400 50700 45200 4
C 52800 48900 1 0 0 resistor5.sym
{
T 52700 48700 5 10 1 1 0 0 1
refdes=R14
T 53100 48700 5 10 1 1 0 0 1
value=61.9
}
N 52800 49000 52700 49000 4
T 53900 48600 9 10 1 0 0 0 3
Bypass capacitor placement
around U9 is critical. See the
AD7984 data sheet.
C 49400 46800 1 0 0 opamp_dual.sym
{
T 49700 49500 5 8 0 0 0 0 1
symversion=1.0
T 49900 47500 5 10 1 1 0 0 1
refdes=U5
}
C 49500 44400 1 180 1 opamp_dual.sym
{
T 49800 41700 5 8 0 0 180 6 1
symversion=1.0
T 49500 44400 5 10 0 0 0 0 1
slot=2
T 50000 43700 5 10 1 1 180 6 1
refdes=U5
}
C 49600 44500 1 0 0 resistor.sym
{
T 49800 44800 5 10 1 1 0 0 1
refdes=R15
T 50100 44300 5 10 1 1 0 0 1
value=1.0k
}
N 49600 44200 49600 45900 4
N 50500 44600 50600 44600 4
N 50600 44000 50600 45200 4
C 49600 45800 1 0 0 resistor.sym
{
T 49800 46100 5 10 1 1 0 0 1
refdes=R16
T 50100 45600 5 10 1 1 0 0 1
value=1.0k
}
N 49500 47000 49500 46700 4
N 49500 46700 50500 46700 4
C 49600 45000 1 0 0 capacitor.sym
{
T 49600 45900 5 10 0 0 0 0 1
symversion=20090121
T 49800 45500 5 10 1 1 0 0 1
refdes=C7
T 50200 44900 5 10 1 1 0 0 1
value=2pF
}
C 53000 48200 1 0 0 VFS.sym
C 49100 43800 1 0 0 VHS.sym
N 49600 43800 49300 43800 4
N 47900 43200 48500 43200 4
N 48500 43200 48500 48300 4
N 48500 48300 47900 48300 4
N 49500 47400 48500 47400 4
C 52500 49000 1 0 0 2.5V-plus-1.sym
C 44900 45300 1 0 0 5V-plus-1.sym
C 44900 50400 1 0 0 5V-plus-1.sym
C 40800 45400 1 0 0 AD5308.sym
{
T 42600 49500 5 10 1 1 0 6 1
refdes=U6
}
C 40700 49200 1 0 0 VFS.sym
N 40900 49200 40900 48600 4
N 46000 49300 46000 49600 4
N 46000 49600 42900 49600 4
N 42900 49600 42900 49000 4
C 41700 49700 1 0 0 5V-plus-1.sym
U 49000 47000 49000 40300 10 -1
N 47400 46600 48800 46600 4
{
T 47700 46700 5 10 1 1 0 0 1
netname=HKEN0
}
N 47100 46600 47100 46300 4
N 47100 46300 48800 46300 4
{
T 47900 46400 5 10 1 1 0 0 1
netname=HK2
}
N 46800 46600 46800 46000 4
N 46800 46000 48800 46000 4
{
T 47900 46100 5 10 1 1 0 0 1
netname=HK1
}
N 46500 46600 46500 45700 4
N 46500 45700 48800 45700 4
{
T 47900 45800 5 10 1 1 0 0 1
netname=HK0
}
C 48800 45700 1 270 1 busripper-1.sym
C 48800 46000 1 270 1 busripper-1.sym
C 48800 46300 1 270 1 busripper-1.sym
C 48800 46600 1 270 1 busripper-1.sym
N 47400 41500 48800 41500 4
{
T 47700 41600 5 10 1 1 0 0 1
netname=HKEN1
}
N 47100 41500 47100 41200 4
N 47100 41200 48800 41200 4
{
T 47900 41300 5 10 1 1 0 0 1
netname=HK2
}
N 46800 41500 46800 40900 4
N 46800 40900 48800 40900 4
{
T 47900 41000 5 10 1 1 0 0 1
netname=HK1
}
N 46500 41500 46500 40600 4
N 46500 40600 48800 40600 4
{
T 47900 40700 5 10 1 1 0 0 1
netname=HK0
}
C 48800 40600 1 270 1 busripper-1.sym
C 48800 40900 1 270 1 busripper-1.sym
C 48800 41200 1 270 1 busripper-1.sym
C 48800 41500 1 270 1 busripper-1.sym
U 49000 40300 40200 40300 10 0
U 40200 40300 40200 48200 10 -1
N 40900 47400 40400 47400 4
{
T 40800 47500 5 10 1 1 0 6 1
netname=DIN
}
N 40900 47000 40400 47000 4
{
T 40900 47100 5 10 1 1 0 6 1
netname=SCLK
}
N 40900 46600 40400 46600 4
{
T 40900 46700 5 10 1 1 0 6 1
netname=\_SYNC
}
C 41800 45200 1 0 0 gnd-1.sym
C 40800 45900 1 0 0 gnd-1.sym
C 40400 46600 1 0 1 busripper-1.sym
C 40400 47000 1 0 1 busripper-1.sym
C 40400 47400 1 0 1 busripper-1.sym
U 49000 43400 55800 43400 10 0
U 55500 43400 55500 47100 10 -1
N 54500 46800 55300 46800 4
{
T 54600 46900 5 10 1 1 0 0 1
netname=HSCK
}
C 55300 46800 1 270 1 busripper-1.sym
C 55000 48000 1 0 0 bypass.sym
{
T 55000 48900 5 10 0 0 0 0 1
symversion=20090121
T 55100 48300 5 10 1 1 0 0 1
refdes=C8
T 55600 48300 5 10 1 1 0 0 1
value=1uF
}
N 55000 47400 55000 48200 4
C 55800 47900 1 0 0 gnd-1.sym
C 55200 47600 1 0 0 resistor5.sym
{
T 55100 47400 5 10 1 1 0 0 1
refdes=R17
T 55600 47400 5 10 1 1 0 0 1
value=61.9
}
N 56100 47700 56500 47700 4
C 56300 47700 1 0 0 3.3V-plus-1.sym
N 55000 47700 55200 47700 4
N 54500 46500 55300 46500 4
{
T 54600 46600 5 10 1 1 0 0 1
netname=HSDO
}
C 55300 46500 1 270 0 busripper-1.sym
N 54500 45900 55300 45900 4
{
T 54600 46000 5 10 1 1 0 0 1
netname=HCNV
}
C 55300 45900 1 270 1 busripper-1.sym
N 54500 45900 54500 46200 4
C 55800 42900 1 0 0 FPGA.sym
{
T 56100 43200 5 10 1 1 0 0 1
device=FPGA
T 56200 43700 5 10 1 1 0 0 1
refdes=U1
}
C 51200 41800 1 0 0 opamp_dual_pwr.sym
{
T 51400 43800 5 8 0 0 0 0 1
symversion=1.0
T 51850 42350 5 10 1 1 0 0 1
refdes=U5
}
C 50300 42800 1 0 0 resistor5.sym
{
T 50500 43100 5 10 1 1 0 0 1
refdes=R29
T 50600 42600 5 10 1 1 0 0 1
value=4.99
}
C 51800 42700 1 0 0 bypass.sym
{
T 51800 43600 5 10 0 0 0 0 1
symversion=20090121
T 52000 43200 5 10 1 1 0 0 1
refdes=C81
T 52400 43000 5 10 1 1 0 0 1
value=1uF
}
C 51400 41500 1 0 0 gnd-1.sym
N 51200 42900 51800 42900 4
N 51500 42700 51500 42900 4
C 52600 42600 1 0 0 gnd-1.sym
C 50000 42900 1 0 0 5V-plus-1.sym
N 50200 42900 50300 42900 4
C 44300 47800 1 180 1 busripper-1.sym
N 42900 49000 44300 49000 4
{
T 43500 49100 5 10 1 1 0 1 1
netname=FLLD-0
}
C 44300 48200 1 180 1 busripper-1.sym
N 42900 48600 44300 48600 4
{
T 43500 48700 5 10 1 1 0 1 1
netname=HVDAC-0
}
C 44300 48600 1 180 1 busripper-1.sym
N 42900 48200 44300 48200 4
{
T 43500 48300 5 10 1 1 0 1 1
netname=SLLD-0
}
C 44300 49000 1 180 1 busripper-1.sym
N 42900 47800 44300 47800 4
{
T 43500 47900 5 10 1 1 0 1 1
netname=TDAC-0
}
C 44300 46200 1 180 1 busripper-1.sym
N 42900 47400 44300 47400 4
{
T 43500 47500 5 10 1 1 0 1 1
netname=FLLD-1
}
C 44300 46600 1 180 1 busripper-1.sym
N 42900 47000 44300 47000 4
{
T 43500 47100 5 10 1 1 0 1 1
netname=HVDAC-1
}
C 44300 47000 1 180 1 busripper-1.sym
N 42900 46600 44300 46600 4
{
T 43500 46700 5 10 1 1 0 1 1
netname=SLLD-1
}
C 44300 47400 1 180 1 busripper-1.sym
N 42900 46200 44300 46200 4
{
T 43500 46300 5 10 1 1 0 1 1
netname=TDAC-1
}
C 44700 47500 1 0 1 busripper-1.sym
C 44700 47800 1 0 1 busripper-1.sym
C 44700 48100 1 0 1 busripper-1.sym
C 44700 48400 1 0 1 busripper-1.sym
C 44700 48700 1 0 1 busripper-1.sym
C 44700 42400 1 0 1 busripper-1.sym
C 44700 42700 1 0 1 busripper-1.sym
C 44700 43000 1 0 1 busripper-1.sym
C 44700 43300 1 0 1 busripper-1.sym
C 44700 43600 1 0 1 busripper-1.sym
N 46000 49000 45700 49000 4
N 45700 49000 45700 49400 4
N 45700 49400 43100 49400 4
N 43100 49400 43100 48200 4
N 46000 44200 43300 44200 4
N 43300 44200 43300 47400 4
N 46000 43900 43000 43900 4
N 43000 43900 43000 46600 4
U 44500 49200 44500 42100 10 0
L 43500 42250 44100 42250 3 10 1 0 -1 -1
L 44100 42250 44200 42100 3 10 1 0 -1 -1
L 44200 42100 44100 41950 3 10 1 0 -1 -1
L 44100 41950 43500 41950 3 10 1 0 -1 -1
L 43500 41950 43400 42100 3 10 1 0 -1 -1
L 43400 42100 43500 42250 3 10 1 0 -1 -1
T 43800 42100 9 10 1 0 0 4 1
Page 1
U 44500 42100 44200 42100 10 0
T 40500 41000 9 20 1 0 0 0 1
Control and Housekeeping
T 52200 40200 9 10 1 0 0 0 1
4
T 50300 40200 9 10 1 0 0 0 1
2
