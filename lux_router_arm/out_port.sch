EESchema Schematic File Version 2  date Thu 16 Jan 2014 03:35:13 AM EST
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
LIBS:open-project
LIBS:SN65HVD09
LIBS:AURORA_CARD
LIBS:custom
LIBS:tm4c1231d5pm
EELAYER 25  0
EELAYER END
$Descr A4 11700 8267
encoding utf-8
Sheet 2 8
Title ""
Date "16 jan 2014"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	4450 4700 4450 4800
Wire Wire Line
	3650 5300 3650 5200
Wire Wire Line
	3800 3750 3150 3750
Connection ~ 3650 3850
Wire Wire Line
	3150 3850 3800 3850
Connection ~ 3650 3950
Wire Wire Line
	3650 3950 3800 3950
Wire Wire Line
	5200 3750 5300 3750
Wire Wire Line
	5300 3750 5300 3550
Wire Wire Line
	6550 3600 6550 3750
Wire Wire Line
	6550 3750 6700 3750
Wire Wire Line
	5200 4050 6700 4050
Connection ~ 5650 3850
Wire Wire Line
	5750 3900 5650 3900
Wire Wire Line
	5650 3900 5650 3850
Wire Wire Line
	5200 3950 6700 3950
Wire Wire Line
	6700 3850 5200 3850
Wire Wire Line
	6250 3900 6350 3900
Wire Wire Line
	6350 3900 6350 3950
Connection ~ 6350 3950
Wire Wire Line
	6000 4300 6000 4050
Connection ~ 6000 4050
Wire Wire Line
	6550 3000 6550 3100
Wire Wire Line
	3650 3850 3650 4200
Wire Wire Line
	3150 4050 3800 4050
Wire Wire Line
	3650 4700 3650 4800
Wire Wire Line
	4450 5300 4450 5200
$Comp
L +5V #PWR?
U 1 1 52D7960C
P 4450 4700
F 0 "#PWR?" H 4450 4790 20  0001 C CNN
F 1 "+5V" H 4450 4790 30  0000 C CNN
	1    4450 4700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 52D79608
P 4450 5300
F 0 "#PWR?" H 4450 5300 30  0001 C CNN
F 1 "GND" H 4450 5230 30  0001 C CNN
	1    4450 5300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 52D79605
P 3650 5300
F 0 "#PWR?" H 3650 5300 30  0001 C CNN
F 1 "GND" H 3650 5230 30  0001 C CNN
	1    3650 5300
	1    0    0    -1  
$EndComp
Text HLabel 3150 4050 0    60   Input ~ 0
RX
Text HLabel 3150 3850 0    60   Input ~ 0
RTS
Text HLabel 3150 3750 0    60   Input ~ 0
TX
$Comp
L +5V #PWR?
U 1 1 52D795DE
P 5300 3550
F 0 "#PWR?" H 5300 3640 20  0001 C CNN
F 1 "+5V" H 5300 3640 30  0000 C CNN
	1    5300 3550
	1    0    0    -1  
$EndComp
$Comp
L +48V #PWR?
U 1 1 52D795D8
P 6550 3000
F 0 "#PWR?" H 6550 3130 20  0001 C CNN
F 1 "+48V" H 6550 3100 30  0000 C CNN
	1    6550 3000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 52D795D1
P 6000 4300
F 0 "#PWR?" H 6000 4300 30  0001 C CNN
F 1 "GND" H 6000 4230 30  0001 C CNN
	1    6000 4300
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 52D795BB
P 6000 3900
F 0 "R?" V 6080 3900 50  0000 C CNN
F 1 "R" V 6000 3900 50  0000 C CNN
	1    6000 3900
	0    -1   -1   0   
$EndComp
$Comp
L FUSE F?
U 1 1 52D795B4
P 6550 3350
F 0 "F?" H 6650 3400 40  0000 C CNN
F 1 "FUSE" H 6450 3300 40  0000 C CNN
	1    6550 3350
	0    -1   -1   0   
$EndComp
$Comp
L C C?
U 1 1 52D795AC
P 4450 5000
F 0 "C?" H 4500 5100 50  0000 L CNN
F 1 "C" H 4500 4900 50  0000 L CNN
	1    4450 5000
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 52D795AA
P 3650 4450
F 0 "R?" V 3730 4450 50  0000 C CNN
F 1 "R" V 3650 4450 50  0000 C CNN
	1    3650 4450
	1    0    0    -1  
$EndComp
$Comp
L LED D?
U 1 1 52D795A3
P 3650 5000
F 0 "D?" H 3650 5100 50  0000 C CNN
F 1 "LED" H 3650 4900 50  0000 C CNN
	1    3650 5000
	0    1    1    0   
$EndComp
$Comp
L CONN_4 P?
U 1 1 52D79591
P 7050 3900
F 0 "P?" V 7000 3900 50  0000 C CNN
F 1 "CONN_4" V 7100 3900 50  0000 C CNN
	1    7050 3900
	1    0    0    1   
$EndComp
$Comp
L ST485E U?
U 1 1 52D7958B
P 4500 3900
F 0 "U?" H 4500 3850 60  0000 C CNN
F 1 "ST485E" H 4500 3950 60  0000 C CNN
F 2 "~" H 4550 3900 60  0000 C CNN
F 3 "~" H 4550 3900 60  0000 C CNN
	1    4500 3900
	1    0    0    -1  
$EndComp
$EndSCHEMATC
