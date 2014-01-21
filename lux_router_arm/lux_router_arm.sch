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
LIBS:open-project
LIBS:SN65HVD09
LIBS:AURORA_CARD
LIBS:custom
LIBS:tm4c1231d5pm
LIBS:lux_router_arm-cache
EELAYER 24 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 8
Title ""
Date "19 jan 2014"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 6900 3500 0    60   ~ 0
RTS1
$Comp
L R R7
U 1 1 52DC3C9F
P 7650 3500
F 0 "R7" V 7730 3500 50  0000 C CNN
F 1 "1k" V 7650 3500 50  0000 C CNN
F 2 "" H 7650 3500 60  0001 C CNN
F 3 "" H 7650 3500 60  0001 C CNN
	1    7650 3500
	0    -1   -1   0   
$EndComp
$Comp
L LED D6
U 1 1 52DC3C9E
P 8200 3500
F 0 "D6" H 8200 3600 50  0000 C CNN
F 1 "LED" H 8200 3400 50  0000 C CNN
F 2 "" H 8200 3500 60  0001 C CNN
F 3 "" H 8200 3500 60  0001 C CNN
	1    8200 3500
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 52D7A754
P 7650 3200
F 0 "R6" V 7730 3200 50  0000 C CNN
F 1 "1k" V 7650 3200 50  0000 C CNN
F 2 "" H 7650 3200 60  0001 C CNN
F 3 "" H 7650 3200 60  0001 C CNN
	1    7650 3200
	0    -1   -1   0   
$EndComp
$Comp
L R R5
U 1 1 52D7A753
P 7650 2900
F 0 "R5" V 7730 2900 50  0000 C CNN
F 1 "1k" V 7650 2900 50  0000 C CNN
F 2 "" H 7650 2900 60  0001 C CNN
F 3 "" H 7650 2900 60  0001 C CNN
	1    7650 2900
	0    -1   -1   0   
$EndComp
$Comp
L R R4
U 1 1 52D7A74E
P 7650 2600
F 0 "R4" V 7730 2600 50  0000 C CNN
F 1 "1k" V 7650 2600 50  0000 C CNN
F 2 "" H 7650 2600 60  0001 C CNN
F 3 "" H 7650 2600 60  0001 C CNN
	1    7650 2600
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR01
U 1 1 52D7A11B
P 5750 1400
F 0 "#PWR01" H 5750 1400 30  0001 C CNN
F 1 "GND" H 5750 1330 30  0001 C CNN
F 2 "" H 5750 1400 60  0001 C CNN
F 3 "" H 5750 1400 60  0001 C CNN
	1    5750 1400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 52D7A11A
P 6100 1400
F 0 "#PWR02" H 6100 1400 30  0001 C CNN
F 1 "GND" H 6100 1330 30  0001 C CNN
F 2 "" H 6100 1400 60  0001 C CNN
F 3 "" H 6100 1400 60  0001 C CNN
	1    6100 1400
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 52D7A10C
P 5750 1050
F 0 "C3" H 5800 1150 50  0000 L CNN
F 1 "100uF" H 5800 950 50  0000 L CNN
F 2 "" H 5750 1050 60  0001 C CNN
F 3 "" H 5750 1050 60  0001 C CNN
	1    5750 1050
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 52D7A109
P 6100 1050
F 0 "C4" H 6150 1150 50  0000 L CNN
F 1 "1uF" H 6150 950 50  0000 L CNN
F 2 "" H 6100 1050 60  0001 C CNN
F 3 "" H 6100 1050 60  0001 C CNN
	1    6100 1050
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P4
U 1 1 52D7A0DB
P 8400 950
F 0 "P4" V 8350 950 40  0000 C CNN
F 1 "CONN_2" V 8450 950 40  0000 C CNN
F 2 "" H 8400 950 60  0001 C CNN
F 3 "" H 8400 950 60  0001 C CNN
	1    8400 950 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 52D7A0C0
P 6450 1400
F 0 "#PWR03" H 6450 1400 30  0001 C CNN
F 1 "GND" H 6450 1330 30  0001 C CNN
F 2 "" H 6450 1400 60  0001 C CNN
F 3 "" H 6450 1400 60  0001 C CNN
	1    6450 1400
	1    0    0    -1  
$EndComp
$Comp
L +48V #PWR04
U 1 1 52D7A0BB
P 6450 650
F 0 "#PWR04" H 6450 780 20  0001 C CNN
F 1 "+48V" H 6450 750 30  0000 C CNN
F 2 "" H 6450 650 60  0001 C CNN
F 3 "" H 6450 650 60  0001 C CNN
	1    6450 650 
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P3
U 1 1 52D7A0B2
P 7800 950
F 0 "P3" V 7750 950 40  0000 C CNN
F 1 "CONN_2" V 7850 950 40  0000 C CNN
F 2 "" H 7800 950 60  0001 C CNN
F 3 "" H 7800 950 60  0001 C CNN
	1    7800 950 
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR05
U 1 1 52D79FDF
P 750 2350
F 0 "#PWR05" H 750 2310 30  0001 C CNN
F 1 "+3.3V" H 750 2460 30  0000 C CNN
F 2 "" H 750 2350 60  0001 C CNN
F 3 "" H 750 2350 60  0001 C CNN
	1    750  2350
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 52D79FBB
P 1100 2450
F 0 "R1" V 1180 2450 50  0000 C CNN
F 1 "10k" V 1100 2450 50  0000 C CNN
F 2 "" H 1100 2450 60  0001 C CNN
F 3 "" H 1100 2450 60  0001 C CNN
	1    1100 2450
	0    -1   -1   0   
$EndComp
Text Label 6900 3200 0    60   ~ 0
LED2
Text Label 6900 2900 0    60   ~ 0
LED1
$Comp
L +3.3V #PWR06
U 1 1 52D79B91
P 6900 2200
F 0 "#PWR06" H 6900 2160 30  0001 C CNN
F 1 "+3.3V" H 6900 2310 30  0000 C CNN
F 2 "" H 6900 2200 60  0001 C CNN
F 3 "" H 6900 2200 60  0001 C CNN
	1    6900 2200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 52D79B74
P 8550 3650
F 0 "#PWR07" H 8550 3650 30  0001 C CNN
F 1 "GND" H 8550 3580 30  0001 C CNN
F 2 "" H 8550 3650 60  0001 C CNN
F 3 "" H 8550 3650 60  0001 C CNN
	1    8550 3650
	1    0    0    -1  
$EndComp
$Comp
L LED D5
U 1 1 52D79B5C
P 8200 3200
F 0 "D5" H 8200 3300 50  0000 C CNN
F 1 "LED" H 8200 3100 50  0000 C CNN
F 2 "" H 8200 3200 60  0001 C CNN
F 3 "" H 8200 3200 60  0001 C CNN
	1    8200 3200
	1    0    0    -1  
