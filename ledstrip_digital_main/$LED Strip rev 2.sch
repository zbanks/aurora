EESchema Schematic File Version 2  date Thu 26 Dec 2013 06:22:41 PM EST
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
LIBS:STM32F102xx
EELAYER 43  0
EELAYER END
$Descr A4 11700 8267
encoding utf-8
Sheet 1 1
Title ""
Date "26 dec 2013"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 5200 2950 2    60   ~ 0
USB_DP
Text Label 5200 3050 2    60   ~ 0
USB_DM
Wire Wire Line
	4700 2950 5200 2950
Wire Wire Line
	4700 3050 5200 3050
$Comp
L STM32F102XX U?
U 1 1 52BCB7E9
P 3350 3200
F 0 "U?" H 3350 3100 50  0000 C CNN
F 1 "STM32F102XX" H 3350 3300 50  0000 C CNN
F 2 "MODULE" H 3350 3200 50  0001 C CNN
F 3 "DOCUMENTATION" H 3350 3200 50  0001 C CNN
	1    3350 3200
	1    0    0    -1  
$EndComp
$EndSCHEMATC
