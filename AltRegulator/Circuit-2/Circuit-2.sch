EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
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
LIBS:Circuit-2-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "AC Delco Remy Excitement Control"
Date "2018-01-29"
Rev "2018.29.01"
Comp "TGit-Tech"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L 2N3904 Q1
U 1 1 5A6F7025
P 3900 3700
F 0 "Q1" H 4100 3775 50  0000 L CNN
F 1 "2N3904" H 4100 3700 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Molded_Narrow" H 4100 3625 50  0001 L CIN
F 3 "" H 3900 3700 50  0001 L CNN
	1    3900 3700
	-1   0    0    -1  
$EndComp
$Comp
L TIP2955 Q2
U 1 1 5A6F712E
P 4900 2700
F 0 "Q2" H 5100 2775 50  0000 L CNN
F 1 "TIP34" H 5100 2700 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-247_TO-3P_Vertical" H 5100 2625 50  0001 L CIN
F 3 "" H 4900 2700 50  0001 L CNN
	1    4900 2700
	1    0    0    1   
$EndComp
$Comp
L R R2
U 1 1 5A6F7773
P 3800 3150
F 0 "R2" V 3880 3150 50  0000 C CNN
F 1 "R10K" V 3800 3150 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0414_L11.9mm_D4.5mm_P15.24mm_Horizontal" V 3730 3150 50  0001 C CNN
F 3 "" H 3800 3150 50  0001 C CNN
	1    3800 3150
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 5A6F7A71
P 4650 3700
F 0 "R1" V 4730 3700 50  0000 C CNN
F 1 "R680K" V 4650 3700 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0414_L11.9mm_D4.5mm_P15.24mm_Horizontal" V 4580 3700 50  0001 C CNN
F 3 "" H 4650 3700 50  0001 C CNN
	1    4650 3700
	0    1    1    0   
$EndComp
$Comp
L Screw_Terminal_01x02 J3
U 1 1 5A6F7B05
P 6250 2600
F 0 "J3" H 6250 2700 50  0000 C CNN
F 1 "Batt" H 6250 2400 50  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_bornier-2_P5.08mm" H 6250 2600 50  0001 C CNN
F 3 "" H 6250 2600 50  0001 C CNN
	1    6250 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 2600 6050 1800
Wire Wire Line
	6050 1800 5000 1800
Wire Wire Line
	5000 1800 5000 2500
$Comp
L GND #PWR01
U 1 1 5A6F8015
P 5000 4550
F 0 "#PWR01" H 5000 4300 50  0001 C CNN
F 1 "GND" H 5000 4400 50  0000 C CNN
F 2 "" H 5000 4550 50  0001 C CNN
F 3 "" H 5000 4550 50  0001 C CNN
	1    5000 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 4500 6050 2700
$Comp
L Screw_Terminal_01x02 J1
U 1 1 5A6F81E8
P 5100 3900
F 0 "J1" H 5100 4000 50  0000 C CNN
F 1 "Control_In" H 5100 3700 50  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_bornier-2_P5.08mm" H 5100 3900 50  0001 C CNN
F 3 "" H 5100 3900 50  0001 C CNN
	1    5100 3900
	0    1    1    0   
$EndComp
$Comp
L CP C1
U 1 1 5A6F8291
P 4200 4100
F 0 "C1" H 4225 4200 50  0000 L CNN
F 1 "CP47uF" H 4225 4000 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D5.0mm_P2.50mm" H 4238 3950 50  0001 C CNN
F 3 "" H 4200 4100 50  0001 C CNN
	1    4200 4100
	1    0    0    -1  
$EndComp
$Comp
L Screw_Terminal_01x02 J4
U 1 1 5A6F8AC2
P 5700 3000
F 0 "J4" H 5700 3100 50  0000 C CNN
F 1 "Feedback" H 5700 2800 50  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_bornier-2_P5.08mm" H 5700 3000 50  0001 C CNN
F 3 "" H 5700 3000 50  0001 C CNN
	1    5700 3000
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 5A6F8B76
P 5300 3350
F 0 "R3" V 5380 3350 50  0000 C CNN
F 1 "R" V 5300 3350 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0414_L11.9mm_D4.5mm_P15.24mm_Horizontal" V 5230 3350 50  0001 C CNN
F 3 "" H 5300 3350 50  0001 C CNN
	1    5300 3350
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 5A6F8BDB
P 5300 4050
F 0 "R4" V 5380 4050 50  0000 C CNN
F 1 "R" V 5300 4050 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0414_L11.9mm_D4.5mm_P15.24mm_Horizontal" V 5230 4050 50  0001 C CNN
F 3 "" H 5300 4050 50  0001 C CNN
	1    5300 4050
	-1   0    0    1   
$EndComp
Wire Wire Line
	5000 2900 5000 3000
Wire Wire Line
	5000 3000 5500 3000
Wire Wire Line
	4700 2700 3800 2700
Wire Wire Line
	3800 2700 3800 3000
Wire Wire Line
	3800 3300 3800 3500
Wire Wire Line
	3800 3900 3800 4500
Wire Wire Line
	4100 3700 4500 3700
Wire Wire Line
	4200 3700 4200 3950
Connection ~ 4200 3700
Wire Wire Line
	3800 4500 6050 4500
Wire Wire Line
	4200 4250 4200 4500
Connection ~ 4200 4500
Connection ~ 5000 4500
Wire Wire Line
	5000 3700 4800 3700
Wire Wire Line
	5300 3200 5300 3100
Wire Wire Line
	5300 3100 5500 3100
Wire Wire Line
	5300 3500 5300 3900
Wire Wire Line
	5300 4200 5300 4500
Connection ~ 5300 4500
Wire Wire Line
	5100 3700 5300 3700
Connection ~ 5300 3700
Wire Wire Line
	5000 4550 5000 4500
$EndSCHEMATC