$EndComp
$Comp
L LED D4
U 1 1 52D79B5A
P 8200 2900
F 0 "D4" H 8200 3000 50  0000 C CNN
F 1 "LED" H 8200 2800 50  0000 C CNN
F 2 "" H 8200 2900 60  0001 C CNN
F 3 "" H 8200 2900 60  0001 C CNN
	1    8200 2900
	1    0    0    -1  
$EndComp
$Comp
L LED D3
U 1 1 52D79B55
P 8200 2600
F 0 "D3" H 8200 2700 50  0000 C CNN
F 1 "LED" H 8200 2500 50  0000 C CNN
F 2 "" H 8200 2600 60  0001 C CNN
F 3 "" H 8200 2600 60  0001 C CNN
	1    8200 2600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 52D79B3F
P 8300 2100
F 0 "#PWR08" H 8300 2100 30  0001 C CNN
F 1 "GND" H 8300 2030 30  0001 C CNN
F 2 "" H 8300 2100 60  0001 C CNN
F 3 "" H 8300 2100 60  0001 C CNN
	1    8300 2100
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR09
U 1 1 52D79B3C
P 6900 1200
F 0 "#PWR09" H 6900 1160 30  0001 C CNN
F 1 "+3.3V" H 6900 1310 30  0000 C CNN
F 2 "" H 6900 1200 60  0001 C CNN
F 3 "" H 6900 1200 60  0001 C CNN
	1    6900 1200
	1    0    0    -1  
$EndComp
$Comp
L C C9
U 1 1 52D79B22
P 8300 1650
F 0 "C9" H 8350 1750 50  0000 L CNN
F 1 "100nF" H 8350 1550 50  0000 L CNN
F 2 "" H 8300 1650 60  0001 C CNN
F 3 "" H 8300 1650 60  0001 C CNN
	1    8300 1650
	1    0    0    -1  
$EndComp
$Comp
L C C8
U 1 1 52D79B0F
P 7950 1650
F 0 "C8" H 8000 1750 50  0000 L CNN
F 1 "100nF" H 8000 1550 50  0000 L CNN
F 2 "" H 7950 1650 60  0001 C CNN
F 3 "" H 7950 1650 60  0001 C CNN
	1    7950 1650
	1    0    0    -1  
$EndComp
$Comp
L C C7
U 1 1 52D79B0D
P 7600 1650
F 0 "C7" H 7650 1750 50  0000 L CNN
F 1 "100nF" H 7650 1550 50  0000 L CNN
F 2 "" H 7600 1650 60  0001 C CNN
F 3 "" H 7600 1650 60  0001 C CNN
	1    7600 1650
	1    0    0    -1  
$EndComp
$Comp
L C C6
U 1 1 52D79B0B
P 7250 1650
F 0 "C6" H 7300 1750 50  0000 L CNN
F 1 "100nF" H 7300 1550 50  0000 L CNN
F 2 "" H 7250 1650 60  0001 C CNN
F 3 "" H 7250 1650 60  0001 C CNN
	1    7250 1650
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 52D79B07
P 6900 1650
F 0 "C5" H 6950 1750 50  0000 L CNN
F 1 "100nF" H 6950 1550 50  0000 L CNN
F 2 "" H 6900 1650 60  0001 C CNN
F 3 "" H 6900 1650 60  0001 C CNN
	1    6900 1650
	1    0    0    -1  
$EndComp
Text Label 8600 4450 2    60   ~ 0
RX6
Text Label 8600 3850 2    60   ~ 0
RX1
Text Label 6850 4450 0    60   ~ 0
RX6_L
Text Label 6850 3850 0    60   ~ 0
RX1_L
$Comp
L GND #PWR010
U 1 1 52D7995C
P 7400 4950
F 0 "#PWR010" H 7400 4950 30  0001 C CNN
F 1 "GND" H 7400 4880 30  0001 C CNN
F 2 "" H 7400 4950 60  0001 C CNN
F 3 "" H 7400 4950 60  0001 C CNN
	1    7400 4950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 52D79959
P 7400 4350
F 0 "#PWR011" H 7400 4350 30  0001 C CNN
F 1 "GND" H 7400 4280 30  0001 C CNN
F 2 "" H 7400 4350 60  0001 C CNN
F 3 "" H 7400 4350 60  0001 C CNN
	1    7400 4350
	1    0    0    -1  
$EndComp
$Comp
L ZENER D2
U 1 1 52D79953
P 7400 4700
F 0 "D2" H 7400 4800 50  0000 C CNN
F 1 "ZENER 3V3" H 7400 4600 40  0000 C CNN
F 2 "" H 7400 4700 60  0001 C CNN
F 3 "" H 7400 4700 60  0001 C CNN
	1    7400 4700
	0    -1   -1   0   
$EndComp
$Comp
L ZENER D1
U 1 1 52D7994A
P 7400 4100
F 0 "D1" H 7400 4200 50  0000 C CNN
F 1 "ZENER 3V3" H 7400 4000 40  0000 C CNN
F 2 "" H 7400 4100 60  0001 C CNN
F 3 "" H 7400 4100 60  0001 C CNN
	1    7400 4100
	0    -1   -1   0   
$EndComp
$Comp
L R R3
U 1 1 52D79948
P 7900 4450
F 0 "R3" V 7980 4450 50  0000 C CNN
F 1 "100" V 7900 4450 50  0000 C CNN
F 2 "" H 7900 4450 60  0001 C CNN
F 3 "" H 7900 4450 60  0001 C CNN
	1    7900 4450
	0    -1   -1   0   
$EndComp
$Comp
L R R2
U 1 1 52D79941
P 7900 3850
F 0 "R2" V 7980 3850 50  0000 C CNN
F 1 "100" V 7900 3850 50  0000 C CNN
F 2 "" H 7900 3850 60  0001 C CNN
F 3 "" H 7900 3850 60  0001 C CNN
	1    7900 3850
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR012
U 1 1 52D79870
P 1500 3500
F 0 "#PWR012" H 1500 3500 30  0001 C CNN
F 1 "GND" H 1500 3430 30  0001 C CNN
F 2 "" H 1500 3500 60  0001 C CNN
F 3 "" H 1500 3500 60  0001 C CNN
	1    1500 3500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR013
U 1 1 52D7986E
P 700 3500
F 0 "#PWR013" H 700 3500 30  0001 C CNN
F 1 "GND" H 700 3430 30  0001 C CNN
F 2 "" H 700 3500 60  0001 C CNN
F 3 "" H 700 3500 60  0001 C CNN
	1    700  3500
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 52D79861
P 1500 3200
F 0 "C2" H 1550 3300 50  0000 L CNN
F 1 "20pF" H 1550 3100 50  0000 L CNN
F 2 "" H 1500 3200 60  0001 C CNN
F 3 "" H 1500 3200 60  0001 C CNN
	1    1500 3200
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 52D7985B
P 700 3200
F 0 "C1" H 750 3300 50  0000 L CNN
F 1 "20pF" H 750 3100 50  0000 L CNN
F 2 "" H 700 3200 60  0001 C CNN
F 3 "" H 700 3200 60  0001 C CNN
	1    700  3200
	1    0    0    -1  
