v 20210731 2
C 40000 40000 0 0 0 Noqsi-title-B.sym
{
T 50000 40500 5 10 1 1 0 0 1
date=20220811
T 53900 40500 5 10 1 1 0 0 1
rev=2.0
T 55400 40200 5 10 1 1 0 0 1
auth=jpd
T 50200 40800 5 8 1 1 0 0 1
fname=Noqsi-title-B.sym
T 53200 41200 5 14 1 1 0 4 1
title=LEXA MPU
}
C 42200 45600 1 0 0 nmos.sym
{
T 42900 46200 5 10 1 1 0 0 1
refdes=Q3
T 42900 46500 5 10 0 0 0 0 1
symversion=0.1
}
C 42800 46400 1 90 0 resistor5.sym
{
T 43200 47200 5 10 1 1 180 0 1
refdes=R31
T 43200 46900 5 10 1 1 180 0 1
value=499
}
C 42900 47300 1 90 0 led-3.sym
{
T 43250 47850 5 10 1 1 180 0 1
refdes=D2
T 42900 47300 5 10 0 0 0 0 1
footprint=0603
T 42900 47300 5 10 0 0 0 0 1
value=LTST-C193KRKT-5A
}
C 42500 48200 1 0 0 5V-plus-1.sym
C 42600 45300 1 0 0 gnd-1.sym
U 41500 44500 55500 44500 10 1
N 42200 45800 42200 44700 4
{
T 42400 44900 5 10 1 1 180 6 1
netname=RED
}
C 42200 44700 1 90 1 busripper-1.sym
C 43700 45600 1 0 0 nmos.sym
{
T 44400 46500 5 10 0 0 0 0 1
symversion=0.1
T 44400 46200 5 10 1 1 0 0 1
refdes=Q4
}
C 44300 46400 1 90 0 resistor5.sym
{
T 44700 47200 5 10 1 1 180 0 1
refdes=R32
T 44700 46900 5 10 1 1 180 0 1
value=499
}
C 44400 47300 1 90 0 led-3.sym
{
T 44750 47850 5 10 1 1 180 0 1
refdes=D3
T 44400 47300 5 10 0 0 0 0 1
footprint=0603
T 44400 47300 5 10 0 0 0 0 1
value=LTST-C193KSKT-5A
}
C 44000 48200 1 0 0 5V-plus-1.sym
C 44100 45300 1 0 0 gnd-1.sym
N 43700 45800 43700 44700 4
{
T 43900 44900 5 10 1 1 180 6 1
netname=YELLOW
}
C 43700 44700 1 90 1 busripper-1.sym
C 45100 45600 1 0 0 nmos.sym
{
T 45800 46500 5 10 0 0 0 0 1
symversion=0.1
T 45800 46200 5 10 1 1 0 0 1
refdes=Q5
}
C 45700 46400 1 90 0 resistor5.sym
{
T 46100 47200 5 10 1 1 180 0 1
refdes=R33
T 46100 46900 5 10 1 1 180 0 1
value=499
}
C 45800 47300 1 90 0 led-3.sym
{
T 46150 47850 5 10 1 1 180 0 1
refdes=D4
T 45800 47300 5 10 0 0 0 0 1
footprint=0603
T 45800 47300 5 10 0 0 0 0 1
value=LTST-C193KGKT-5A
}
C 45400 48200 1 0 0 5V-plus-1.sym
C 45500 45300 1 0 0 gnd-1.sym
N 45100 45800 45100 44700 4
{
T 45300 44900 5 10 1 1 180 6 1
netname=GREEN
}
C 45100 44700 1 90 1 busripper-1.sym
C 46500 45600 1 0 0 nmos.sym
{
T 47200 46500 5 10 0 0 0 0 1
symversion=0.1
T 47200 46200 5 10 1 1 0 0 1
refdes=Q6
}
C 47100 46400 1 90 0 resistor5.sym
{
T 47500 47200 5 10 1 1 180 0 1
refdes=R34
T 47500 46900 5 10 1 1 180 0 1
value=499
}
C 47200 47300 1 90 0 led-3.sym
{
T 47550 47850 5 10 1 1 180 0 1
refdes=D5
T 47200 47300 5 10 0 0 0 0 1
footprint=0603
T 47200 47300 5 10 0 0 0 0 1
value=LTST-C193TBKT-5A
}
C 46800 48200 1 0 0 5V-plus-1.sym
C 46900 45300 1 0 0 gnd-1.sym
N 46500 45800 46500 44700 4
{
T 46700 44900 5 10 1 1 180 6 1
netname=BLUE
}
C 46500 44700 1 90 1 busripper-1.sym
T 50200 40200 9 10 1 0 0 0 1
5
T 51900 40200 9 10 1 0 0 0 1
5
C 52100 45600 1 0 0 connector.sym
{
T 52500 45900 5 10 1 1 0 0 1
refdes=Jdb
T 52100 45600 5 10 0 0 0 0 1
value=HEADER20
T 52100 45600 5 10 0 0 0 0 1
device=HEADER20
T 52100 45600 5 10 0 0 0 0 1
pins=20
}
C 50100 45600 1 0 0 connector.sym
{
T 50500 45900 5 10 1 1 0 0 1
refdes=Jtp
T 50100 45600 5 10 0 0 0 0 1
device=HEADER50
T 50100 45600 5 10 0 0 0 0 1
value=HEADER50
T 50100 45600 5 10 0 0 0 0 1
pins=50
}
U 50600 45600 50600 44500 10 0
U 52600 45600 52600 44500 10 0
