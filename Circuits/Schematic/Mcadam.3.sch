v 20200319 2
C 40000 40000 0 0 0 Noqsi-title-B.sym
{
T 50000 40500 5 10 1 1 0 0 1
date=20180906
T 53900 40500 5 10 1 1 0 0 1
rev=0.0
T 55400 40200 5 10 1 1 0 0 1
auth=jpd
T 50200 40800 5 8 1 1 0 0 1
fname=Noqsi-title-B.sym
T 53200 41200 5 14 1 1 0 4 1
title=TITLE
}
C 52700 46700 1 0 0 PerFPM-pwr.sym
{
T 55100 48000 5 10 1 1 0 6 1
refdes=F0
}
C 42300 45600 1 0 0 HV.sym
{
T 44100 47200 5 10 1 1 0 3 1
refdes=HV
}
C 42700 48200 1 0 0 Reference.sym
{
T 44000 49800 5 10 1 1 0 3 1
refdes=Ref
}
C 52700 44000 1 0 0 PerFPM-pwr.sym
{
T 55100 45300 5 10 1 1 0 6 1
refdes=F1
}
C 42500 42900 1 0 0 gnd-1.sym
C 42600 43000 1 0 0 bypass.sym
{
T 42600 43900 5 10 0 0 0 0 1
symversion=20090121
T 42600 44100 5 10 0 0 0 0 1
footprint=1812
T 42500 44300 5 10 0 1 0 0 1
spec=10WVDC X7R
T 42800 43500 5 10 1 1 0 0 1
refdes=C?
T 43200 43300 5 10 1 1 0 0 1
value=4.7uF
}
N 43500 43200 43700 43200 4
N 43700 43200 43700 44000 4
N 43500 44000 44000 44000 4
{
T 43900 44100 5 10 1 1 0 0 1
netname=+5A
}
C 43000 43900 1 0 0 EMI-chip.sym
{
T 43200 45200 5 10 0 1 0 0 1
symversion=20090122
T 43200 44200 5 10 1 1 0 0 1
refdes=L?
}