$EndComp
$Comp
L CRYSTAL X1
U 1 1 52D79839
P 1100 2900
F 0 "X1" H 1100 3050 60  0000 C CNN
F 1 "CRYSTAL" H 1100 2750 60  0000 C CNN
F 2 "" H 1100 2900 60  0001 C CNN
F 3 "" H 1100 2900 60  0001 C CNN
	1    1100 2900
	1    0    0    -1  
$EndComp
Text Label 850  5350 0    60   ~ 0
RX1
Text Label 850  5450 0    60   ~ 0
TX1
Text Label 850  5550 0    60   ~ 0
RTS1
NoConn ~ 3600 5950
NoConn ~ 3600 5850
NoConn ~ 3600 5750
NoConn ~ 3600 5650
$Comp
L GND #PWR014
U 1 1 52D79775
P 3700 5300
F 0 "#PWR014" H 3700 5300 30  0001 C CNN
F 1 "GND" H 3700 5230 30  0001 C CNN
F 2 "" H 3700 5300 60  0001 C CNN
F 3 "" H 3700 5300 60  0001 C CNN
	1    3700 5300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR015
U 1 1 52D79767
P 1400 6150
F 0 "#PWR015" H 1400 6150 30  0001 C CNN
F 1 "GND" H 1400 6080 30  0001 C CNN
F 2 "" H 1400 6150 60  0001 C CNN
F 3 "" H 1400 6150 60  0001 C CNN
	1    1400 6150
	1    0    0    -1  
$EndComp
$Comp
L AURORA_CARD CONN1
U 1 1 52D7975B
P 2550 5600
F 0 "CONN1" H 2550 5500 50  0000 C CNN
F 1 "AURORA_CARD" H 2550 5700 50  0000 C CNN
F 2 "MODULE" H 2550 5600 50  0001 C CNN
F 3 "DOCUMENTATION" H 2550 5600 50  0001 C CNN
	1    2550 5600
	1    0    0    -1  
$EndComp
$Comp
L TM4C1231D5PM U1
U 1 1 52D79757
P 3050 2700
F 0 "U1" H 3050 2600 50  0000 C CNN
F 1 "TM4C1231D5PM" H 3050 2800 50  0000 C CNN
F 2 "MODULE" H 3050 2700 50  0001 C CNN
F 3 "DOCUMENTATION" H 3050 2700 50  0001 C CNN
	1    3050 2700
	1    0    0    -1  
$EndComp
$Sheet
S 9900 3500 550  500 
U 52D7966E
F0 "out_port_5" 60
F1 "out_port.sch" 60
F2 "RX" I L 9900 3750 60 
F3 "RTS" I L 9900 3900 60 
F4 "TX" I L 9900 3600 60 
$EndSheet
Text Label 9250 3600 0    60   ~ 0
TX5
Text Label 9250 3750 0    60   ~ 0
RX5
Text Label 9250 3900 0    60   ~ 0
RTS5
Text Label 9250 4600 0    60   ~ 0
RTS6
Text Label 9250 4450 0    60   ~ 0
RX6
Text Label 9250 4300 0    60   ~ 0
TX6
$Sheet
S 9900 4200 550  500 
U 52D7966D
F0 "out_port_6" 60
F1 "out_port.sch" 60
F2 "RX" I L 9900 4450 60 
F3 "RTS" I L 9900 4600 60 
F4 "TX" I L 9900 4300 60 
$EndSheet
Text Label 9250 5300 0    60   ~ 0
RTS7
Text Label 9250 5150 0    60   ~ 0
RX7
Text Label 9250 5000 0    60   ~ 0
TX7
$Sheet
S 9900 4900 550  500 
U 52D7966B
F0 "out_port_7" 60
F1 "out_port.sch" 60
F2 "RX" I L 9900 5150 60 
F3 "RTS" I L 9900 5300 60 
F4 "TX" I L 9900 5000 60 
$EndSheet
$Sheet
S 9900 2100 550  500 
U 52D79664
F0 "out_port_3" 60
F1 "out_port.sch" 60
F2 "RX" I L 9900 2350 60 
F3 "RTS" I L 9900 2500 60 
F4 "TX" I L 9900 2200 60 
$EndSheet
Text Label 9250 2200 0    60   ~ 0
TX3
Text Label 9250 2350 0    60   ~ 0
RX3
Text Label 9250 2500 0    60   ~ 0
RTS3
Text Label 9250 3200 0    60   ~ 0
RTS4
Text Label 9250 3050 0    60   ~ 0
RX4
Text Label 9250 2900 0    60   ~ 0
TX4
$Sheet
S 9900 2800 550  500 
U 52D79663
F0 "out_port_4" 60
F1 "out_port.sch" 60
F2 "RX" I L 9900 3050 60 
F3 "RTS" I L 9900 3200 60 
F4 "TX" I L 9900 2900 60 
$EndSheet
$Sheet
S 9900 1400 550  500 
U 52D7965C
F0 "out_port_2" 60
F1 "out_port.sch" 60
F2 "RX" I L 9900 1650 60 
F3 "RTS" I L 9900 1800 60 
F4 "TX" I L 9900 1500 60 
$EndSheet
Text Label 9250 1500 0    60   ~ 0
TX2
Text Label 9250 1650 0    60   ~ 0
RX2
Text Label 9250 1800 0    60   ~ 0
RTS2
Text Label 9250 1100 0    60   ~ 0
RTS0
Text Label 9250 950  0    60   ~ 0
RX0
Text Label 9250 800  0    60   ~ 0
TX0
$Sheet
S 9900 700  550  500 
U 52D79548
F0 "out_port_1" 60
F1 "out_port.sch" 60
F2 "RX" I L 9900 950 60 
F3 "RTS" I L 9900 1100 60 
F4 "TX" I L 9900 800 60 
$EndSheet
$Comp
L GND #PWR016
U 1 1 52DC7E70
P 3050 4850
F 0 "#PWR016" H 3050 4850 30  0001 C CNN
F 1 "GND" H 3050 4780 30  0001 C CNN
F 2 "" H 3050 4850 60  0000 C CNN
F 3 "" H 3050 4850 60  0000 C CNN
	1    3050 4850
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR017
U 1 1 52DC823C
P 3000 600
F 0 "#PWR017" H 3000 560 30  0001 C CNN
F 1 "+3.3V" H 3000 710 30  0000 C CNN
F 2 "" H 3000 600 60  0000 C CNN
F 3 "" H 3000 600 60  0000 C CNN
	1    3000 600 
	1    0    0    -1  
