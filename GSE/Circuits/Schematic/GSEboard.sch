v 20200604 2
C 40000 40000 0 0 0 Noqsi-title-B.sym
{
T 50000 40500 5 10 1 1 0 0 1
date=20220317
T 53900 40500 5 10 1 1 0 0 1
rev=0.1
T 55400 40200 5 10 1 1 0 0 1
auth=jpd
T 50200 40800 5 8 1 1 0 0 1
fname=GSEboard.sch
T 53200 41200 5 14 1 1 0 4 1
title=LEXA GSE board
}
C 42800 41400 1 0 0 header40-2.sym
{
T 43400 49500 5 10 1 1 0 0 1
refdes=J1
}
C 49900 47700 1 180 0 header26-1.sym
{
T 49300 42300 5 10 1 1 180 0 1
refdes=J2
}
N 49900 42400 49900 47400 4
C 49800 42100 1 0 0 gnd-1.sym
C 51100 48500 1 0 0 3.3V-plus-1.sym
C 50300 47300 1 0 0 5V-minus-1.sym
C 50700 48800 1 0 0 5V-plus-1.sym
C 42700 41300 1 0 0 gnd-1.sym
C 44300 42500 1 0 0 gnd-1.sym
N 44400 42800 44200 42800 4
C 44300 43300 1 0 0 gnd-1.sym
N 44400 43600 44200 43600 4
C 44300 45300 1 0 0 gnd-1.sym
N 44400 45600 44200 45600 4
C 44300 46500 1 0 0 gnd-1.sym
N 44400 46800 44200 46800 4
C 44300 48100 1 0 0 gnd-1.sym
N 44400 48400 44200 48400 4
C 42500 47300 1 0 0 gnd-1.sym
N 42600 47600 42800 47600 4
C 42500 44100 1 0 0 gnd-1.sym
N 42600 44400 42800 44400 4
N 44200 44800 45500 44800 4
N 45500 44800 45500 46200 4
N 45500 46200 48500 46200 4
{
T 47400 46300 5 10 1 1 0 0 1
netname=\_SPI0_CE0
}
N 48500 45800 45900 45800 4
{
T 48300 45900 5 10 1 1 0 6 1
netname=\_SPIO_CE1
}
N 45900 44400 45900 45800 4
N 45900 44400 44200 44400 4
N 48500 45400 46300 45400 4
{
T 48300 45500 5 10 1 1 0 6 1
netname=SPI1_MOSI
}
N 46300 42000 46300 45400 4
N 46300 42000 44200 42000 4
N 48500 44600 46700 44600 4
{
T 48500 44700 5 10 1 1 0 6 1
netname=SPI1_SCLK
}
N 46700 41600 46700 44600 4
N 46700 41600 44200 41600 4
N 48500 44200 45100 44200 4
{
T 48400 44300 5 10 1 1 0 6 1
netname=\_SPI1_CE0
}
N 45100 44200 45100 47200 4
N 45100 47200 44200 47200 4
N 48500 42600 44700 42600 4
{
T 46200 42700 5 10 1 1 0 6 1
netname=TEST_ENABLE
}
N 44700 42600 44700 46400 4
N 44700 46400 44200 46400 4
N 48500 47400 48500 50800 4
{
T 48700 47700 5 10 1 1 90 0 1
netname=SPI0_MOSI
}
N 48500 50800 40300 50800 4
N 40300 45600 40300 50800 4
N 40300 45600 42800 45600 4
N 48500 47000 48200 47000 4
N 48200 47000 48200 50600 4
{
T 48400 47200 5 10 1 1 90 0 1
netname=SPI0_MISO
}
N 48200 50600 40600 50600 4
N 40600 50600 40600 45200 4
N 40600 45200 42800 45200 4
N 48500 46600 47900 46600 4
N 47900 46600 47900 50400 4
{
T 47800 46900 5 10 1 1 90 0 1
netname=SPI0_SCLK
}
N 41000 50400 47900 50400 4
N 41000 44800 41000 50400 4
N 41000 44800 42800 44800 4
N 48500 43800 47100 43800 4
{
T 48300 43900 5 10 1 1 0 6 1
netname=FORCE0
}
N 47100 43800 47100 50200 4
N 47100 50200 42200 50200 4
N 42200 50200 42200 47200 4
N 42200 47200 42800 47200 4
N 48500 43000 48300 43000 4
N 48300 40300 48300 43000 4
{
T 48500 41200 5 10 1 1 90 0 1
netname=EVENT_RDY
}
N 48300 40300 41400 40300 4
N 41400 40300 41400 46800 4
N 41400 46800 42800 46800 4
N 42800 46400 41800 46400 4
N 41800 40700 41800 46400 4
N 41800 40700 47900 40700 4
N 47900 40700 47900 43400 4
N 47900 43400 48500 43400 4
{
T 47700 43500 5 10 1 1 0 0 1
netname=FORCE1
}
N 48500 45000 47500 45000 4
{
T 48400 45100 5 10 1 1 0 6 1
netname=SPI1_MISO
}
N 47500 41100 47500 45000 4
N 47500 41100 42200 41100 4
N 42200 41100 42200 42400 4
N 42200 42400 42800 42400 4
C 51600 47100 1 0 0 header8-2.sym
{
T 52200 48800 5 10 1 1 0 0 1
refdes=J3
}
C 51600 44300 1 0 0 header10-2.sym
{
T 52200 46400 5 10 1 1 0 0 1
refdes=J4
}
N 44200 49200 44200 48800 4
N 44200 48800 50900 48800 4
N 50900 43400 50900 48800 4
N 50900 47700 51600 47700 4
C 52900 47000 1 0 0 gnd-1.sym
C 53200 48200 1 0 0 gnd-1.sym
N 53300 48500 53000 48500 4
N 51300 48500 51600 48500 4
N 50500 47300 51600 47300 4
C 51400 47800 1 0 0 gnd-1.sym
N 51500 48100 51600 48100 4
N 53700 48100 53000 48100 4
N 51300 48500 51300 46100 4
N 51300 46100 51600 46100 4
N 50900 45300 51600 45300 4
N 50500 47300 50500 44900 4
N 50500 44900 51600 44900 4
N 53700 48100 53700 45700 4
N 53700 45700 53000 45700 4
N 53700 46800 50900 46800 4
C 53100 45800 1 0 0 gnd-1.sym
N 53200 46100 53000 46100 4
C 53100 44600 1 0 0 gnd-1.sym
N 53200 44900 53000 44900 4
C 51200 45400 1 0 0 gnd-1.sym
N 51300 45700 51600 45700 4
C 51600 41600 1 0 0 header10-2.sym
{
T 52200 43700 5 10 1 1 0 0 1
refdes=J5
}
C 51500 41500 1 0 0 gnd-1.sym
N 51600 43400 50900 43400 4
C 54800 46500 1 0 0 TC1411NCOA.sym
{
T 55200 48000 5 10 1 1 0 0 1
refdes=U1
T 54900 46500 5 10 1 1 0 0 1
device=TC1411NCOA
}
N 45000 49300 54100 49300 4
{
T 45600 49400 5 10 1 1 0 0 1
netname=CLICK
}
N 54100 47500 54100 49300 4
N 54100 47500 54800 47500 4
C 54600 46600 1 0 0 gnd-1.sym
N 54700 46900 54800 46900 4
C 56100 46600 1 0 0 gnd-1.sym
N 56200 46900 56100 46900 4
C 54600 49000 1 0 0 5V-plus-1.sym
N 54800 49000 54800 47800 4
C 56300 47800 1 0 0 5V-plus-1.sym
N 56500 47800 56100 47800 4
C 55000 48600 1 0 0 capacitor-1.sym
{
T 55200 49100 5 10 1 1 0 0 1
refdes=C1
T 55200 49500 5 10 0 0 0 0 1
symversion=0.2
T 55200 49300 5 10 0 1 0 0 1
footprint=RCY100.fp
T 55600 49100 5 10 1 1 0 0 1
value=0.1u
}
N 55000 48800 54800 48800 4
C 55800 48500 1 0 0 gnd-1.sym
C 55100 45400 1 0 0 capacitor-1.sym
{
T 55300 45900 5 10 1 1 0 0 1
refdes=C2
T 55300 46300 5 10 0 0 0 0 1
symversion=0.2
T 55300 46100 5 10 0 1 0 0 1
footprint=RCY100.fp
T 55700 45900 5 10 1 1 0 0 1
value=10u
}
C 55100 43600 1 0 0 connector2-2.sym
{
T 55800 44900 5 10 1 1 0 6 1
refdes=J6
}
N 56100 47500 56600 47500 4
N 56600 47500 56600 45600 4
N 56600 45600 56000 45600 4
N 55100 45600 55100 44400 4
C 55000 43700 1 0 0 gnd-1.sym
N 56100 47200 56600 47200 4
T 50300 40200 9 10 1 0 0 0 1
1
T 52000 40200 9 10 1 0 0 0 1
1
C 47300 41700 1 90 0 resistor-1.sym
{
T 47000 41900 5 10 1 1 90 0 1
refdes=R1
T 47000 42200 5 10 1 1 90 0 1
value=10k
T 46600 41900 5 10 0 0 90 0 1
symversion=0.1
}
C 47100 41400 1 0 0 gnd-1.sym
N 45000 49300 45000 49900 4
N 45000 49900 42500 49900 4
N 42500 48800 42500 49900 4
N 42500 48800 42800 48800 4
