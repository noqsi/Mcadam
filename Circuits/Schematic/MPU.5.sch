v 20210731 2
C 40000 40000 0 0 0 Noqsi-title-B.sym
{
T 50000 40500 5 10 1 1 0 0 1
date=20220812
T 53900 40500 5 10 1 1 0 0 1
rev=2.0
T 55400 40200 5 10 1 1 0 0 1
auth=jpd
T 50200 40800 5 8 1 1 0 0 1
fname=MPU.5.sch
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
U 41500 44500 54500 44500 10 1
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
C 44200 43400 1 180 0 connector.sym
{
T 43800 43100 5 10 1 1 180 0 1
refdes=Jdb
T 44200 43400 5 10 0 0 180 0 1
value=HEADER20
T 44200 43400 5 10 0 0 180 0 1
device=HEADER20
T 44200 43400 5 10 0 0 180 0 1
pins=20
T 44200 43400 5 10 0 0 180 0 1
footprint=HEADER20
}
C 46200 43400 1 180 0 connector.sym
{
T 45800 43100 5 10 1 1 180 0 1
refdes=Jtp
T 46200 43400 5 10 0 0 180 0 1
device=HEADER50
T 46200 43400 5 10 0 0 180 0 1
footprint=HEADER50
T 46200 43400 5 10 0 0 180 0 1
pins=50
T 46200 43400 5 10 0 0 180 0 1
value=HEADER50
}
U 45700 43400 45700 44500 10 0
U 43700 43400 43700 44500 10 0
T 41500 41200 9 20 1 0 0 0 1
Debug Support
C 40400 43900 1 0 0 FPGA.sym
{
T 40700 44200 5 10 1 1 0 0 1
device=FPGA
T 40800 44700 5 10 1 1 0 0 1
refdes=U1
}
C 50000 46100 1 0 0 DS89C21.sym
{
T 51200 48500 5 10 1 1 0 3 1
refdes=U9
T 52400 48700 5 10 0 0 0 0 1
device=MAX490EESA
}
N 50000 47000 49900 47000 4
N 49900 44700 49900 47000 4
{
T 50700 45000 5 10 1 1 180 0 1
netname=TX422
}
C 50700 45800 1 0 0 gnd-1.sym
C 52500 48600 1 0 1 bypass.sym
{
T 52500 49500 5 10 0 0 0 6 1
symversion=20090121
T 51900 48600 5 10 1 1 0 6 1
refdes=C89
T 51900 48900 5 10 1 1 0 6 1
value=1uF
}
C 52400 48500 1 0 0 gnd-1.sym
N 50300 48800 51600 48800 4
N 50800 48800 50800 48700 4
C 55800 45300 1 0 1 DB9-1.sym
{
T 54800 48200 5 10 0 0 0 6 1
device=190-009-263R001
T 55800 45300 5 10 0 0 0 0 1
spec=DB9F
T 55800 45300 5 10 0 0 0 0 1
footprint=DB9F
T 55600 48500 5 10 1 1 0 6 1
refdes=J422
}
N 54600 47400 52800 47400 4
N 52800 47400 52800 48000 4
N 54600 46800 52800 46800 4
N 52800 46800 52800 47200 4
N 52800 47200 51500 47200 4
N 51500 46800 52500 46800 4
N 52500 46200 52500 46800 4
N 52500 46200 54600 46200 4
N 52800 48000 51500 48000 4
N 51500 47600 53200 47600 4
N 53200 47600 53200 48000 4
N 53200 48000 54600 48000 4
C 54500 45300 1 0 0 gnd-1.sym
N 54000 45900 54600 45900 4
N 52800 46500 54600 46500 4
N 50000 47800 49100 47800 4
N 49100 44700 49100 47800 4
{
T 48900 45000 5 10 1 1 180 0 1
netname=RX422
}
C 50100 48800 1 0 0 5V-plus-1.sym
C 49100 44700 1 270 0 busripper-1.sym
C 49900 44700 1 90 1 busripper-1.sym
N 54000 45900 54000 44700 4
{
T 54100 45100 5 10 1 1 180 6 1
netname=PPS-
}
C 54000 44700 1 270 0 busripper-1.sym
N 52800 46500 52800 44700 4
{
T 52200 45100 5 10 1 1 180 6 1
netname=PPS+
}
C 52800 44700 1 270 0 busripper-1.sym
C 53900 45300 1 180 0 resistor5.sym
{
T 52900 45400 5 10 1 1 0 0 1
refdes=R9
T 53300 45400 5 10 1 1 0 0 1
value=100
}
T 52400 43800 9 10 1 0 0 0 2
100 ohm LVDS balanced pair
R9 near FPGA
N 53900 45200 54000 45200 4
N 53000 45200 52800 45200 4
T 50700 42800 9 20 1 0 0 0 1
RS422 and PPS
