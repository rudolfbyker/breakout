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
LIBS:components
LIBS:osh-park_2_layer_standard_order-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "zondag 28 september 2014"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L IC10 U1
U 1 1 584A94AE
P 5000 2550
F 0 "U1" H 5000 2150 60  0000 C CNN
F 1 "IC10" H 5000 2350 60  0000 C CNN
F 2 "footprints:MSOP-10" H 5000 2550 60  0001 C CNN
F 3 "" H 5000 2550 60  0001 C CNN
	1    5000 2550
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X05 P2
U 1 1 584A94E7
P 5800 2850
F 0 "P2" H 5800 3150 50  0000 C CNN
F 1 "CONN_01X05" V 5900 2850 50  0000 C CNN
F 2 "pins:pin-1x05" H 5800 2850 50  0001 C CNN
F 3 "" H 5800 2850 50  0000 C CNN
	1    5800 2850
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X05 P1
U 1 1 584A954A
P 4200 2850
F 0 "P1" H 4200 3150 50  0000 C CNN
F 1 "CONN_01X05" V 4300 2850 50  0000 C CNN
F 2 "pins:pin-1x05-sq" H 4200 2850 50  0001 C CNN
F 3 "" H 4200 2850 50  0000 C CNN
	1    4200 2850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4400 2650 4600 2650
Wire Wire Line
	4600 2750 4400 2750
Wire Wire Line
	4400 2850 4600 2850
Wire Wire Line
	4600 2950 4400 2950
Wire Wire Line
	4600 3050 4400 3050
Wire Wire Line
	5400 2650 5600 2650
Wire Wire Line
	5600 2750 5400 2750
Wire Wire Line
	5400 2850 5600 2850
Wire Wire Line
	5600 2950 5400 2950
Wire Wire Line
	5400 3050 5600 3050
$Comp
L R R1
U 1 1 584A9714
P 5000 1650
F 0 "R1" V 5080 1650 50  0000 C CNN
F 1 "R" V 5000 1650 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 4930 1650 50  0001 C CNN
F 3 "" H 5000 1650 50  0000 C CNN
	1    5000 1650
	0    1    1    0   
$EndComp
$Comp
L R R2
U 1 1 584A97CB
P 5000 1800
F 0 "R2" V 5080 1800 50  0000 C CNN
F 1 "R" V 5000 1800 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 4930 1800 50  0001 C CNN
F 3 "" H 5000 1800 50  0000 C CNN
	1    5000 1800
	0    1    1    0   
$EndComp
$Comp
L R R3
U 1 1 584A97FC
P 5000 1950
F 0 "R3" V 5080 1950 50  0000 C CNN
F 1 "R" V 5000 1950 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 4930 1950 50  0001 C CNN
F 3 "" H 5000 1950 50  0000 C CNN
	1    5000 1950
	0    1    1    0   
$EndComp
$Comp
L R R4
U 1 1 584A9820
P 5000 2100
F 0 "R4" V 5080 2100 50  0000 C CNN
F 1 "R" V 5000 2100 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 4930 2100 50  0001 C CNN
F 3 "" H 5000 2100 50  0000 C CNN
	1    5000 2100
	0    1    1    0   
$EndComp
$Comp
L R R5
U 1 1 584A9847
P 5000 2250
F 0 "R5" V 5080 2250 50  0000 C CNN
F 1 "R" V 5000 2250 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 4930 2250 50  0001 C CNN
F 3 "" H 5000 2250 50  0000 C CNN
	1    5000 2250
	0    1    1    0   
$EndComp
Wire Wire Line
	4850 1650 4400 1650
Wire Wire Line
	4400 1650 4400 2650
Wire Wire Line
	4850 1800 4450 1800
Wire Wire Line
	4450 1800 4450 2750
Connection ~ 4450 2750
Wire Wire Line
	4850 1950 4500 1950
Wire Wire Line
	4500 1950 4500 2850
Connection ~ 4500 2850
Wire Wire Line
	4850 2100 4550 2100
Wire Wire Line
	4850 2250 4600 2250
Wire Wire Line
	4600 2250 4600 3050
Wire Wire Line
	4550 2100 4550 2950
Connection ~ 4550 2950
Wire Wire Line
	5150 2250 5400 2250
Wire Wire Line
	5400 2250 5400 3050
Wire Wire Line
	5150 2100 5450 2100
Wire Wire Line
	5450 2100 5450 2950
Connection ~ 5450 2950
Wire Wire Line
	5150 1950 5500 1950
Wire Wire Line
	5500 1950 5500 2850
Connection ~ 5500 2850
Wire Wire Line
	5150 1800 5550 1800
Wire Wire Line
	5550 1800 5550 2750
Connection ~ 5550 2750
Wire Wire Line
	5150 1650 5600 1650
Wire Wire Line
	5600 1650 5600 2650
$EndSCHEMATC
