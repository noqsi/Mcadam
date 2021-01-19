v 20200604 2
C 40000 40000 0 0 0 Noqsi-title-B.sym
{
T 50000 40500 5 10 1 1 0 0 1
date=20210118
T 53900 40500 5 10 1 1 0 0 1
rev=Mcadam1.1
T 55400 40200 5 10 1 1 0 0 1
auth=jpd
T 53200 41200 5 14 1 1 0 4 1
title=FPM support
}
C 51500 45800 1 0 0 FastShaper.sym
{
T 52900 47900 5 10 1 1 0 3 1
refdes=FS
}
N 50600 48100 51500 48100 4
C 52800 45500 1 0 0 gnd-1.sym
C 52800 41500 1 0 0 gnd-1.sym
N 49500 45100 52900 45100 4
N 52900 45100 52900 44800 4
N 52200 49400 52200 48800 4
N 52900 48800 52900 49200 4
N 48400 49200 52900 49200 4
C 48200 44500 1 0 1 TECregulator.sym
{
T 46900 46200 5 10 1 1 0 3 1
refdes=TR
}
C 45800 48300 1 0 1 HVregulator.sym
{
T 44000 49900 5 10 1 1 0 3 1
refdes=HVR
}
C 44500 48000 1 0 0 gnd-1.sym
C 47000 44200 1 0 1 gnd-1.sym
N 41400 48800 41600 48800 4
N 41600 48800 41600 50500 4
N 41600 50500 48900 50500 4
N 44400 50500 44400 50100 4
N 52200 49400 48900 49400 4
N 48900 49400 48900 50500 4
N 43400 49400 41900 49400 4
N 41900 48500 41900 49400 4
N 41900 48500 41400 48500 4
C 42400 48200 1 0 0 gnd-1.sym
C 42200 47600 1 0 0 out-1.sym
{
T 42900 47600 5 10 1 1 0 0 1
refdes=TEMP
}
C 42200 47300 1 0 0 out-1.sym
{
T 42900 47300 5 10 1 1 0 0 1
refdes=HOT
}
N 41800 46400 45600 46400 4
N 45600 46000 42000 46000 4
N 42000 46000 42000 47300 4
N 42000 47300 41400 47300 4
N 41400 45600 44300 45600 4
N 43200 43900 43200 45600 4
N 44300 47100 46300 47100 4
N 48400 49200 48400 50100 4
C 51500 41800 1 0 0 SlowShaper.sym
{
T 52900 43900 5 10 1 1 0 3 1
refdes=SS
}
N 51200 41700 51200 46900 4
N 51200 42900 51500 42900 4
N 51500 43300 50900 43300 4
N 50900 42400 50900 47300 4
N 51500 44100 50600 44100 4
N 50600 43100 50600 48100 4
N 49000 44800 52200 44800 4
N 49000 44100 49000 47400 4
N 49000 47400 46900 47400 4
N 46900 47100 46900 50100 4
N 53600 44800 53600 45400 4
N 50300 45400 53600 45400 4
N 50300 45400 50300 49000 4
N 51200 46900 51500 46900 4
N 50900 47300 51500 47300 4
N 53600 48800 53600 49000 4
N 44800 50100 48400 50100 4
C 47900 42700 1 0 0 opamp_dual.sym
{
T 48200 45400 5 8 0 0 0 0 1
symversion=1.0
T 48400 43400 5 10 1 1 0 0 1
refdes=U1
}
N 48000 42900 48000 42400 4
N 48000 42400 49000 42400 4
N 48000 43300 47600 43300 4
C 47200 43100 1 0 0 SMA.sym
{
T 47175 43425 5 10 1 1 0 0 1
refdes=J1
}
C 47400 42800 1 0 1 gnd-1.sym
N 49000 42400 49000 43100 4
C 48300 47900 1 0 0 opamp_dual.sym
{
T 48600 50600 5 8 0 0 0 0 1
symversion=1.0
T 48300 47900 5 10 0 0 0 0 1
slot=2
T 48800 48600 5 10 1 1 0 0 1
refdes=U1
}
N 48400 48100 48400 47600 4
N 48400 47600 49500 47600 4
N 48400 48500 48000 48500 4
N 49500 45100 49500 49200 4
N 49000 43100 50600 43100 4
C 47400 48400 1 0 0 in-1.sym
{
T 47400 48700 5 10 1 1 0 0 1
refdes=+2.5
}
C 50900 47600 1 0 0 in-1.sym
{
T 50900 47900 5 10 1 1 0 0 1
refdes=FLLD
}
C 49700 43600 1 0 0 in-1.sym
{
T 49700 43900 5 10 1 1 0 0 1
refdes=SLLD
}
N 50300 43700 51500 43700 4
C 46400 48800 1 0 1 in-1.sym
{
T 46400 49100 5 10 1 1 0 6 1
refdes=HVDAC
}
C 46400 49300 1 0 1 in-1.sym
{
T 46400 49600 5 10 1 1 0 6 1
refdes=-HV
}
C 48800 46200 1 0 1 in-1.sym
{
T 48800 46500 5 10 1 1 0 6 1
refdes=TDAC
}
N 54300 48100 54500 48100 4
N 54500 48100 54500 44100 4
N 54500 44100 54300 44100 4
C 54300 47700 1 0 0 out-1.sym
{
T 55000 47700 5 10 1 1 0 0 1
refdes=FSDO
}
C 54300 43700 1 0 0 out-1.sym
{
T 55000 43700 5 10 1 1 0 0 1
refdes=SSDO
}
C 54300 46900 1 0 0 out-1.sym
{
T 55000 46900 5 10 1 1 0 0 1
refdes=FTRIG
}
C 54300 46600 1 0 0 out-1.sym
{
T 55000 46600 5 10 1 1 0 0 1
refdes=FZX
}
C 54300 43100 1 0 0 out-1.sym
{
T 55000 43100 5 10 1 1 0 0 1
refdes=STRIG
}
C 54300 42800 1 0 0 out-1.sym
{
T 55000 42800 5 10 1 1 0 0 1
refdes=SZX
}
C 54300 42500 1 0 0 out-1.sym
{
T 55000 42500 5 10 1 1 0 0 1
refdes=OVER
}
C 43400 48800 1 0 1 out-1.sym
{
T 42700 48800 5 10 1 1 0 6 1
refdes=HVHK
}
C 45600 45500 1 0 1 out-1.sym
{
T 44900 45500 5 10 1 1 0 6 1
refdes=TVS
}
C 45600 45100 1 0 1 out-1.sym
{
T 44900 45100 5 10 1 1 0 6 1
refdes=TIS
}
C 54900 47400 1 0 1 in-1.sym
{
T 55500 47400 5 10 1 1 0 6 1
refdes=FCNV
}
C 54900 43400 1 0 1 in-1.sym
{
T 55500 43400 5 10 1 1 0 6 1
refdes=SCNV
}
C 41000 50400 1 0 0 in-1.sym
{
T 41000 50700 5 10 1 1 0 0 1
refdes=+5
}
N 50300 49000 53600 49000 4
C 49700 47400 1 0 0 in-1.sym
{
T 49700 47700 5 10 1 1 0 0 1
refdes=+3.3
}
C 55100 45800 1 0 1 in-1.sym
{
T 55700 45800 5 10 1 1 0 6 1
refdes=SCK
}
C 47300 40900 1 0 0 opamp_dual_pwr.sym
{
T 47500 42900 5 8 0 0 0 0 1
symversion=1.0
T 47950 41450 5 10 1 1 0 0 1
refdes=U1
}
C 46400 41900 1 0 0 resistor5.sym
{
T 46600 42200 5 10 1 1 0 0 1
refdes=R1
T 46700 41700 5 10 1 1 0 0 1
value=4.99
}
C 47900 41800 1 0 0 bypass.sym
{
T 47900 42700 5 10 0 0 0 0 1
symversion=20090121
T 48500 42100 5 10 1 1 0 0 1
value=1uF
T 47900 41800 5 10 1 1 0 0 1
refdes=C1
}
N 47300 42000 47900 42000 4
N 47600 41800 47600 42000 4
C 48700 41700 1 0 0 gnd-1.sym
C 46400 40500 1 0 0 resistor5.sym
{
T 46600 40800 5 10 1 1 0 0 1
refdes=R2
T 46700 40300 5 10 1 1 0 0 1
value=4.99
}
C 47900 40400 1 0 0 bypass.sym
{
T 47900 41300 5 10 0 0 0 0 1
symversion=20090121
T 48500 40700 5 10 1 1 0 0 1
value=1uF
T 47900 40400 5 10 1 1 0 0 1
refdes=C2
}
N 47300 40600 47900 40600 4
C 48700 40300 1 0 0 gnd-1.sym
N 47600 40900 47600 40600 4
N 46400 42000 46400 44100 4
N 46400 44100 49000 44100 4
N 46400 40600 46000 40600 4
N 46000 40600 46000 43900 4
N 43200 43900 46000 43900 4
C 40700 49800 1 0 0 in-1.sym
{
T 40700 50100 5 10 1 1 0 0 1
refdes=GND
}
C 41400 49600 1 0 1 gnd-1.sym
C 54300 42200 1 0 0 out-1.sym
{
T 55000 42200 5 10 1 1 0 0 1
refdes=FULL
}
C 42800 46600 1 0 1 in-1.sym
{
T 43400 46600 5 10 1 1 0 6 1
refdes=DUMP
}
T 50500 40200 9 10 1 0 0 0 1
1
T 52100 40200 9 10 1 0 0 0 1
1
C 42600 44500 1 0 0 in-1.sym
{
T 42200 44600 5 10 1 1 0 0 1
refdes=-5
}
N 44300 47100 44300 45600 4
C 43200 46900 1 0 0 resistor5.sym
{
T 43400 47200 5 10 1 1 0 0 1
refdes=R4
T 43500 46700 5 10 1 1 0 0 1
value=2.0k
}
N 42200 47000 42200 47600 4
N 42200 47000 43200 47000 4
C 43200 47900 1 0 0 resistor5.sym
{
T 43400 48200 5 10 1 1 0 0 1
refdes=R3
T 43500 47700 5 10 1 1 0 0 1
value=2.0k
}
N 43200 48000 42200 48000 4
N 42200 48000 42200 47700 4
N 44100 48000 44100 47000 4
N 44100 47500 46900 47500 4
C 50300 41600 1 0 0 in-1.sym
{
T 50300 41900 5 10 1 1 0 0 1
refdes=Vref
}
N 50900 41700 51200 41700 4
C 50300 42300 1 0 0 in-1.sym
{
T 50300 42600 5 10 1 1 0 0 1
refdes=Vb
}
N 47500 47100 50300 47100 4
C 40400 40200 1 0 0 PerFPM.sym
{
T 43200 43500 5 10 1 1 0 6 1
refdes=F?
T 41700 42400 5 10 0 0 0 0 1
graphical=1
}
N 49400 48300 49500 48300 4
C 40200 46100 1 0 0 DB9-1.sym
{
T 40400 49300 5 10 1 1 0 0 1
refdes=J2
T 41200 49000 5 10 0 0 0 0 1
device=MDM9P
T 40200 46100 5 10 0 0 0 0 1
footprint=MDM9P
T 40200 46100 5 10 0 0 0 0 1
pins=9
}
N 41400 48200 42300 48200 4
N 42300 48500 42500 48500 4
N 42300 48200 42300 48500 4
N 41400 47900 42200 47900 4
N 41400 47600 42200 47600 4
N 41800 46400 41800 47000 4
N 41800 47000 41400 47000 4
N 42200 46700 41400 46700 4
N 41400 45600 41400 46400 4
