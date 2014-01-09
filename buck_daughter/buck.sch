EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:special
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:custom
LIBS:AURORA_CARD
LIBS:buck-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "9 jan 2014"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L CONN_4 P1
U 1 1 51CE88DA
P 2250 1800
F 0 "P1" V 2200 1800 50  0000 C CNN
F 1 "Modular Jack In" V 2300 1800 50  0000 C CNN
F 2 "" H 2250 1800 60  0000 C CNN
F 3 "" H 2250 1800 60  0000 C CNN
	1    2250 1800
	-1   0    0    1   
$EndComp
$Comp
L TPS54360 U4
U 1 1 51CE9211
P 5200 1700
F 0 "U4" H 5200 1600 50  0000 C CNN
F 1 "TPS54360DDAR" H 5200 1800 50  0000 C CNN
F 2 "MODULE" H 5200 1700 50  0001 C CNN
F 3 "DOCUMENTATION" H 5200 1700 50  0001 C CNN
	1    5200 1700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 51CE925B
P 2600 2050
F 0 "#PWR01" H 2600 2050 30  0001 C CNN
F 1 "GND" H 2600 1980 30  0001 C CNN
F 2 "" H 2600 2050 60  0000 C CNN
F 3 "" H 2600 2050 60  0000 C CNN
	1    2600 2050
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 51CE927E
P 3750 1850
F 0 "C1" H 3750 1950 40  0000 L CNN
F 1 "2u2" H 3756 1765 40  0000 L CNN
F 2 "" H 3788 1700 30  0000 C CNN
F 3 "" H 3750 1850 60  0000 C CNN
	1    3750 1850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 51CE92A5
P 3750 2050
F 0 "#PWR02" H 3750 2050 30  0001 C CNN
F 1 "GND" H 3750 1980 30  0001 C CNN
F 2 "" H 3750 2050 60  0000 C CNN
F 3 "" H 3750 2050 60  0000 C CNN
	1    3750 2050
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 51CE92C2
P 5150 1000
F 0 "C4" H 5150 1100 40  0000 L CNN
F 1 "100n" H 5156 915 40  0000 L CNN
F 2 "" H 5188 850 30  0000 C CNN
F 3 "" H 5150 1000 60  0000 C CNN
	1    5150 1000
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR03
U 1 1 51CE92E6
P 5200 2450
F 0 "#PWR03" H 5200 2450 30  0001 C CNN
F 1 "GND" H 5200 2380 30  0001 C CNN
F 2 "" H 5200 2450 60  0000 C CNN
F 3 "" H 5200 2450 60  0000 C CNN
	1    5200 2450
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 51CE92F5
P 6300 2250
F 0 "R3" V 6380 2250 40  0000 C CNN
F 1 "6K19" V 6307 2251 40  0000 C CNN
F 2 "" V 6230 2250 30  0000 C CNN
F 3 "" H 6300 2250 30  0000 C CNN
	1    6300 2250
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 51CE9304
P 6300 2700
F 0 "C5" H 6300 2800 40  0000 L CNN
F 1 "5n6" H 6306 2615 40  0000 L CNN
F 2 "" H 6338 2550 30  0000 C CNN
F 3 "" H 6300 2700 60  0000 C CNN
	1    6300 2700
	1    0    0    -1  
$EndComp
$Comp
L C C6
U 1 1 51CE9313
P 6600 2700
F 0 "C6" H 6600 2800 40  0000 L CNN
F 1 "120p" H 6606 2615 40  0000 L CNN
F 2 "" H 6638 2550 30  0000 C CNN
F 3 "" H 6600 2700 60  0000 C CNN
	1    6600 2700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 51CE932D
P 6300 2900
F 0 "#PWR04" H 6300 2900 30  0001 C CNN
F 1 "GND" H 6300 2830 30  0001 C CNN
F 2 "" H 6300 2900 60  0000 C CNN
F 3 "" H 6300 2900 60  0000 C CNN
	1    6300 2900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 51CE933C
P 6600 2900
F 0 "#PWR05" H 6600 2900 30  0001 C CNN
F 1 "GND" H 6600 2830 30  0001 C CNN
F 2 "" H 6600 2900 60  0000 C CNN
F 3 "" H 6600 2900 60  0000 C CNN
	1    6600 2900
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 51CE936E
P 4300 2100
F 0 "R2" V 4380 2100 40  0000 C CNN
F 1 "221k" V 4307 2101 40  0000 C CNN
F 2 "" V 4230 2100 30  0000 C CNN
F 3 "" H 4300 2100 30  0000 C CNN
	1    4300 2100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 51CE9387
