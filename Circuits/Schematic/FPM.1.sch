v 20200319 2
C 40000 40000 0 0 0 Noqsi-title-B.sym
{
T 50000 40500 5 10 1 1 0 0 1
date=20200726
T 53900 40500 5 10 1 1 0 0 1
rev=Mcadam1.0
T 55400 40200 5 10 1 1 0 0 1
auth=jpd
T 53200 41200 5 14 1 1 0 4 1
title=FPM
}
C 49600 46100 1 0 0 AD829.sym
{
T 50400 46800 5 10 1 1 0 0 1
refdes=U1
T 50650 46450 5 10 0 0 0 0 1
symversion=0.1
T 49600 46100 5 10 0 0 0 0 1
pins-used=6
}
C 50900 45100 1 0 0 gnd-1.sym
N 50100 46900 50100 48700 4
N 50100 46100 50100 45400 4
C 50600 45800 1 0 0 capacitor.sym
{
T 50600 46100 5 10 1 1 0 0 1
refdes=C10
T 50600 46700 5 10 0 0 0 0 1
symversion=20090121
T 51200 46100 5 10 1 1 0 0 1
value=15pF
}
C 51400 45700 1 0 0 gnd-1.sym
N 50600 46000 50400 46000 4
N 50400 46000 50400 46200 4
C 49900 44300 1 0 0 resistor.sym
{
T 50100 44600 5 10 1 1 0 0 1
refdes=R27
T 50100 44100 5 10 1 1 0 0 1
value=1.4k
}
N 50800 46500 51900 46500 4
N 51900 46500 51900 44400 4
N 51900 44400 50800 44400 4
N 49900 44400 48900 44400 4
N 48900 44400 48900 46300 4
N 48900 46300 49600 46300 4
C 48000 45300 1 0 0 resistor.sym
{
T 48200 45600 5 10 1 1 0 0 1
refdes=R29
T 48200 45100 5 10 1 1 0 0 1
value=698
}
C 49900 43500 1 0 0 capacitor.sym
{
T 49900 43800 5 10 1 1 0 0 1
refdes=C17
T 49900 44400 5 10 0 0 0 0 1
symversion=20090121
T 50500 43800 5 10 1 1 0 0 1
value=2.7pF
}
N 49900 43700 49600 43700 4
N 49600 43700 49600 44400 4
N 50800 43700 51100 43700 4
N 51100 43700 51100 44400 4
N 49600 46700 43800 46700 4
{
T 47300 46800 5 10 1 1 0 0 1
netname=PRE_OUT
}
N 47600 45400 48000 45400 4
{
T 47200 45300 5 10 1 1 0 0 1
netname=+2B
}
C 43800 44300 1 0 1 connector12-2.sym
{
T 43000 49600 5 10 1 1 0 0 1
refdes=SDD
T 43800 44300 5 10 0 0 0 0 1
spice-prototype=* Model SDD in test fixture, not here
T 43500 49550 5 10 0 0 0 6 1
device=SDD
T 43500 49750 5 10 0 0 0 6 1
footprint=AMPTEK12
T 43500 50150 5 10 0 0 0 6 1
description=X-ray detector
T 43800 44300 5 10 0 0 0 0 1
value=N/A
T 43800 44300 5 10 0 0 0 0 1
spec=N/A
T 43800 44300 5 10 0 0 0 0 1
pins=12
}
N 43800 49100 44000 49100 4
N 43800 48700 47100 48700 4
N 43800 48300 44100 48300 4
C 44100 41200 1 0 0 capacitor.sym
{
T 44300 41700 5 10 1 1 0 0 1
refdes=C12
T 44100 42100 5 10 0 0 0 0 1
symversion=20090121
T 44100 41000 5 10 1 1 0 0 1
value=0.022uF
T 45200 42100 5 10 0 1 0 0 1
spec=500WVDC
T 44100 42300 5 10 0 0 0 0 1
footprint=1210
T 44100 41200 5 10 0 0 0 0 1
pins=2
}
C 44900 41100 1 0 0 gnd-1.sym
N 44100 41400 43800 41400 4
N 43800 41400 43800 44700 4
{
T 43900 44100 5 10 1 1 0 0 1
netname=BIAS
}
N 44600 42300 43800 42300 4
C 43700 47200 1 0 0 gnd-1.sym
N 43800 46300 44100 46300 4
{
T 44200 46200 5 10 1 1 0 0 1
netname=-3F
}
N 43800 45500 44100 45500 4
{
T 44200 45400 5 10 1 1 0 0 1
netname=+2F
}
N 43800 45100 44100 45100 4
{
T 44200 45000 5 10 1 1 0 0 1
netname=+3.3F
}
C 44600 42200 1 0 0 resistor5.sym
{
T 44800 42500 5 10 1 1 0 0 1
refdes=R21
T 44800 42000 5 10 1 1 0 0 1
value=75k
}
C 46100 42200 1 0 0 resistor5.sym
{
T 46300 42500 5 10 1 1 0 0 1
refdes=R20
T 46300 42000 5 10 1 1 0 0 1
value=75k
}
N 45500 42300 46100 42300 4
N 45900 41400 45900 42300 4
N 47000 42300 54000 42300 4
N 43800 47100 45900 47100 4
C 45000 41200 1 0 0 capacitor.sym
{
T 45200 41700 5 10 1 1 0 0 1
refdes=C11
T 45000 42100 5 10 0 0 0 0 1
symversion=20090121
T 45200 41000 5 10 1 1 0 0 1
value=0.022uF
T 46100 42100 5 10 0 1 0 0 1
spec=500WVDC
T 45000 42300 5 10 0 0 0 0 1
footprint=1210
T 45000 41200 5 10 0 0 0 0 1
pins=2
}
T 50500 40200 9 10 1 0 0 0 1
1
T 52000 40200 9 10 1 0 0 0 1
2
T 40200 40300 9 10 1 0 0 0 7
The SDD socket is composed of
Mill-Max 1401-0-15-80-30-27-10-0
receptacles soldered to the board
in a pattern matching the SDD pinout.

