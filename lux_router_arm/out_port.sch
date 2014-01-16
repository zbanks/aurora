EESchema Schematic File Version 2  date Thu 16 Jan 2014 04:47:59 AM EST
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
Sheet 7 8
Title ""
Date "16 jan 2014"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L R R13
U 1 1 52D7A7A0
P 6000 3900
AR Path="/52D79664/52D7A7A0" Ref="R13"  Part="1" 
AR Path="/52D7966E/52D7A7A0" Ref="R7"  Part="1" 
AR Path="/52D7966D/52D7A7A0" Ref="R9"  Part="1" 
AR Path="/52D7966B/52D7A7A0" Ref="R11"  Part="1" 
AR Path="/52D79663/52D7A7A0" Ref="R15"  Part="1" 
AR Path="/52D7965C/52D7A7A0" Ref="R17"  Part="1" 
AR Path="/52D79548/52D7A7A0" Ref="R19"  Part="1" 
F 0 "R17" V 6080 3900 50  0000 C CNN
F 1 "120" V 6000 3900 50  0000 C CNN
	1    6000 3900
	0    -1   -1   0   
$EndComp
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
L +5V #PWR052
U 1 1 52D7960C
P 4450 4700
AR Path="/52D79664/52D7960C" Ref="#PWR052"  Part="1" 
AR Path="/52D7966E/52D7960C" Ref="#PWR034"  Part="1" 
AR Path="/52D7966D/52D7960C" Ref="#PWR040"  Part="1" 
AR Path="/52D7966B/52D7960C" Ref="#PWR046"  Part="1" 
AR Path="/52D79663/52D7960C" Ref="#PWR058"  Part="1" 
AR Path="/52D7965C/52D7960C" Ref="#PWR064"  Part="1" 
AR Path="/52D79548/52D7960C" Ref="#PWR070"  Part="1" 
F 0 "#PWR064" H 4450 4790 20  0001 C CNN
F 1 "+5V" H 4450 4790 30  0000 C CNN
	1    4450 4700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR053
U 1 1 52D79608
P 4450 5300
AR Path="/52D79664/52D79608" Ref="#PWR053"  Part="1" 
AR Path="/52D7966E/52D79608" Ref="#PWR035"  Part="1" 
AR Path="/52D7966D/52D79608" Ref="#PWR041"  Part="1" 
AR Path="/52D7966B/52D79608" Ref="#PWR047"  Part="1" 
AR Path="/52D79663/52D79608" Ref="#PWR059"  Part="1" 
AR Path="/52D7965C/52D79608" Ref="#PWR065"  Part="1" 
AR Path="/52D79548/52D79608" Ref="#PWR071"  Part="1" 
F 0 "#PWR065" H 4450 5300 30  0001 C CNN
F 1 "GND" H 4450 5230 30  0001 C CNN
	1    4450 5300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR054
U 1 1 52D79605
P 3650 5300
AR Path="/52D79664/52D79605" Ref="#PWR054"  Part="1" 
AR Path="/52D7966E/52D79605" Ref="#PWR036"  Part="1" 
AR Path="/52D7966D/52D79605" Ref="#PWR042"  Part="1" 
AR Path="/52D7966B/52D79605" Ref="#PWR048"  Part="1" 
AR Path="/52D79663/52D79605" Ref="#PWR060"  Part="1" 
AR Path="/52D7965C/52D79605" Ref="#PWR066"  Part="1" 
AR Path="/52D79548/52D79605" Ref="#PWR072"  Part="1" 
F 0 "#PWR066" H 3650 5300 30  0001 C CNN
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
L +5V #PWR055
U 1 1 52D795DE
P 5300 3550
AR Path="/52D79664/52D795DE" Ref="#PWR055"  Part="1" 
AR Path="/52D7966E/52D795DE" Ref="#PWR037"  Part="1" 
AR Path="/52D7966D/52D795DE" Ref="#PWR043"  Part="1" 
AR Path="/52D7966B/52D795DE" Ref="#PWR049"  Part="1" 
AR Path="/52D79663/52D795DE" Ref="#PWR061"  Part="1" 
AR Path="/52D7965C/52D795DE" Ref="#PWR067"  Part="1" 
AR Path="/52D79548/52D795DE" Ref="#PWR073"  Part="1" 
F 0 "#PWR067" H 5300 3640 20  0001 C CNN
F 1 "+5V" H 5300 3640 30  0000 C CNN
	1    5300 3550
	1    0    0    -1  
$EndComp
$Comp
L +48V #PWR056
U 1 1 52D795D8
P 6550 3000
AR Path="/52D79664/52D795D8" Ref="#PWR056"  Part="1" 
AR Path="/52D7966E/52D795D8" Ref="#PWR038"  Part="1" 
AR Path="/52D7966D/52D795D8" Ref="#PWR044"  Part="1" 
AR Path="/52D7966B/52D795D8" Ref="#PWR050"  Part="1" 
AR Path="/52D79663/52D795D8" Ref="#PWR062"  Part="1" 
AR Path="/52D7965C/52D795D8" Ref="#PWR068"  Part="1" 
AR Path="/52D79548/52D795D8" Ref="#PWR074"  Part="1" 
F 0 "#PWR068" H 6550 3130 20  0001 C CNN
F 1 "+48V" H 6550 3100 30  0000 C CNN
	1    6550 3000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR057
