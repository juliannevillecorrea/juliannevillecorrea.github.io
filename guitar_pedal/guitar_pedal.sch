EESchema Schematic File Version 4
LIBS:power
LIBS:device
LIBS:transistors
LIBS:linear
LIBS:regulators
LIBS:connectors
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
LIBS:discrete
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 3150 3150 0    50   Input ~ 0
IN
Text GLabel 3150 5150 0    50   Output ~ 0
OUT
Wire Wire Line
	3150 3150 3150 3650
Wire Wire Line
	3150 5150 3150 4650
Wire Wire Line
	3150 3650 4650 3650
Wire Wire Line
	3150 4650 4650 4650
Wire Wire Line
	4650 3650 4650 4650
$Comp
L R1 R
U 1 1 5F5F5F5F
P 4650 3650
F 0 "R1" H 4650 3725 50  0000 C CNN
F 1 "10k" H 4650 3575 50  0000 C CNN
F 2 "" H 4650 3650 50  0001 C CNN
F 3 "" H 4650 3650 50  0001 C CNN
	1    4650 3650
	1    0    0    -1
$EndComp
$Comp
L C1 C
U 1 1 5F5F5F5F
P 4650 4650
F 0 "C1" H 4650 4725 50  0000 C CNN
F 1 "0.1u" H 4650 4575 50  0000 C CNN
F 2 "" H 4650 4650 50  0001 C CNN
F 3 "" H 4650 4650 50  0001 C CNN
	1    4650 4650
	1    0    0    -1
$EndComp
$Comp
L U1 LM741
U 1 1 5F5F5F5F
P 5650 4150
F 0 "U1" H 5650 4225 50  0000 C CNN
F 1 "LM741" H 5650 4075 50  0000 C CNN
F 2 "" H 5650 4150 50  0001 C CNN
F 3 "" H 5650 4150 50  0001 C CNN
	1    5650 4150
	1    0    0    -1
$EndComp
$EndSCHEMATIC