Mount D1 where its temperature will 
best represent theSDD heat sink temperature.
C 40600 48900 1 0 0 FPM.sym
{
T 42200 50400 5 10 1 1 0 0 1
refdes=FPM?
T 40600 48900 5 10 0 0 0 0 1
graphical=1
}
C 51900 46400 1 0 0 resistor.sym
{
T 52100 46700 5 10 1 1 0 0 1
refdes=R1
T 52100 46200 5 10 1 1 0 0 1
value=46.4
}
C 55900 44700 1 0 0 connector10-2.sym
{
T 56600 49200 5 10 1 1 0 6 1
refdes=J2
}
N 55900 48700 51300 48700 4
C 56000 47600 1 0 1 gnd-1.sym
N 54500 46700 55900 46700 4
C 51300 48600 1 0 1 resistor.sym
{
T 51100 48900 5 10 1 1 0 6 1
refdes=R37
T 51100 48400 5 10 1 1 0 6 1
value=20
}
N 50100 48700 50400 48700 4
C 50100 47200 1 0 1 bypass.sym
{
T 50100 48100 5 10 0 0 0 6 1
symversion=20090121
T 49900 47700 5 10 1 1 0 6 1
refdes=C16
T 49500 47200 5 10 1 1 0 6 1
value=1uF
}
C 48900 47100 1 0 0 gnd-1.sym
N 49000 47400 49200 47400 4
N 55900 48300 54000 48300 4
N 54000 42300 54000 48300 4
N 55900 47500 51100 47500 4
N 51100 47500 51100 48200 4
N 47100 48200 51100 48200 4
N 47100 48200 47100 48700 4
C 55900 46900 1 0 1 diode.sym
{
T 55200 47200 5 10 1 1 0 6 1
refdes=D1
}
C 54900 46800 1 0 0 gnd-1.sym
C 53100 48700 1 0 0 5V-plus-1.sym
C 49000 45400 1 0 0 5V-minus-1.sym
C 51000 45200 1 0 1 bypass.sym
{
T 50800 45700 5 10 1 1 0 6 1
refdes=C15
T 51000 46100 5 10 0 0 0 6 1
symversion=20090121
T 50400 45200 5 10 1 1 0 6 1
value=1uF
}
C 49200 45300 1 0 0 resistor.sym
{
T 49400 45600 5 10 1 1 0 0 1
refdes=R30
T 49400 45000 5 10 1 1 0 0 1
value=20
}
C 55100 45500 1 0 0 5V-minus-1.sym
N 55300 45500 55900 45500 4
N 55900 45100 55900 42800 4
N 55900 42800 45900 42800 4
N 45900 42800 45900 47100 4
N 54500 46700 54500 49500 4
N 54500 49500 44000 49500 4
N 44000 49500 44000 49100 4
N 55900 46300 54300 46300 4
N 54300 46300 54300 49300 4
N 54300 49300 44100 49300 4
N 44100 49300 44100 48300 4
C 53200 46300 1 0 1 SMA.sym
{
T 53225 46625 5 10 1 1 0 6 1
refdes=J1
}
C 53000 46000 1 0 0 gnd-1.sym