P 4300 2350
F 0 "#PWR06" H 4300 2350 30  0001 C CNN
F 1 "GND" H 4300 2280 30  0001 C CNN
F 2 "" H 4300 2350 60  0000 C CNN
F 3 "" H 4300 2350 60  0000 C CNN
	1    4300 2350
	1    0    0    -1  
$EndComp
$Comp
L DIODE D1
U 1 1 51CE9396
P 7000 1750
F 0 "D1" H 7000 1850 40  0000 C CNN
F 1 "VS-50WQ10FN" H 7000 1650 40  0000 C CNN
F 2 "" H 7000 1750 60  0000 C CNN
F 3 "" H 7000 1750 60  0000 C CNN
	1    7000 1750
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR07
U 1 1 51CE93A5
P 7000 1950
F 0 "#PWR07" H 7000 1950 30  0001 C CNN
F 1 "GND" H 7000 1880 30  0001 C CNN
F 2 "" H 7000 1950 60  0000 C CNN
F 3 "" H 7000 1950 60  0000 C CNN
	1    7000 1950
	1    0    0    -1  
$EndComp
$Comp
L INDUCTOR L1
U 1 1 51CE93F3
P 7300 1550
F 0 "L1" V 7250 1550 40  0000 C CNN
F 1 "33u" V 7400 1550 40  0000 C CNN
F 2 "" H 7300 1550 60  0000 C CNN
F 3 "" H 7300 1550 60  0000 C CNN
	1    7300 1550
	0    -1   -1   0   
$EndComp
$Comp
L R R4
U 1 1 51CE9402
P 7600 1800
F 0 "R4" V 7680 1800 40  0000 C CNN
F 1 "143k" V 7607 1801 40  0000 C CNN
F 2 "" V 7530 1800 30  0000 C CNN
F 3 "" H 7600 1800 30  0000 C CNN
	1    7600 1800
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 51CE9411
P 7600 2300
F 0 "R5" V 7680 2300 40  0000 C CNN
F 1 "10k2" V 7607 2301 40  0000 C CNN
F 2 "" V 7530 2300 30  0000 C CNN
F 3 "" H 7600 2300 30  0000 C CNN
	1    7600 2300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 51CE9420
P 7600 2550
F 0 "#PWR08" H 7600 2550 30  0001 C CNN
F 1 "GND" H 7600 2480 30  0001 C CNN
F 2 "" H 7600 2550 60  0000 C CNN
F 3 "" H 7600 2550 60  0000 C CNN
	1    7600 2550
	1    0    0    -1  
$EndComp
$Comp
L C C7
U 1 1 51CE9442
P 7900 1750
F 0 "C7" H 7900 1850 40  0000 L CNN
F 1 "10u" H 7906 1665 40  0000 L CNN
F 2 "" H 7938 1600 30  0000 C CNN
F 3 "" H 7900 1750 60  0000 C CNN
	1    7900 1750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 51CE9451
P 7900 1950
F 0 "#PWR09" H 7900 1950 30  0001 C CNN
F 1 "GND" H 7900 1880 30  0001 C CNN
F 2 "" H 7900 1950 60  0000 C CNN
F 3 "" H 7900 1950 60  0000 C CNN
	1    7900 1950
	1    0    0    -1  
$EndComp
Text Label 2750 1650 0    60   ~ 0
48V
$Comp
L C C8
U 1 1 51CE973A
P 8150 1750
F 0 "C8" H 8150 1850 40  0000 L CNN
F 1 "10u" H 8156 1665 40  0000 L CNN
F 2 "" H 8188 1600 30  0000 C CNN
F 3 "" H 8150 1750 60  0000 C CNN
	1    8150 1750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 51CE9740
P 8150 1950
F 0 "#PWR010" H 8150 1950 30  0001 C CNN
F 1 "GND" H 8150 1880 30  0001 C CNN
F 2 "" H 8150 1950 60  0000 C CNN
F 3 "" H 8150 1950 60  0000 C CNN
	1    8150 1950
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR011
U 1 1 51CEAFDD
P 8350 1550
F 0 "#PWR011" H 8350 1500 20  0001 C CNN
F 1 "+12V" H 8350 1650 30  0000 C CNN
F 2 "" H 8350 1550 60  0000 C CNN
F 3 "" H 8350 1550 60  0000 C CNN
	1    8350 1550
	0    1    1    0   
$EndComp
NoConn ~ 4300 1750
$Comp
L GND #PWR012
U 1 1 51CEBDC9
P 6100 1650
F 0 "#PWR012" H 6100 1650 30  0001 C CNN
F 1 "GND" H 6100 1580 30  0001 C CNN
F 2 "" H 6100 1650 60  0000 C CNN
F 3 "" H 6100 1650 60  0000 C CNN
	1    6100 1650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2600 1950 2600 2050
