v 20200604 2
C 40000 40000 0 0 0 Noqsi-title-B.sym
{
T 50000 40500 5 10 1 1 0 0 1
date=20200803
T 53900 40500 5 10 1 1 0 0 1
rev=Mcadam1.0
T 55400 40200 5 10 1 1 0 0 1
auth=jpd
T 53200 41200 5 14 1 1 0 4 1
title=Reference Voltages
}
C 41800 45300 1 0 0 opamp_dual_pwr.sym
{
T 42000 47300 5 8 0 0 0 0 1
symversion=1.0
T 42200 45800 5 10 0 1 0 0 1
description=generic dual operational amplifier, SO8
T 42450 45850 5 10 1 1 0 0 1
refdes=U1
}
C 42000 45000 1 0 0 gnd-1.sym
C 43500 46100 1 0 0 gnd-1.sym
N 43600 46400 43200 46400 4
N 42000 46400 42300 46400 4
C 41700 47800 1 0 0 REF43.sym
{
T 43100 49400 5 10 1 1 0 6 1
refdes=U2
}
C 42300 47500 1 0 0 gnd-1.sym
C 41000 49700 1 0 0 resistor.sym
{
T 41200 50000 5 10 1 1 0 0 1
refdes=R1
T 41200 49400 5 10 1 1 0 0 1
value=49.9
}
C 43100 49600 1 0 0 bypass.sym
{
T 43100 50500 5 10 0 0 0 0 1
symversion=20090121
T 43300 50100 5 10 1 1 0 0 1
refdes=C2
T 43700 49600 5 10 1 1 0 0 1
value=1uF
}
N 41900 49800 43100 49800 4
N 42400 49600 42400 49800 4
C 44100 49500 1 0 0 gnd-1.sym
N 44200 49800 44000 49800 4
C 44400 48200 1 90 0 resistor.sym
{
T 44800 49000 5 10 1 1 180 0 1
refdes=R2
T 45000 48700 5 10 1 1 180 0 1
value=1.5
}
C 44500 47300 1 90 0 bypass.sym
{
T 44200 48100 5 10 1 1 180 0 1
refdes=C3
T 44200 47600 5 10 1 1 180 0 1
value=10uF
T 43600 47300 5 10 0 0 90 0 1
symversion=20090121
}
C 44200 47000 1 0 0 gnd-1.sym
C 47700 47500 1 0 0 opamp_dual.sym
{
T 48000 50200 5 8 0 0 0 0 1
symversion=1.0nicer
T 48400 48200 5 10 1 1 0 0 1
refdes=U1
}
C 48900 47800 1 0 0 resistor.sym
{
T 49100 48100 5 10 1 1 0 0 1
refdes=R3
T 49200 47600 5 10 1 1 0 0 1
value=1
}
N 48900 47900 48800 47900 4
C 47800 46100 1 0 0 resistor.sym
{
T 48000 46400 5 10 1 1 0 0 1
refdes=R4
T 48100 45900 5 10 1 1 0 0 1
value=3.01k
}
N 47800 46200 47800 47700 4
N 48700 46900 48800 46900 4
N 48800 46900 48800 47900 4
N 49800 46200 49800 47900 4
N 49600 45500 49300 45500 4
N 49300 45500 49300 46200 4
C 50500 45300 1 0 1 capacitor.sym
{
T 50500 45300 5 10 0 1 0 0 1
spec=10WVDC X7R
T 50500 45300 5 10 0 0 0 0 1
footprint=1812
T 50300 45800 5 10 1 1 0 6 1
refdes=C5
T 49900 45700 5 10 1 1 0 6 1
value=4.7uF
T 50200 45700 5 10 0 1 0 6 1
symversion=20090121
}
C 50400 45200 1 0 0 gnd-1.sym
N 48700 46200 50500 46200 4
C 46900 46100 1 0 0 resistor.sym
{
T 47100 46400 5 10 1 1 0 0 1
refdes=R5
T 47200 45900 5 10 1 1 0 0 1
value=4.99k
}
C 46800 45900 1 0 0 gnd-1.sym
N 47800 48100 46500 48100 4
N 46500 45400 46500 49100 4
C 47500 44100 1 0 0 opamp_dual.sym
{
T 47800 46800 5 8 0 0 0 0 1
symversion=1.0nicer
T 48200 44800 5 10 1 1 0 0 1
refdes=U1
T 47500 44100 5 10 0 0 0 0 1
slot=2
}
C 48700 44400 1 0 0 resistor.sym
{
T 48900 44700 5 10 1 1 0 0 1
refdes=R6
T 49000 44200 5 10 1 1 0 0 1
value=1
}
N 48700 44500 48600 44500 4
C 47600 42700 1 0 0 resistor.sym
{
T 47800 43000 5 10 1 1 0 0 1
refdes=R7
T 47900 42500 5 10 1 1 0 0 1
value=3.01k
}
N 47600 42800 47600 44300 4
N 48500 43500 48600 43500 4
N 48600 43500 48600 44500 4
N 49600 42800 49600 44500 4
N 49400 42100 49100 42100 4
N 49100 42100 49100 42800 4
C 50300 41900 1 0 1 capacitor.sym
{
T 50300 41900 5 10 0 1 0 0 1
spec=10WVDC X7R
T 50300 41900 5 10 0 0 0 0 1
footprint=1812
T 50100 42400 5 10 1 1 0 6 1
refdes=C7
T 49700 42300 5 10 1 1 0 6 1
value=4.7uF
T 50000 42300 5 10 0 1 0 6 1
symversion=20090121
}
C 50200 41800 1 0 0 gnd-1.sym
N 48500 42800 50300 42800 4
N 43400 49100 46500 49100 4
C 46500 45300 1 0 0 resistor.sym
{
T 46700 45600 5 10 1 1 0 0 1
refdes=R8
T 46800 45100 5 10 1 1 0 0 1
value=499
}
C 46500 44600 1 0 0 resistor.sym
{
T 46700 44900 5 10 1 1 0 0 1
refdes=R9
T 46800 44400 5 10 1 1 0 0 1
value=2k
}
N 47400 44700 47600 44700 4
N 47400 45400 47400 44700 4
C 46400 44400 1 0 0 gnd-1.sym
C 41100 46900 1 0 0 resistor.sym
{
T 41300 47200 5 10 1 1 0 0 1
refdes=R10
T 41300 46600 5 10 1 1 0 0 1
value=4.99
}
N 42000 47000 42000 46400 4
N 41000 49800 41000 47000 4
N 41000 47000 41100 47000 4
C 40400 48200 1 0 0 in-1.sym
{
T 40400 48500 5 10 1 1 0 0 1
refdes=+5
}
C 40400 45500 1 0 0 in-1.sym
{
T 40400 45800 5 10 1 1 0 0 1
refdes=Gnd
}
C 40900 45300 1 0 0 gnd-1.sym
C 50500 46100 1 0 0 out-1.sym
{
T 51200 46200 5 10 1 1 0 0 1
refdes=VFS
}
C 50300 42700 1 0 0 out-1.sym
{
T 51000 42800 5 10 1 1 0 0 1
refdes=VHS
}
C 46500 49000 1 0 0 out-1.sym
{
T 47200 49100 5 10 1 1 0 0 1
refdes=+2.5R
}
T 50300 44300 9 10 1 0 0 0 2
VFS = Full Scale = +4.0V
VHS = Half Scale = +2.0V
C 41600 42100 1 0 0 Reference.sym
{
T 42900 43700 5 10 1 1 0 3 1
refdes=Ref
T 42400 42800 5 10 0 0 0 0 1
graphical=1
}
T 41500 41400 8 10 1 1 0 0 1
spice-prolog=.subckt Reference %up
T 50400 40200 9 10 1 0 0 0 1
1
T 52000 40200 9 10 1 0 0 0 1
1
C 42300 46200 1 0 0 bypass.sym
{
T 42300 47100 5 10 0 0 0 0 1
symversion=20090121
T 42500 46700 5 10 1 1 0 0 1
refdes=C1
T 42900 46200 5 10 1 1 0 0 1
value=1uF
}
C 47800 46700 1 0 0 smallbypass.sym
{
T 48000 47200 5 10 1 1 0 0 1
refdes=C4
T 47800 47600 5 10 0 0 0 0 1
symversion=20200823
T 48400 46700 5 10 1 1 0 0 1
value=7.5nF
}
C 47600 43300 1 0 0 smallbypass.sym
{
T 47800 43800 5 10 1 1 0 0 1
refdes=C6
T 47600 44200 5 10 0 0 0 0 1
symversion=20200823
T 48200 43300 5 10 1 1 0 0 1
value=7.5nF
}
N 42100 46200 42100 46400 4
