v 20200319 2
C 40000 40000 0 0 0 Noqsi-title-B.sym
{
T 53200 41200 5 14 1 1 0 4 1
title=Pulse Shaper and Detector
}
T 46900 45400 8 10 0 0 0 0 1
slot=2
T 42000 50700 9 20 1 1 0 4 1
Trigger and Timing
T 50300 40200 9 10 1 0 0 0 1
2
T 52000 40200 9 10 1 0 0 0 1
2
T 44000 49500 8 10 0 0 0 0 1
graphical=1
T 50000 40400 5 10 1 1 0 0 1
date=20200725
T 53900 40400 5 10 1 1 0 0 1
rev=Mcadam0.5
T 55600 40100 5 10 1 1 0 0 1
auth=jpd@noqsi.com
C 53600 41800 1 0 0 FastShaper.sym
{
T 55000 43900 5 10 1 1 0 3 1
refdes=X?
T 53600 41800 5 10 0 0 0 0 1
graphical=1
}
C 49800 47100 1 0 0 resistor5.sym
{
T 50000 47400 5 10 1 1 0 0 1
refdes=R33
T 50100 46900 5 10 1 1 0 0 1
value=20
}
C 51500 45500 1 270 1 capacitor.sym
{
T 52200 45700 5 10 0 0 270 6 1
device=CAPACITOR
T 52400 45500 5 10 0 0 270 6 1
symversion=20090121
T 52000 46100 5 10 1 1 0 6 1
refdes=C23
T 52300 45800 5 10 1 1 180 0 1
value=1nF
}
C 51800 45900 1 0 0 ad7984.sym
{
T 53100 48200 5 10 0 1 0 0 1
description=ADC
T 53400 47600 5 10 1 1 0 0 1
refdes=U4
}
N 50700 47200 52000 47200 4
C 49800 46300 1 0 0 resistor5.sym
{
T 50000 46600 5 10 1 1 0 0 1
refdes=R34
T 50100 46100 5 10 1 1 0 0 1
value=20
}
N 50700 46400 52000 46400 4
C 51600 45200 1 0 0 gnd-1.sym
C 50700 45300 1 270 1 capacitor.sym
{
T 51400 45500 5 10 0 0 270 6 1
device=CAPACITOR
T 51600 45300 5 10 0 0 270 6 1
symversion=20090121
T 51200 45900 5 10 1 1 0 6 1
refdes=C24
T 51500 45600 5 10 1 1 180 0 1
value=1nF
}
C 50800 45000 1 0 0 gnd-1.sym
N 50900 46200 50900 47200 4
C 52700 45600 1 0 0 gnd-1.sym
N 53900 47100 54000 47100 4
N 54000 47100 54000 47400 4
N 53900 47400 54400 47400 4
N 53900 46800 54400 46800 4
N 53900 46500 54400 46500 4
N 53900 46200 54400 46200 4
C 54200 47700 1 0 0 bypass.sym
{
T 54200 48600 5 10 0 0 0 0 1
symversion=20090121
T 54300 48000 5 10 1 1 0 0 1
refdes=C25
T 54800 48000 5 10 1 1 0 0 1
value=1uF
}
N 54200 47900 54200 47400 4
C 55000 47600 1 0 0 gnd-1.sym
C 52200 47600 1 0 1 bypass.sym
{
T 52200 48500 5 10 0 0 0 6 1
symversion=20090121
T 52200 48700 5 10 0 0 0 6 1
footprint=0805
T 52300 48900 5 10 0 1 0 6 1
spec=10WVDC X7R
T 52000 48100 5 10 1 1 0 6 1
refdes=C26
T 51600 47900 5 10 1 1 0 6 1
value=1uF
}
C 51200 47500 1 0 0 gnd-1.sym
N 52200 47800 52600 47800 4
N 52600 47700 52600 48600 4
C 53100 47800 1 0 0 bypass.sym
{
T 53100 48700 5 10 0 0 0 0 1
symversion=20090121
T 53200 48100 5 10 1 1 0 0 1
refdes=C27
T 53700 48100 5 10 1 1 0 0 1
value=1uF
}
C 53900 47700 1 0 0 gnd-1.sym
N 53100 47700 53100 49300 4
C 54400 47300 1 0 0 resistor5.sym
{
T 54300 47100 5 10 1 1 0 0 1
refdes=R35
T 54700 47100 5 10 1 1 0 0 1
value=61.9
}
N 55300 47400 55700 47400 4
{
T 55800 47300 5 10 1 1 0 0 1
netname=+3.3
}
T 48200 48500 9 20 1 0 0 0 1
Pulse ADC
T 53600 45200 9 10 1 0 0 0 3
Bypass capacitor placement
around U9 is critical. See the
AD7984 data sheet.
C 48200 46800 1 0 0 opamp_dual.sym
{
T 48700 47500 5 10 1 1 0 0 1
refdes=U3
T 48500 49500 5 8 0 0 0 0 1
symversion=1.0
}
C 48300 44400 1 180 1 opamp_dual.sym
{
T 48800 43700 5 10 1 1 180 6 1
refdes=U3
T 48600 41700 5 8 0 0 180 6 1
symversion=1.0
T 48300 44400 5 10 0 0 0 0 1
slot=2
}
C 48300 44500 1 0 0 resistor.sym
{
T 48500 44800 5 10 1 1 0 0 1
refdes=R28
T 48800 44300 5 10 1 1 0 0 1
value=1.0k
}
N 48300 44200 48300 45900 4
N 49200 44600 49300 44600 4
N 49300 44000 49300 45200 4
C 48300 45800 1 0 0 resistor.sym
{
T 48500 46100 5 10 1 1 0 0 1
refdes=R27
T 48800 45600 5 10 1 1 0 0 1
value=1.0k
}
N 49200 45900 49200 47200 4
N 49200 47200 49800 47200 4
N 48200 47000 48200 46700 4
N 48200 46700 49200 46700 4
C 48300 45000 1 0 0 capacitor.sym
{
T 48500 45500 5 10 1 1 0 0 1
refdes=C?
T 48300 45900 5 10 0 0 0 0 1
symversion=20090121
T 48900 44900 5 10 1 1 0 0 1
value=2pF
}
N 49200 45200 49800 45200 4
N 48300 43800 47200 43800 4
{
T 46900 43700 5 10 1 1 0 0 1
netname=vb
}
N 45500 47400 48200 47400 4
{
T 45000 47400 5 10 1 1 0 0 1
netname=outu
}
N 49800 46400 49800 45200 4
C 47600 40700 1 0 0 opamp_dual_pwr.sym
{
T 47800 42700 5 8 0 0 0 0 1
symversion=1.0
T 48250 41250 5 10 1 1 0 0 1
refdes=U3
}
C 46700 41700 1 0 0 resistor5.sym
{
T 46900 42000 5 10 1 1 0 0 1
refdes=R26
T 47000 41500 5 10 1 1 0 0 1
value=4.99
}
C 48200 41600 1 0 0 bypass.sym
{
T 48200 42500 5 10 0 0 0 0 1
symversion=20090121
T 48400 42100 5 10 1 1 0 0 1
refdes=C17
T 48800 41900 5 10 1 1 0 0 1
value=1uF
}
C 47800 40400 1 0 0 gnd-1.sym
N 47600 41800 48200 41800 4
N 47900 41600 47900 41800 4
C 49000 41500 1 0 0 gnd-1.sym
C 42300 49300 1 0 0 LT1715.sym
{
T 42200 51800 5 8 0 0 0 0 1
symversion=1.0
T 42900 50100 5 10 1 1 0 0 1
refdes=U5
}
N 42300 49900 41200 49900 4
{
T 40900 49800 5 10 1 1 0 0 1
netname=vb
}
N 41200 49500 42300 49500 4
{
T 40700 49400 5 10 1 1 0 0 1
netname=outb
}
N 43300 49700 43600 49700 4
C 43600 49600 1 0 0 out-1.sym
{
T 43600 49900 5 10 1 1 0 0 1
refdes=ZX
}
C 42300 48200 1 0 0 LT1715.sym
{
T 42200 50700 5 8 0 0 0 0 1
symversion=1.0
T 42900 49000 5 10 1 1 0 0 1
refdes=U5
T 42300 48200 5 10 0 0 0 0 1
slot=2
}
N 42300 48800 42000 48800 4
N 42000 48800 42000 49500 4
N 42300 48400 41700 48400 4
C 41100 48300 1 0 0 in-1.sym
{
T 41100 48600 5 10 1 1 0 0 1
refdes=VLLD
}
C 43600 48500 1 0 0 out-1.sym
{
T 43600 48800 5 10 1 1 0 0 1
refdes=TRIG
}
N 43600 48600 43300 48600 4
C 41700 44100 1 0 0 resistor5.sym
{
T 41900 44400 5 10 1 1 0 0 1
refdes=R24
T 42000 43900 5 10 1 1 0 0 1
value=4.99
}
C 42700 44000 1 0 0 bypass.sym
{
T 42700 44900 5 10 0 0 0 0 1
symversion=20090121
T 42900 44500 5 10 1 1 0 0 1
refdes=C15
T 43300 44300 5 10 1 1 0 0 1
value=1uF
}
N 42600 44200 42700 44200 4
C 43500 43900 1 0 0 gnd-1.sym
N 41700 44200 41500 44200 4
C 40900 44100 1 0 0 in-1.sym
{
T 40900 44400 5 10 1 1 0 0 1
refdes=+3.3
}
C 44600 43300 1 0 0 LT1715_pwr.sym
{
T 45300 44200 5 10 1 1 0 1 1
refdes=U5
}
N 41700 43500 41700 44200 4
{
T 41600 43900 5 10 1 1 180 0 1
netname=+3.3
}
N 42700 44200 42700 44800 4
N 42700 44800 45200 44800 4
N 45200 44800 45200 44200 4
C 41700 42700 1 0 0 resistor5.sym
{
T 41900 43000 5 10 1 1 0 0 1
refdes=R25
T 42000 42500 5 10 1 1 0 0 1
value=4.99
}
C 42700 42600 1 0 0 bypass.sym
{
T 42700 43500 5 10 0 0 0 0 1
symversion=20090121
T 42900 43100 5 10 1 1 0 0 1
refdes=C16
T 43300 42900 5 10 1 1 0 0 1
value=1uF
}
N 42600 42800 42700 42800 4
C 43500 42500 1 0 0 gnd-1.sym
N 41300 42800 41700 42800 4
{
T 41200 42900 5 10 1 1 180 0 1
netname=+5
}
N 42700 42800 42700 43300 4
N 42700 43300 44000 43300 4
N 44000 43300 44000 44400 4
N 44000 44400 44800 44400 4
N 44800 44400 44800 44200 4
C 44700 43000 1 0 0 gnd-1.sym
C 45100 43000 1 0 0 gnd-1.sym
C 54400 46700 1 0 0 out-1.sym
{
T 55100 46800 5 10 1 1 0 0 1
refdes=SCK
}
C 54400 46400 1 0 0 out-1.sym
{
T 55100 46500 5 10 1 1 0 0 1
refdes=SDO
}
C 55000 46100 1 0 1 in-1.sym
{
T 55500 46200 5 10 1 1 0 6 1
refdes=CNV
}
C 52200 49200 1 0 0 resistor5.sym
{
T 52100 49000 5 10 1 1 0 0 1
refdes=R29
T 52500 49000 5 10 1 1 0 0 1
value=61.9
}
C 51000 48500 1 0 0 in-1.sym
{
T 51000 48800 5 10 1 1 0 0 1
refdes=Vref
}
N 52200 49300 51700 49300 4
C 51100 49200 1 0 0 in-1.sym
{
T 50600 49300 5 10 1 1 0 0 1
refdes=+2.5
}
N 52600 48600 51600 48600 4
N 49100 41800 49100 41800 4
N 46700 41800 41700 41800 4
N 41700 41800 41700 42800 4