Connection ~ 3750 1650
Wire Wire Line
	4950 1000 4300 1000
Wire Wire Line
	4300 1000 4300 1550
Wire Wire Line
	5350 1000 6100 1000
Wire Wire Line
	6100 1000 6100 1550
Wire Wire Line
	6300 2000 6600 2000
Wire Wire Line
	6600 2000 6600 2500
Wire Wire Line
	6100 1750 6450 1750
Wire Wire Line
	6450 1750 6450 2000
Connection ~ 6450 2000
Connection ~ 7000 1550
Wire Wire Line
	6100 1550 7000 1550
Wire Wire Line
	6100 1850 6700 1850
Wire Wire Line
	6700 1850 6700 2050
Wire Wire Line
	6700 2050 7600 2050
Connection ~ 7600 1550
Connection ~ 7900 1550
Wire Wire Line
	2600 1850 2900 1850
Wire Wire Line
	2900 3150 3700 3150
Wire Wire Line
	3400 1750 3400 2650
Wire Wire Line
	3400 1750 2600 1750
Wire Wire Line
	2600 1650 4300 1650
Connection ~ 8150 1550
Connection ~ 6100 1550
Wire Wire Line
	7600 1550 8350 1550
Connection ~ 7600 2050
Wire Wire Line
	2900 1850 2900 3150
$Comp
L R R1
U 1 1 52CAAE2F
P 3400 2900
F 0 "R1" V 3480 2900 40  0000 C CNN
F 1 "120R" V 3407 2901 40  0000 C CNN
F 2 "~" V 3330 2900 30  0000 C CNN
F 3 "~" H 3400 2900 30  0000 C CNN
	1    3400 2900
	1    0    0    -1  
$EndComp
$Comp
L ST485E U3
U 1 1 52CAB0FD
P 4600 2900
F 0 "U3" H 4600 2850 60  0000 C CNN
F 1 "ST485E" H 4600 2950 60  0000 C CNN
F 2 "" H 4650 2900 60  0000 C CNN
F 3 "" H 4650 2900 60  0000 C CNN
	1    4600 2900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3400 2650 3700 2650
Wire Wire Line
	3700 2650 3700 2850
Wire Wire Line
	3700 2850 3900 2850
Wire Wire Line
	3700 3150 3700 2950
Wire Wire Line
	3700 2950 3900 2950
Connection ~ 3400 3150
Connection ~ 3400 2650
$Comp
L GND #PWR014
U 1 1 52CAB25D
P 3900 3050
F 0 "#PWR014" H 3900 3050 30  0001 C CNN
F 1 "GND" H 3900 2980 30  0001 C CNN
F 2 "" H 3900 3050 60  0000 C CNN
F 3 "" H 3900 3050 60  0000 C CNN
	1    3900 3050
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR015
U 1 1 52CAB26C
P 3900 2750
F 0 "#PWR015" H 3900 2840 20  0001 C CNN
F 1 "+5V" H 3900 2840 30  0000 C CNN
F 2 "" H 3900 2750 60  0000 C CNN
F 3 "" H 3900 2750 60  0000 C CNN
	1    3900 2750
	0    -1   -1   0   
$EndComp
$Comp
L AURORA_CARD CONN1
U 1 1 52CAB429
P 6850 3950
F 0 "CONN1" H 6850 3850 50  0000 C CNN
F 1 "AURORA_CARD" H 6850 4050 50  0000 C CNN
F 2 "MODULE" H 6850 3950 50  0001 C CNN
F 3 "DOCUMENTATION" H 6850 3950 50  0001 C CNN
	1    6850 3950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR016
U 1 1 52CAB438
P 5800 4300
F 0 "#PWR016" H 5800 4300 30  0001 C CNN
F 1 "GND" H 5800 4230 30  0001 C CNN
F 2 "" H 5800 4300 60  0000 C CNN
F 3 "" H 5800 4300 60  0000 C CNN
	1    5800 4300
	0    1    1    0   
$EndComp
$Comp
L GND #PWR017
U 1 1 52CAB44F
P 5800 4200
F 0 "#PWR017" H 5800 4200 30  0001 C CNN
F 1 "GND" H 5800 4130 30  0001 C CNN
F 2 "" H 5800 4200 60  0000 C CNN
F 3 "" H 5800 4200 60  0000 C CNN
	1    5800 4200
	0    1    1    0   