$EndComp
NoConn ~ 1700 3150
NoConn ~ 1700 3250
NoConn ~ 1700 3500
NoConn ~ 1700 3700
NoConn ~ 1700 3950
Text Label 1150 1100 0    60   ~ 0
RX7
Text Label 1150 1200 0    60   ~ 0
TX7
Text Label 1150 1500 0    60   ~ 0
RX5
Text Label 1150 1600 0    60   ~ 0
TX5
Text Label 5000 1100 2    60   ~ 0
RX0
Text Label 5000 1200 2    60   ~ 0
TX0
Text Label 5000 2050 2    60   ~ 0
TX1
Text Label 5000 3400 2    60   ~ 0
RX3
Text Label 5000 3500 2    60   ~ 0
TX3
Text Label 5000 4150 2    60   ~ 0
TX6
Text Label 5000 4250 2    60   ~ 0
RX2
Text Label 5000 4350 2    60   ~ 0
TX2
Text Label 5000 3200 2    60   ~ 0
RX4
Text Label 5000 3300 2    60   ~ 0
TX4
Text Label 1150 1800 0    60   ~ 0
RTS1
$Comp
L CONN_4 P1
U 1 1 52DCE99C
P 5750 2950
F 0 "P1" V 5700 2950 50  0000 C CNN
F 1 "CONN_4" V 5800 2950 50  0000 C CNN
F 2 "" H 5750 2950 60  0000 C CNN
F 3 "" H 5750 2950 60  0000 C CNN
	1    5750 2950
	1    0    0    -1  
$EndComp
$Comp
L CONN_4 P2
U 1 1 52DCE9E8
P 6550 2950
F 0 "P2" V 6500 2950 50  0000 C CNN
F 1 "CONN_4" V 6600 2950 50  0000 C CNN
F 2 "" H 6550 2950 60  0000 C CNN
F 3 "" H 6550 2950 60  0000 C CNN
	1    6550 2950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR018
U 1 1 52DCF14E
P 6100 3200
F 0 "#PWR018" H 6100 3200 30  0001 C CNN
F 1 "GND" H 6100 3130 30  0001 C CNN
F 2 "" H 6100 3200 60  0000 C CNN
F 3 "" H 6100 3200 60  0000 C CNN
	1    6100 3200
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR019
U 1 1 52DCF1DB
P 6100 2650
F 0 "#PWR019" H 6100 2610 30  0001 C CNN
F 1 "+3.3V" H 6100 2760 30  0000 C CNN
F 2 "" H 6100 2650 60  0000 C CNN
F 3 "" H 6100 2650 60  0000 C CNN
	1    6100 2650
	1    0    0    -1  
$EndComp
Text Label 5000 3650 2    60   ~ 0
RTS0
Text Label 5000 3850 2    60   ~ 0
RTS2
Text Label 5000 3950 2    60   ~ 0
RTS3
Text Label 5000 1500 2    60   ~ 0
RTS4
Text Label 5000 1600 2    60   ~ 0
RTS5
Text Label 5000 1700 2    60   ~ 0
RTS6
Text Label 5000 1800 2    60   ~ 0
RTS7
Text Label 5000 4050 2    60   ~ 0
RX6_L
Text Label 5000 1950 2    60   ~ 0
RX1_L
NoConn ~ 4400 2150
NoConn ~ 4400 2250
NoConn ~ 4400 2350
NoConn ~ 4400 2450
NoConn ~ 4400 1300
NoConn ~ 4400 1400
NoConn ~ 4400 3750
NoConn ~ 1700 1900
NoConn ~ 1700 2000
NoConn ~ 1700 2100
NoConn ~ 1700 2200
NoConn ~ 1700 1300
NoConn ~ 1700 1400
$Comp
L FUSE F8
U 1 1 52DD7C05
P 6950 850
F 0 "F8" H 7050 900 40  0000 C CNN
F 1 "FUSE" H 6850 800 40  0000 C CNN
F 2 "" H 6950 850 60  0000 C CNN
F 3 "" H 6950 850 60  0000 C CNN
	1    6950 850 
	1    0    0    -1  
$EndComp
Text Label 5000 2550 2    60   ~ 0
LED1
Text Label 5000 2650 2    60   ~ 0
LED2
$Comp
L LM5005 U10
U 1 1 52DCD396
P 6400 6050
F 0 "U10" H 6400 5950 60  0000 C CNN
F 1 "LM5005" H 6400 6150 60  0000 C CNN
F 2 "" H 6400 6050 60  0000 C CNN
F 3 "" H 6400 6050 60  0000 C CNN
	1    6400 6050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR020
U 1 1 52DCE408
P 6400 7550
F 0 "#PWR020" H 6400 7550 30  0001 C CNN
F 1 "GND" H 6400 7480 30  0001 C CNN
F 2 "" H 6400 7550 60  0000 C CNN
F 3 "" H 6400 7550 60  0000 C CNN
	1    6400 7550
	1    0    0    -1  
$EndComp
NoConn ~ 5400 5400
$Comp
L +48V #PWR021
U 1 1 52DCF2C7
P 5300 5200
F 0 "#PWR021" H 5300 5330 20  0001 C CNN
F 1 "+48V" H 5300 5300 30  0000 C CNN
F 2 "" H 5300 5200 60  0000 C CNN
F 3 "" H 5300 5200 60  0000 C CNN
	1    5300 5200
	1    0    0    -1  
$EndComp
$Comp
L C Cin1
U 1 1 52DCF5F7
P 4050 7050
F 0 "Cin1" H 4050 7150 40  0000 L CNN
F 1 "C" H 4056 6965 40  0000 L CNN
F 2 "" H 4088 6900 30  0000 C CNN
F 3 "" H 4050 7050 60  0000 C CNN
	1    4050 7050
	1    0    0    -1  
$EndComp
$Comp
L C Css1
U 1 1 52DCF75D
P 4300 7050
F 0 "Css1" H 4300 7150 40  0000 L CNN
F 1 "C" H 4306 6965 40  0000 L CNN
F 2 "" H 4338 6900 30  0000 C CNN
F 3 "" H 4300 7050 60  0000 C CNN
	1    4300 7050
	1    0    0    -1  
$EndComp
$Comp
L C Cbyp1
U 1 1 52DCF763
P 4550 7050
F 0 "Cbyp1" H 4550 7150 40  0000 L CNN
F 1 "C" H 4556 6965 40  0000 L CNN
F 2 "" H 4588 6900 30  0000 C CNN
F 3 "" H 4550 7050 60  0000 C CNN
	1    4550 7050
	1    0    0    -1  