U 1 1 52D795D1
P 6000 4300
AR Path="/52D79664/52D795D1" Ref="#PWR057"  Part="1" 
AR Path="/52D7966E/52D795D1" Ref="#PWR039"  Part="1" 
AR Path="/52D7966D/52D795D1" Ref="#PWR045"  Part="1" 
AR Path="/52D7966B/52D795D1" Ref="#PWR051"  Part="1" 
AR Path="/52D79663/52D795D1" Ref="#PWR063"  Part="1" 
AR Path="/52D7965C/52D795D1" Ref="#PWR069"  Part="1" 
AR Path="/52D79548/52D795D1" Ref="#PWR075"  Part="1" 
F 0 "#PWR069" H 6000 4300 30  0001 C CNN
F 1 "GND" H 6000 4230 30  0001 C CNN
	1    6000 4300
	1    0    0    -1  
$EndComp
$Comp
L FUSE F4
U 1 1 52D795B4
P 6550 3350
AR Path="/52D79664/52D795B4" Ref="F4"  Part="1" 
AR Path="/52D7966E/52D795B4" Ref="F1"  Part="1" 
AR Path="/52D7966D/52D795B4" Ref="F2"  Part="1" 
AR Path="/52D7966B/52D795B4" Ref="F3"  Part="1" 
AR Path="/52D79663/52D795B4" Ref="F5"  Part="1" 
AR Path="/52D7965C/52D795B4" Ref="F6"  Part="1" 
AR Path="/52D79548/52D795B4" Ref="F7"  Part="1" 
F 0 "F6" H 6650 3400 40  0000 C CNN
F 1 "FUSE" H 6450 3300 40  0000 C CNN
	1    6550 3350
	0    -1   -1   0   
$EndComp
$Comp
L C C13
U 1 1 52D795AC
P 4450 5000
AR Path="/52D79664/52D795AC" Ref="C13"  Part="1" 
AR Path="/52D7966E/52D795AC" Ref="C10"  Part="1" 
AR Path="/52D7966D/52D795AC" Ref="C11"  Part="1" 
AR Path="/52D7966B/52D795AC" Ref="C12"  Part="1" 
AR Path="/52D79663/52D795AC" Ref="C14"  Part="1" 
AR Path="/52D7965C/52D795AC" Ref="C15"  Part="1" 
AR Path="/52D79548/52D795AC" Ref="C16"  Part="1" 
F 0 "C15" H 4500 5100 50  0000 L CNN
F 1 "100nF" H 4500 4900 50  0000 L CNN
	1    4450 5000
	1    0    0    -1  
$EndComp
$Comp
L R R14
U 1 1 52D795AA
P 3650 4450
AR Path="/52D79664/52D795AA" Ref="R14"  Part="1" 
AR Path="/52D7966E/52D795AA" Ref="R8"  Part="1" 
AR Path="/52D7966D/52D795AA" Ref="R10"  Part="1" 
AR Path="/52D7966B/52D795AA" Ref="R12"  Part="1" 
AR Path="/52D79663/52D795AA" Ref="R16"  Part="1" 
AR Path="/52D7965C/52D795AA" Ref="R18"  Part="1" 
AR Path="/52D79548/52D795AA" Ref="R20"  Part="1" 
F 0 "R18" V 3730 4450 50  0000 C CNN
F 1 "1k" V 3650 4450 50  0000 C CNN
	1    3650 4450
	1    0    0    -1  
$EndComp
$Comp
L LED D9
U 1 1 52D795A3
P 3650 5000
AR Path="/52D79664/52D795A3" Ref="D9"  Part="1" 
AR Path="/52D7966E/52D795A3" Ref="D6"  Part="1" 
AR Path="/52D7966D/52D795A3" Ref="D7"  Part="1" 
AR Path="/52D7966B/52D795A3" Ref="D8"  Part="1" 
AR Path="/52D79663/52D795A3" Ref="D10"  Part="1" 
AR Path="/52D7965C/52D795A3" Ref="D11"  Part="1" 
AR Path="/52D79548/52D795A3" Ref="D12"  Part="1" 
F 0 "D11" H 3650 5100 50  0000 C CNN
F 1 "LED" H 3650 4900 50  0000 C CNN
	1    3650 5000
	0    1    1    0   
$EndComp
$Comp
L CONN_4 P8
U 1 1 52D79591
P 7050 3900
AR Path="/52D79664/52D79591" Ref="P8"  Part="1" 
AR Path="/52D7966E/52D79591" Ref="P5"  Part="1" 
AR Path="/52D7966D/52D79591" Ref="P6"  Part="1" 
AR Path="/52D7966B/52D79591" Ref="P7"  Part="1" 
AR Path="/52D79663/52D79591" Ref="P9"  Part="1" 
AR Path="/52D7965C/52D79591" Ref="P10"  Part="1" 
AR Path="/52D79548/52D79591" Ref="P11"  Part="1" 
F 0 "P10" V 7000 3900 50  0000 C CNN
F 1 "CONN_4" V 7100 3900 50  0000 C CNN
	1    7050 3900
	1    0    0    1   
$EndComp
$Comp
L ST485E U5
U 1 1 52D7958B
P 4500 3900
AR Path="/52D79664/52D7958B" Ref="U5"  Part="1" 
AR Path="/52D7966E/52D7958B" Ref="U2"  Part="1" 
AR Path="/52D7966D/52D7958B" Ref="U3"  Part="1" 
AR Path="/52D7966B/52D7958B" Ref="U4"  Part="1" 
AR Path="/52D79663/52D7958B" Ref="U6"  Part="1" 
AR Path="/52D7965C/52D7958B" Ref="U7"  Part="1" 
AR Path="/52D79548/52D7958B" Ref="U8"  Part="1" 
F 0 "U7" H 4500 3850 60  0000 C CNN
F 1 "ST485E" H 4500 3950 60  0000 C CNN
F 2 "~" H 4550 3900 60  0000 C CNN
F 3 "~" H 4550 3900 60  0000 C CNN
	1    4500 3900
	1    0    0    -1  
$EndComp
$EndSCHEMATC