$EndComp
$Comp
L GND #PWR018
U 1 1 52CAB455
P 5800 4100
F 0 "#PWR018" H 5800 4100 30  0001 C CNN
F 1 "GND" H 5800 4030 30  0001 C CNN
F 2 "" H 5800 4100 60  0000 C CNN
F 3 "" H 5800 4100 60  0000 C CNN
	1    5800 4100
	0    1    1    0   
$EndComp
$Comp
L GND #PWR019
U 1 1 52CAB45B
P 5800 4000
F 0 "#PWR019" H 5800 4000 30  0001 C CNN
F 1 "GND" H 5800 3930 30  0001 C CNN
F 2 "" H 5800 4000 60  0000 C CNN
F 3 "" H 5800 4000 60  0000 C CNN
	1    5800 4000
	0    1    1    0   
$EndComp
$Comp
L GND #PWR020
U 1 1 52CAB461
P 7900 3600
F 0 "#PWR020" H 7900 3600 30  0001 C CNN
F 1 "GND" H 7900 3530 30  0001 C CNN
F 2 "" H 7900 3600 60  0000 C CNN
F 3 "" H 7900 3600 60  0000 C CNN
	1    7900 3600
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR021
U 1 1 52CAB467
P 5800 3600
F 0 "#PWR021" H 5800 3600 30  0001 C CNN
F 1 "GND" H 5800 3530 30  0001 C CNN
F 2 "" H 5800 3600 60  0000 C CNN
F 3 "" H 5800 3600 60  0000 C CNN
	1    5800 3600
	0    1    1    0   
$EndComp
Wire Wire Line
	5300 2750 5600 2750
Wire Wire Line
	5600 2750 5600 3700
Wire Wire Line
	5600 3700 5800 3700
Wire Wire Line
	5300 2850 5300 2950
Wire Wire Line
	5300 2900 5500 2900
Wire Wire Line
	5500 2900 5500 3900
Wire Wire Line
	5500 3900 5800 3900
Connection ~ 5300 2900
Wire Wire Line
	5300 3050 5300 3800
Wire Wire Line
	5300 3800 5800 3800
$Comp
L +12V #PWR022
U 1 1 52CAB55E
P 7900 4300
F 0 "#PWR022" H 7900 4250 20  0001 C CNN
F 1 "+12V" H 7900 4400 30  0000 C CNN
F 2 "" H 7900 4300 60  0000 C CNN
F 3 "" H 7900 4300 60  0000 C CNN
	1    7900 4300
	0    1    1    0   
$EndComp
$Comp
L +12V #PWR023
U 1 1 52CAB564
P 7900 4200
F 0 "#PWR023" H 7900 4150 20  0001 C CNN
F 1 "+12V" H 7900 4350 30  0000 C CNN
F 2 "" H 7900 4200 60  0000 C CNN
F 3 "" H 7900 4200 60  0000 C CNN
	1    7900 4200
	0    1    1    0   
$EndComp
$Comp
L +12V #PWR024
U 1 1 52CAB574
P 7900 4100
F 0 "#PWR024" H 7900 4050 20  0001 C CNN
F 1 "+12V" H 7900 4200 30  0000 C CNN
F 2 "" H 7900 4100 60  0000 C CNN
F 3 "" H 7900 4100 60  0000 C CNN
	1    7900 4100
	0    1    1    0   
$EndComp
$Comp
L +12V #PWR025
U 1 1 52CAB57A
P 7900 4000
F 0 "#PWR025" H 7900 3950 20  0001 C CNN
F 1 "+12V" H 7900 4150 30  0000 C CNN
F 2 "" H 7900 4000 60  0000 C CNN
F 3 "" H 7900 4000 60  0000 C CNN
	1    7900 4000
	0    1    1    0   
$EndComp
$Comp
L NCP1117ST12T3G U2
U 1 1 52CAB3D0
P 4450 3650
F 0 "U2" H 4450 3900 40  0000 C CNN
F 1 "AP73333" H 4450 3850 40  0000 C CNN
F 2 "" H 4450 3650 60  0000 C CNN
F 3 "" H 4450 3650 60  0000 C CNN
	1    4450 3650
	1    0    0    -1  
$EndComp
$Comp
L NCP1117ST12T3G U1
U 1 1 52CAB3E2
P 3450 3650
F 0 "U1" H 3450 3900 40  0000 C CNN
F 1 "LD1117" H 3450 3850 40  0000 C CNN
F 2 "" H 3450 3650 60  0000 C CNN
F 3 "" H 3450 3650 60  0000 C CNN
	1    3450 3650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR026