$EndComp
$Comp
L C Cramp1
U 1 1 52DCF773
P 4800 7050
F 0 "Cramp1" H 4800 7150 40  0000 L CNN
F 1 "C" H 4806 6965 40  0000 L CNN
F 2 "" H 4838 6900 30  0000 C CNN
F 3 "" H 4800 7050 60  0000 C CNN
	1    4800 7050
	1    0    0    -1  
$EndComp
$Comp
L R Rt1
U 1 1 52DCF77B
P 5050 7050
F 0 "Rt1" V 5130 7050 40  0000 C CNN
F 1 "R" V 5057 7051 40  0000 C CNN
F 2 "" V 4980 7050 30  0000 C CNN
F 3 "" H 5050 7050 30  0000 C CNN
	1    5050 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 3500 7900 3500
Wire Wire Line
	8550 3500 8400 3500
Wire Wire Line
	6900 3500 7400 3500
Connection ~ 6100 850 
Wire Wire Line
	5750 850  6100 850 
Wire Wire Line
	6100 850  6450 850 
Wire Wire Line
	6450 850  6700 850 
Wire Wire Line
	7200 850  7450 850 
Wire Wire Line
	7450 850  8050 850 
Wire Wire Line
	6100 1250 6100 1400
Connection ~ 7450 1050
Wire Wire Line
	6450 1050 7450 1050
Wire Wire Line
	7450 1050 8050 1050
Wire Wire Line
	6450 850  6450 650 
Wire Wire Line
	6900 2900 7400 2900
Wire Wire Line
	8000 3200 7900 3200
Wire Wire Line
	8000 2600 7900 2600
Connection ~ 8550 3200
Wire Wire Line
	8550 2900 8400 2900
Connection ~ 8300 1950
Wire Wire Line
	8300 1850 8300 1950
Wire Wire Line
	8300 1950 8300 2100
Connection ~ 7250 1950
Wire Wire Line
	7250 1850 7250 1950
Connection ~ 7950 1950
Wire Wire Line
	7950 1950 7950 1850
Connection ~ 7250 1350
Wire Wire Line
	7250 1450 7250 1350
Connection ~ 7950 1350
Wire Wire Line
	7950 1350 7950 1450
Connection ~ 7400 4450
Wire Wire Line
	8600 4450 8150 4450
Wire Wire Line
	7400 4500 7400 4450
Wire Wire Line
	7400 4350 7400 4300
Wire Wire Line
	700  3500 700  3400
Connection ~ 700  2900
Wire Wire Line
	700  2600 700  2900
Wire Wire Line
	700  2900 700  3000
Wire Wire Line
	1500 5350 850  5350
Wire Wire Line
	1500 5550 850  5550
Wire Wire Line
	3600 5250 3700 5250
Wire Wire Line
	3700 5250 3700 5300
Connection ~ 1400 5750
Wire Wire Line
	1400 5750 1500 5750
Connection ~ 1400 5950
Wire Wire Line
	1400 5950 1500 5950
Wire Wire Line
	9250 3750 9900 3750
Wire Wire Line
	9900 3600 9250 3600
Wire Wire Line
	9250 3900 9900 3900
Wire Wire Line
	9250 4600 9900 4600
Wire Wire Line
	9900 4300 9250 4300
Wire Wire Line
	9250 4450 9900 4450
Wire Wire Line
	9250 5300 9900 5300
Wire Wire Line
	9900 5000 9250 5000
Wire Wire Line
	9250 5150 9900 5150
Wire Wire Line
	9250 2350 9900 2350
Wire Wire Line
	9900 2200 9250 2200
Wire Wire Line
	9250 2500 9900 2500
Wire Wire Line
	9250 3200 9900 3200
Wire Wire Line
	9900 2900 9250 2900
Wire Wire Line
	9250 3050 9900 3050
Wire Wire Line
	9250 1650 9900 1650
Wire Wire Line
	9900 1500 9250 1500
Wire Wire Line
	9250 1800 9900 1800
Wire Wire Line
	9250 1100 9900 1100
Wire Wire Line
	9900 800  9250 800 
Wire Wire Line
	9250 950  9900 950 
Wire Wire Line
	1500 5650 1400 5650
Wire Wire Line
	1400 5850 1500 5850
Connection ~ 1400 5850
Wire Wire Line
	1500 5250 1400 5250
Wire Wire Line
	1400 5250 1400 5650
Wire Wire Line
	1400 5650 1400 5750
Wire Wire Line
	1400 5750 1400 5850
Wire Wire Line
	1400 5850 1400 5950
Wire Wire Line
	1400 5950 1400 6150
Connection ~ 1400 5650
Wire Wire Line
	850  5450 1500 5450
Wire Wire Line
	1400 2900 1500 2900
Wire Wire Line
	1500 2900 1700 2900
Connection ~ 1500 2900
Wire Wire Line
	1500 3500 1500 3400
Wire Wire Line
	7400 3900 7400 3850
Wire Wire Line
	7400 4950 7400 4900
Wire Wire Line
	8150 3850 8600 3850
Wire Wire Line
	6850 3850 7400 3850
Wire Wire Line
	7400 3850 7650 3850
Connection ~ 7400 3850
Wire Wire Line
	6850 4450 7400 4450
Wire Wire Line
	7400 4450 7650 4450
Wire Wire Line
	6900 1350 7250 1350
Wire Wire Line
	7250 1350 7600 1350
Wire Wire Line
	7600 1350 7950 1350
Wire Wire Line
	7950 1350 8300 1350
Wire Wire Line
	8300 1350 8300 1450
Wire Wire Line
	7600 1350 7600 1450
Connection ~ 7600 1350
Wire Wire Line
	6900 1850 6900 1950
Wire Wire Line
	6900 1950 7250 1950
Wire Wire Line
	7250 1950 7600 1950
Wire Wire Line
	7600 1950 7950 1950
Wire Wire Line
	7950 1950 8300 1950
Wire Wire Line
	7600 1950 7600 1850
Connection ~ 7600 1950
Wire Wire Line
	6900 1200 6900 1350
Wire Wire Line
	6900 1350 6900 1450
Connection ~ 6900 1350
Wire Wire Line
	8550 3200 8400 3200
Wire Wire Line
	8550 2300 8550 2600
Wire Wire Line
	8550 2600 8550 2900
Wire Wire Line
	8550 2900 8550 3200
Wire Wire Line
	8550 3200 8550 3500
Wire Wire Line
	8550 3500 8550 3650
Wire Wire Line
	8550 2600 8400 2600
Connection ~ 8550 2900
Wire Wire Line
	7900 2900 8000 2900
Wire Wire Line
	6900 3200 7400 3200
Wire Wire Line
	6900 2600 7400 2600
Wire Wire Line
	6450 1050 6450 1400
Connection ~ 7450 850 
Wire Wire Line
	5750 1250 5750 1400
Connection ~ 6450 850 
Wire Wire Line
	2600 850  2600 750 
Wire Wire Line
	2600 750  2700 750 
Wire Wire Line
	2700 750  2900 750 
Wire Wire Line
	2900 750  3000 750 
Wire Wire Line
	3000 750  3100 750 
Wire Wire Line
	3100 750  3200 750 
Wire Wire Line
	3200 750  3400 750 
Wire Wire Line
	3400 750  3400 850 
Connection ~ 2700 750 
Wire Wire Line
	2900 850  2900 750 
Connection ~ 2900 750 
Wire Wire Line
	3000 600  3000 750 
Wire Wire Line
	3000 750  3000 850 
Connection ~ 3000 750 
Wire Wire Line
	3100 850  3100 750 
Connection ~ 3100 750 
Wire Wire Line
	3200 850  3200 750 
Connection ~ 3200 750 
Wire Wire Line
	2700 4600 2700 4700
Wire Wire Line
	2700 4700 2900 4700
Wire Wire Line
	2900 4700 3000 4700
Wire Wire Line
	3000 4700 3050 4700
Wire Wire Line
	3050 4700 3100 4700
Wire Wire Line
	3100 4700 3200 4700
Wire Wire Line
	3200 4700 3400 4700
Wire Wire Line
	3400 4700 3400 4600
Wire Wire Line
	3200 4600 3200 4700
Connection ~ 3200 4700
Wire Wire Line
	3100 4600 3100 4700
Connection ~ 3100 4700
Connection ~ 3000 4700
Wire Wire Line
	2900 4600 2900 4700
Connection ~ 2900 4700
Wire Wire Line
	3050 4850 3050 4700
Connection ~ 3050 4700
Wire Wire Line
	1500 2900 1500 3000
Wire Wire Line
	1700 2700 1500 2700
Wire Wire Line
	1500 2700 1500 2600
Wire Wire Line
	1500 2600 700  2600
Wire Wire Line
	700  2900 800  2900
Wire Wire Line
	1700 1100 1150 1100
Wire Wire Line
	1150 1200 1700 1200
Wire Wire Line
	1700 1500 1150 1500
Wire Wire Line
	1150 1600 1700 1600
Wire Wire Line
	4400 1100 5000 1100
Wire Wire Line
	4400 1200 5000 1200
Wire Wire Line
	4400 1950 5000 1950
Wire Wire Line
	4400 2050 5000 2050
Wire Wire Line
	4400 3200 5000 3200
Wire Wire Line
	4400 3300 5000 3300
Wire Wire Line
	4400 3400 5000 3400
Wire Wire Line
	4400 3500 5000 3500
Wire Wire Line
	4400 4050 5000 4050
Wire Wire Line
	4400 4150 5000 4150
Wire Wire Line
	4400 4250 5000 4250
Wire Wire Line
	4400 4350 5000 4350
Wire Wire Line
	1700 1800 1150 1800
Wire Wire Line
	1350 2450 1700 2450
Wire Wire Line
	850  2450 750  2450
Wire Wire Line
	750  2450 750  2350
Wire Wire Line
	4400 2800 5400 2800
Wire Wire Line
	5400 2800 6000 2800
Wire Wire Line
	4400 2900 5400 2900
Wire Wire Line
	5400 2900 5950 2900
Wire Wire Line
	4400 3000 5400 3000
Wire Wire Line
	5400 3100 4400 3100
Wire Wire Line
	6000 2800 6000 2900
Wire Wire Line
	6000 2900 6200 2900
Connection ~ 5400 2800
Wire Wire Line
	5950 2900 5950 3100
Wire Wire Line
	5950 3100 6200 3100
Connection ~ 5400 2900
Wire Wire Line
	6200 3000 6100 3000
Wire Wire Line
	6100 3000 6100 3200
Wire Wire Line
	6100 2650 6100 2800
Wire Wire Line
	6100 2800 6200 2800
Wire Wire Line
	4400 3650 5000 3650
Wire Wire Line
	4400 3850 5000 3850
Wire Wire Line
	4400 3950 5000 3950
Wire Wire Line
	4400 1500 5000 1500
Wire Wire Line
	4400 1600 5000 1600
Wire Wire Line
	4400 1700 5000 1700
Wire Wire Line
	4400 1800 5000 1800
Connection ~ 8550 3500
Wire Wire Line
	2700 750  2700 850 
Wire Wire Line
	4400 2550 5000 2550
Wire Wire Line
	4400 2650 5000 2650
Wire Wire Line
	6250 7350 6250 7400
Wire Wire Line
	6250 7400 6350 7400
Wire Wire Line
	6350 7400 6400 7400
Wire Wire Line
	6400 7400 6450 7400
Wire Wire Line
	6450 7400 6550 7400
Wire Wire Line
	6350 7400 6350 7350
Wire Wire Line
	6450 7400 6450 7350
Connection ~ 6350 7400
Wire Wire Line
	6550 7400 6550 7350
Connection ~ 6450 7400
Wire Wire Line
	6400 7400 6400 7550
Connection ~ 6400 7400
Wire Wire Line
	5400 5600 5300 5600
Wire Wire Line
	5300 5200 5300 5600
Wire Wire Line
	5300 5600 5300 5700
Wire Wire Line
	4050 5700 5300 5700
Wire Wire Line
	5300 5700 5400 5700
Connection ~ 5300 5600
Wire Wire Line
	5050 6800 5050 6700
Wire Wire Line
	5050 6700 5400 6700
Wire Wire Line
	5400 6500 4800 6500
Wire Wire Line
	4800 6500 4800 6850
Wire Wire Line
	4550 6100 4550 6850
Wire Wire Line
	4300 5900 4300 6850
Wire Wire Line
	4050 5700 4050 6850
Wire Wire Line
	4050 7250 4050 7350
Wire Wire Line
	4050 7350 4300 7350
Wire Wire Line
	4300 7350 4550 7350
Wire Wire Line
	4550 7350 4800 7350
Wire Wire Line
	4800 7350 5050 7350
Wire Wire Line
	5050 7350 5050 7300
Wire Wire Line
	4800 7250 4800 7350
Connection ~ 4800 7350
Wire Wire Line
	4550 7250 4550 7350
Wire Wire Line
	4550 7350 4550 7500
Connection ~ 4550 7350
Wire Wire Line
	4300 7250 4300 7350
Connection ~ 4300 7350
$Comp
L GND #PWR022
U 1 1 52DD03ED
P 4550 7500
F 0 "#PWR022" H 4550 7500 30  0001 C CNN
F 1 "GND" H 4550 7430 30  0001 C CNN
F 2 "" H 4550 7500 60  0000 C CNN
F 3 "" H 4550 7500 60  0000 C CNN
	1    4550 7500
	1    0    0    -1  