U 1 1 52CAB3EF
P 4450 3900
F 0 "#PWR026" H 4450 3900 30  0001 C CNN
F 1 "GND" H 4450 3830 30  0001 C CNN
F 2 "" H 4450 3900 60  0000 C CNN
F 3 "" H 4450 3900 60  0000 C CNN
	1    4450 3900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR027
U 1 1 52CAB3FC
P 3450 3900
F 0 "#PWR027" H 3450 3900 30  0001 C CNN
F 1 "GND" H 3450 3830 30  0001 C CNN
F 2 "" H 3450 3900 60  0000 C CNN
F 3 "" H 3450 3900 60  0000 C CNN
	1    3450 3900
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR028
U 1 1 52CAB402
P 3050 3600
F 0 "#PWR028" H 3050 3550 20  0001 C CNN
F 1 "+12V" H 3050 3700 30  0000 C CNN
F 2 "" H 3050 3600 60  0000 C CNN
F 3 "" H 3050 3600 60  0000 C CNN
	1    3050 3600
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR029
U 1 1 52CAB413
P 7900 3900
F 0 "#PWR029" H 7900 3990 20  0001 C CNN
F 1 "+5V" H 7900 3990 30  0000 C CNN
F 2 "" H 7900 3900 60  0000 C CNN
F 3 "" H 7900 3900 60  0000 C CNN
	1    7900 3900
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR030
U 1 1 52CAB419
P 7900 3800
F 0 "#PWR030" H 7900 3890 20  0001 C CNN
F 1 "+5V" H 7900 3950 30  0000 C CNN
F 2 "" H 7900 3800 60  0000 C CNN
F 3 "" H 7900 3800 60  0000 C CNN
	1    7900 3800
	0    1    1    0   
$EndComp
$Comp
L +3.3V #PWR031
U 1 1 52CAB430
P 7900 3700
F 0 "#PWR031" H 7900 3660 30  0001 C CNN
F 1 "+3.3V" H 7900 3810 30  0000 C CNN
F 2 "" H 7900 3700 60  0000 C CNN
F 3 "" H 7900 3700 60  0000 C CNN
	1    7900 3700
	0    1    1    0   
$EndComp
$Comp
L +3.3V #PWR032
U 1 1 52CAB447
P 4950 3600
F 0 "#PWR032" H 4950 3560 30  0001 C CNN
F 1 "+3.3V" H 4950 3710 30  0000 C CNN
F 2 "" H 4950 3600 60  0000 C CNN
F 3 "" H 4950 3600 60  0000 C CNN
	1    4950 3600
	0    1    1    0   
$EndComp
Wire Wire Line
	3850 3600 4050 3600
Wire Wire Line
	3950 3500 3950 3700
Connection ~ 3950 3600
$Comp
L +5V #PWR033
U 1 1 52CAB5B1
P 3950 3500
F 0 "#PWR033" H 3950 3590 20  0001 C CNN
F 1 "+5V" H 3950 3650 30  0000 C CNN
F 2 "" H 3950 3500 60  0000 C CNN
F 3 "" H 3950 3500 60  0000 C CNN
	1    3950 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 3600 4950 3600
Wire Wire Line
	4900 3600 4900 3700
Connection ~ 4900 3600
$Comp
L C C3
U 1 1 52CAB629
P 4900 3900
F 0 "C3" H 4900 4000 40  0000 L CNN
F 1 "1u" H 4906 3815 40  0000 L CNN
F 2 "~" H 4938 3750 30  0000 C CNN
F 3 "~" H 4900 3900 60  0000 C CNN
	1    4900 3900
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 52CAB636
P 3950 3900
F 0 "C2" H 3950 4000 40  0000 L CNN
F 1 "2u2" H 3956 3815 40  0000 L CNN
F 2 "~" H 3988 3750 30  0000 C CNN
F 3 "~" H 3950 3900 60  0000 C CNN
	1    3950 3900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR034
U 1 1 52CAB671
P 3950 4100
F 0 "#PWR034" H 3950 4100 30  0001 C CNN
F 1 "GND" H 3950 4030 30  0001 C CNN
F 2 "" H 3950 4100 60  0000 C CNN
F 3 "" H 3950 4100 60  0000 C CNN
	1    3950 4100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR035
U 1 1 52CAB677
P 4900 4100
F 0 "#PWR035" H 4900 4100 30  0001 C CNN
F 1 "GND" H 4900 4030 30  0001 C CNN
F 2 "" H 4900 4100 60  0000 C CNN
F 3 "" H 4900 4100 60  0000 C CNN
	1    4900 4100
	1    0    0    -1  
$EndComp
$EndSCHEMATC