$EndComp
NoConn ~ 5400 6300
Connection ~ 5300 5700
Wire Wire Line
	5400 5900 4300 5900
Wire Wire Line
	5400 6100 4550 6100
$Comp
L C Cboost1
U 1 1 52DD122A
P 7750 5350
F 0 "Cboost1" H 7750 5450 40  0000 L CNN
F 1 "C" H 7756 5265 40  0000 L CNN
F 2 "" H 7788 5200 30  0000 C CNN
F 3 "" H 7750 5350 60  0000 C CNN
	1    7750 5350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7400 5350 7550 5350
Wire Wire Line
	7950 5350 8000 5350
Wire Wire Line
	8000 5350 8000 5550
Wire Wire Line
	8000 5550 8000 6050
Wire Wire Line
	7400 5550 7500 5550
Wire Wire Line
	7500 5550 7600 5550
Wire Wire Line
	7600 5550 8000 5550
Wire Wire Line
	8000 5550 8100 5550
Wire Wire Line
	7400 5650 7500 5650
Wire Wire Line
	7500 5650 7500 5550
Connection ~ 7500 5550
$Comp
L DIODE D14
U 1 1 52DD17EA
P 7750 6050
F 0 "D14" H 7750 6150 40  0000 C CNN
F 1 "DIODE" H 7750 5950 40  0000 C CNN
F 2 "" H 7750 6050 60  0000 C CNN
F 3 "" H 7750 6050 60  0000 C CNN
	1    7750 6050
	1    0    0    -1  
$EndComp
Connection ~ 8000 5550
$Comp
L INDUCTOR L1
U 1 1 52DD1AAE
P 8400 5550
F 0 "L1" V 8350 5550 40  0000 C CNN
F 1 "INDUCTOR" V 8500 5550 40  0000 C CNN
F 2 "" H 8400 5550 60  0000 C CNN
F 3 "" H 8400 5550 60  0000 C CNN
	1    8400 5550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7400 6050 7500 6050
Wire Wire Line
	7500 6050 7550 6050
Wire Wire Line
	7500 6050 7500 6150
Wire Wire Line
	7500 6150 7400 6150
Connection ~ 7500 6050
Wire Wire Line
	8000 6050 7950 6050
Wire Wire Line
	7400 5850 7600 5850
Wire Wire Line
	7600 5850 7600 5550
Connection ~ 7600 5550
Wire Wire Line
	8800 5550 8800 5850
Wire Wire Line
	8800 5850 8800 6350
Wire Wire Line
	8800 6350 8800 6550
Wire Wire Line
	8800 6350 7400 6350
$Comp
L R Rfb2
U 1 1 52DD276B
P 8450 6550
F 0 "Rfb2" V 8530 6550 40  0000 C CNN
F 1 "R" V 8457 6551 40  0000 C CNN
F 2 "" V 8380 6550 30  0000 C CNN
F 3 "" H 8450 6550 30  0000 C CNN
	1    8450 6550
	0    -1   -1   0   
$EndComp
$Comp
L R Rfb1
U 1 1 52DD27B7
P 8100 6850
F 0 "Rfb1" V 8180 6850 40  0000 C CNN
F 1 "R" V 8107 6851 40  0000 C CNN
F 2 "" V 8030 6850 30  0000 C CNN
F 3 "" H 8100 6850 30  0000 C CNN
	1    8100 6850
	-1   0    0    1   
$EndComp
Wire Wire Line
	7400 6550 7450 6550
Wire Wire Line
	7450 6550 8000 6550
Wire Wire Line
	8000 6550 8100 6550
Wire Wire Line
	8100 6550 8200 6550
Wire Wire Line
	8100 6600 8100 6550
Connection ~ 8100 6550
$Comp
L GND #PWR023
U 1 1 52DD2BC9
P 8100 7150
F 0 "#PWR023" H 8100 7150 30  0001 C CNN
F 1 "GND" H 8100 7080 30  0001 C CNN
F 2 "" H 8100 7150 60  0000 C CNN
F 3 "" H 8100 7150 60  0000 C CNN
	1    8100 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 7150 8100 7100
Wire Wire Line
	8800 6550 8700 6550
Connection ~ 8800 6350
$Comp
L CP1 Cout1
U 1 1 52DD361E
P 9250 6200
F 0 "Cout1" H 9300 6300 50  0000 L CNN
F 1 "CP1" H 9300 6100 50  0000 L CNN
F 2 "" H 9250 6200 60  0000 C CNN
F 3 "" H 9250 6200 60  0000 C CNN
	1    9250 6200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR024
U 1 1 52DD3818
P 9250 6600
F 0 "#PWR024" H 9250 6600 30  0001 C CNN
F 1 "GND" H 9250 6530 30  0001 C CNN
F 2 "" H 9250 6600 60  0000 C CNN
F 3 "" H 9250 6600 60  0000 C CNN
	1    9250 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 6400 9250 6600
Wire Wire Line
	8700 5550 8800 5550
Wire Wire Line
	8800 5850 9250 5850
Wire Wire Line
	9250 5700 9250 5850
Wire Wire Line
	9250 5850 9250 6000
Connection ~ 8800 5850
$Comp
L +5V #PWR025
U 1 1 52DD4030
P 9250 5700
F 0 "#PWR025" H 9250 5790 20  0001 C CNN
F 1 "+5V" H 9250 5790 30  0000 C CNN
F 2 "" H 9250 5700 60  0000 C CNN
F 3 "" H 9250 5700 60  0000 C CNN
	1    9250 5700
	1    0    0    -1  
$EndComp
Connection ~ 9250 5850
$Comp
L R Rcomp1
U 1 1 52DD4D3C
P 7700 6650
F 0 "Rcomp1" V 7780 6650 40  0000 C CNN
F 1 "R" V 7707 6651 40  0000 C CNN
F 2 "" V 7630 6650 30  0000 C CNN
F 3 "" H 7700 6650 30  0000 C CNN
	1    7700 6650
	0    1    1    0   
$EndComp
$Comp
L C Ccomp1
U 1 1 52DD4D44
P 7700 6850
F 0 "Ccomp1" H 7700 6950 40  0000 L CNN
F 1 "C" H 7706 6765 40  0000 L CNN
F 2 "" H 7738 6700 30  0000 C CNN
F 3 "" H 7700 6850 60  0000 C CNN
	1    7700 6850
	0    -1   -1   0   
$EndComp
$Comp
L C Ccomp2
U 1 1 52DD4D90
P 7700 7050
F 0 "Ccomp2" H 7700 7150 40  0000 L CNN
F 1 "C" H 7706 6965 40  0000 L CNN
F 2 "" H 7738 6900 30  0000 C CNN
F 3 "" H 7700 7050 60  0000 C CNN
	1    7700 7050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7950 6650 7950 6850
Wire Wire Line
	7950 6850 7900 6850
Wire Wire Line
	8000 6550 8000 7050
Wire Wire Line
	8000 7050 7900 7050
Connection ~ 8000 6550
Wire Wire Line
	7450 7050 7500 7050
Wire Wire Line
	7450 6750 7450 6850
Wire Wire Line
	7450 6850 7450 7050
Wire Wire Line
	7450 6550 7450 6650
Connection ~ 7450 6550
Wire Wire Line
	7450 6750 7400 6750
Wire Wire Line
	7450 6850 7500 6850
Connection ~ 7450 6850
$Comp
L R R22
U 1 1 52DD792D
P 7650 2300
F 0 "R22" V 7730 2300 50  0000 C CNN
F 1 "1k" V 7650 2300 50  0000 C CNN
F 2 "" H 7650 2300 60  0001 C CNN
F 3 "" H 7650 2300 60  0001 C CNN
	1    7650 2300
	0    -1   -1   0   
$EndComp
$Comp
L LED D15
U 1 1 52DD7933
P 8200 2300
F 0 "D15" H 8200 2400 50  0000 C CNN
F 1 "LED" H 8200 2200 50  0000 C CNN
F 2 "" H 8200 2300 60  0001 C CNN
F 3 "" H 8200 2300 60  0001 C CNN
	1    8200 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 2200 6900 2300
Wire Wire Line
	8000 2300 7900 2300
Wire Wire Line
	8550 2300 8400 2300
Wire Wire Line
	6900 2300 7400 2300
$Comp
L +5V #PWR026
U 1 1 52DD7BEF
P 6900 2500
F 0 "#PWR026" H 6900 2590 20  0001 C CNN
F 1 "+5V" H 6900 2590 30  0000 C CNN
F 2 "" H 6900 2500 60  0000 C CNN
F 3 "" H 6900 2500 60  0000 C CNN
	1    6900 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 2500 6900 2600
Connection ~ 8550 2600
$Comp
L AP1117 U9
U 1 1 52DD8EF0
P 1500 6900
F 0 "U9" H 1750 6650 50  0000 C CNN
F 1 "AP7333" H 1500 7200 50  0000 C CNN
F 2 "" H 1500 6900 60  0000 C CNN
F 3 "" H 1500 6900 60  0000 C CNN
	1    1500 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 6900 850  6900
Wire Wire Line
	850  6900 850  6750
$Comp
L +5V #PWR027
U 1 1 52DD9239
P 850 6750
F 0 "#PWR027" H 850 6840 20  0001 C CNN
F 1 "+5V" H 850 6840 30  0000 C CNN
F 2 "" H 850 6750 60  0000 C CNN
F 3 "" H 850 6750 60  0000 C CNN
	1    850  6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 6700 2100 6900
Wire Wire Line
	2100 6900 2100 7000
Wire Wire Line
	2100 6900 1900 6900
$Comp
L GND #PWR028
U 1 1 52DD9581
P 1500 7450
F 0 "#PWR028" H 1500 7450 30  0001 C CNN
F 1 "GND" H 1500 7380 30  0001 C CNN
F 2 "" H 1500 7450 60  0000 C CNN
F 3 "" H 1500 7450 60  0000 C CNN
	1    1500 7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 7200 1500 7450
$Comp
L C C17
U 1 1 52DD978B
P 2100 7200
F 0 "C17" H 2100 7300 40  0000 L CNN
F 1 "C" H 2106 7115 40  0000 L CNN
F 2 "" H 2138 7050 30  0000 C CNN
F 3 "" H 2100 7200 60  0000 C CNN
	1    2100 7200
	1    0    0    -1  
$EndComp
Connection ~ 2100 6900
$Comp
L GND #PWR029
U 1 1 52DD9A0F
P 2100 7450
F 0 "#PWR029" H 2100 7450 30  0001 C CNN
F 1 "GND" H 2100 7380 30  0001 C CNN
F 2 "" H 2100 7450 60  0000 C CNN
F 3 "" H 2100 7450 60  0000 C CNN
	1    2100 7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 7450 2100 7400
$Comp
L +5V #PWR030
U 1 1 52DDB002
P 10100 5900
F 0 "#PWR030" H 10100 5990 20  0001 C CNN
F 1 "+5V" H 10100 5990 30  0000 C CNN
F 2 "" H 10100 5900 60  0000 C CNN
F 3 "" H 10100 5900 60  0000 C CNN
	1    10100 5900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR031
U 1 1 52DDB050
P 10100 6200
F 0 "#PWR031" H 10100 6200 30  0001 C CNN
F 1 "GND" H 10100 6130 30  0001 C CNN
F 2 "" H 10100 6200 60  0000 C CNN
F 3 "" H 10100 6200 60  0000 C CNN
	1    10100 6200
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P12
U 1 1 52DDB09E
P 10600 6050
F 0 "P12" V 10550 6050 40  0000 C CNN
F 1 "CONN_2" V 10650 6050 40  0000 C CNN
F 2 "" H 10600 6050 60  0000 C CNN
F 3 "" H 10600 6050 60  0000 C CNN
	1    10600 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 6150 10100 6150
Wire Wire Line
	10100 6150 10100 6200
Wire Wire Line
	10100 5900 10100 5950
Wire Wire Line
	10100 5950 10250 5950
Wire Wire Line
	3000 4600 3000 4700
NoConn ~ 3600 5450
NoConn ~ 3600 5550
Wire Wire Line
	3600 5350 4200 5350
Text Label 4200 5350 2    60   ~ 0
3v3_din
Wire Wire Line
	2100 6700 2500 6700
Text Label 2500 6700 2    60   ~ 0
3v3_reg
$Comp
L GS3 GS1
U 1 1 52DDDA2F
P 3100 7000
F 0 "GS1" H 3150 7200 50  0000 C CNN
F 1 "GS3" H 3150 6801 40  0000 C CNN
F 2 "" H 3100 7000 60  0000 C CNN
F 3 "" H 3100 7000 60  0000 C CNN
	1    3100 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 6900 2600 6900
Wire Wire Line
	2600 7100 2950 7100
Wire Wire Line
	3250 7000 3700 7000
Wire Wire Line
	3700 7000 3700 6850
$Comp
L +3.3V #PWR032
U 1 1 52DDE02C
P 3700 6850
F 0 "#PWR032" H 3700 6810 30  0001 C CNN
F 1 "+3.3V" H 3700 6960 30  0000 C CNN
F 2 "" H 3700 6850 60  0000 C CNN
F 3 "" H 3700 6850 60  0000 C CNN
	1    3700 6850
	1    0    0    -1  
$EndComp
Text Label 2600 6900 0    60   ~ 0
3v3_reg
Text Label 2600 7100 0    60   ~ 0
3v3_din
$EndSCHEMATC
