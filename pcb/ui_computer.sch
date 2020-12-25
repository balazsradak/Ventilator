EESchema Schematic File Version 4
LIBS:Ventilator-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 14 14
Title "UI Computer"
Date ""
Rev "2.0"
Comp "RespiraWorks"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L RespiraWorks:ESQ-120-44-L-D J?
U 1 1 5FDAF122
P 5700 3350
F 0 "J?" H 5725 4625 50  0000 C CNN
F 1 "ESQ-120-44-L-D" H 5725 4534 50  0000 C CNN
F 2 "" H 5100 4450 50  0001 C CNN
F 3 "" H 5100 4450 50  0001 C CNN
	1    5700 3350
	1    0    0    -1  
$EndComp
$Comp
L RespiraWorks:+3V3_RPi #PWR?
U 1 1 5FDB01F4
P 4750 2250
F 0 "#PWR?" H 4750 2300 50  0001 C CNN
F 1 "+3V3_RPi" H 4735 2423 50  0000 C CNN
F 2 "" H 4750 2250 50  0001 C CNN
F 3 "" H 4750 2250 50  0001 C CNN
	1    4750 2250
	1    0    0    -1  
$EndComp
Text Notes 5200 1950 0    50   ~ 0
RPI has internal I2C pull-ups\n
NoConn ~ 5000 2400
NoConn ~ 5000 2500
Text HLabel 4550 2600 0    50   Output ~ 0
UI_LED_R
Wire Wire Line
	4550 2600 5000 2600
$Comp
L power:GND #PWR?
U 1 1 5FDB0314
P 4850 4300
F 0 "#PWR?" H 4850 4050 50  0001 C CNN
F 1 "GND" H 4855 4127 50  0000 C CNN
F 2 "" H 4850 4300 50  0001 C CNN
F 3 "" H 4850 4300 50  0001 C CNN
	1    4850 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 2700 4850 2700
Wire Wire Line
	4850 2700 4850 3500
Wire Wire Line
	5000 3500 4850 3500
Connection ~ 4850 3500
Wire Wire Line
	4850 3500 4850 4200
Wire Wire Line
	5000 4200 4850 4200
Connection ~ 4850 4200
Wire Wire Line
	4850 4200 4850 4300
Wire Wire Line
	5000 2300 4750 2300
Wire Wire Line
	4750 2300 4750 2250
Text HLabel 4550 2900 0    50   Output ~ 0
GUI_BUZZER
Wire Wire Line
	4550 2900 5000 2900
Text HLabel 4550 3700 0    50   Output ~ 0
UI_LED_Y
Wire Wire Line
	4550 3700 5000 3700
Text HLabel 4550 3800 0    50   Output ~ 0
UI_LED_G
Wire Wire Line
	4550 3800 5000 3800
Text Notes 5400 1850 0    50   ~ 0
RPI powered by 5V\n
Text HLabel 4550 3900 0    50   Output ~ 0
UART_CTS
Wire Wire Line
	5000 3900 4550 3900
$Comp
L Device:R R?
U 1 1 5FDB08DB
P 3950 4350
F 0 "R?" H 3800 4400 50  0000 L CNN
F 1 "10K" H 3750 4300 50  0000 L CNN
F 2 "RespiraWorks_std:R_0603_1608Metric" V 3880 4350 50  0001 C CNN
F 3 "~" H 3950 4350 50  0001 C CNN
	1    3950 4350
	1    0    0    -1  
$EndComp
Text Notes 1850 3750 0    39   ~ 0
Added small R value/ strong pull-up. Can always change to 0 ohm\n
$Comp
L RespiraWorks:+3V3_RPi #PWR?
U 1 1 5FDB0BF2
P 3950 3700
F 0 "#PWR?" H 3950 3750 50  0001 C CNN
F 1 "+3V3_RPi" H 3935 3873 50  0000 C CNN
F 2 "" H 3950 3700 50  0001 C CNN
F 3 "" H 3950 3700 50  0001 C CNN
	1    3950 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 4100 3950 4000
Wire Wire Line
	3950 4100 5000 4100
Wire Wire Line
	3950 4200 3950 4100
Connection ~ 3950 4100
$Comp
L power:GND #PWR?
U 1 1 5FDB0EEF
P 3950 4500
F 0 "#PWR?" H 3950 4250 50  0001 C CNN
F 1 "GND" H 3955 4327 50  0000 C CNN
F 2 "" H 3950 4500 50  0001 C CNN
F 3 "" H 3950 4500 50  0001 C CNN
	1    3950 4500
	1    0    0    -1  
$EndComp
Text Label 4200 4100 0    50   ~ 0
UI_ID1
NoConn ~ 5000 2800
$Comp
L Device:R R?
U 1 1 5FE66293
P 3950 3850
F 0 "R?" H 3800 3900 50  0000 L CNN
F 1 "1K" H 3750 3800 50  0000 L CNN
F 2 "RespiraWorks_std:R_0603_1608Metric" V 3880 3850 50  0001 C CNN
F 3 "~" H 3950 3850 50  0001 C CNN
	1    3950 3850
	1    0    0    -1  
$EndComp
NoConn ~ 5000 3000
Wire Wire Line
	4750 2300 4750 3100
Wire Wire Line
	4750 3100 5000 3100
Connection ~ 4750 2300
NoConn ~ 5000 3200
NoConn ~ 5000 3300
NoConn ~ 5000 3400
NoConn ~ 5000 3600
NoConn ~ 5000 4000
$Comp
L RespiraWorks:+5V_RPi #PWR?
U 1 1 5FE675EB
P 6750 2300
F 0 "#PWR?" H 6750 2300 50  0001 C CNN
F 1 "+5V_RPi" H 6735 2473 50  0000 C CNN
F 2 "" H 6750 2300 50  0001 C CNN
F 3 "" H 6750 2300 50  0001 C CNN
	1    6750 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 2300 6750 2300
Wire Wire Line
	6450 2400 6750 2400
Wire Wire Line
	6750 2400 6750 2300
Connection ~ 6750 2300
Wire Wire Line
	6650 4300 6650 3900
Wire Wire Line
	6650 2500 6450 2500
$Comp
L power:GND #PWR?
U 1 1 5FE67C8B
P 6650 4300
F 0 "#PWR?" H 6650 4050 50  0001 C CNN
F 1 "GND" H 6655 4127 50  0000 C CNN
F 2 "" H 6650 4300 50  0001 C CNN
F 3 "" H 6650 4300 50  0001 C CNN
	1    6650 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 2900 6650 2900
Connection ~ 6650 2900
Wire Wire Line
	6650 2900 6650 2500
Wire Wire Line
	6450 3200 6650 3200
Connection ~ 6650 3200
Wire Wire Line
	6650 3200 6650 2900
Wire Wire Line
	6450 3700 6650 3700
Connection ~ 6650 3700
Wire Wire Line
	6650 3700 6650 3200
Wire Wire Line
	6450 3900 6650 3900
Connection ~ 6650 3900
Wire Wire Line
	6650 3900 6650 3700
Text Notes 6600 1900 0    50   ~ 0
Need to make footprint for this part
Wire Wire Line
	6450 2600 7000 2600
Text HLabel 7000 2600 2    50   Output ~ 0
USART-RX
Wire Wire Line
	6450 2700 7000 2700
Text HLabel 7000 2700 2    50   Input ~ 0
USART-TX
NoConn ~ 6450 2800
NoConn ~ 6450 3000
NoConn ~ 6450 3100
NoConn ~ 6450 3400
NoConn ~ 6450 3500
NoConn ~ 6450 3600
NoConn ~ 6450 4000
NoConn ~ 6450 4100
NoConn ~ 6450 4200
Wire Wire Line
	6450 3300 7750 3300
Text Label 7350 3300 2    50   ~ 0
UI_ID0
$Comp
L Device:R R?
U 1 1 5FE6BCEC
P 7750 3000
F 0 "R?" H 7850 3050 50  0000 L CNN
F 1 "1K" H 7850 2950 50  0000 L CNN
F 2 "RespiraWorks_std:R_0603_1608Metric" V 7680 3000 50  0001 C CNN
F 3 "~" H 7750 3000 50  0001 C CNN
	1    7750 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5FE6BE04
P 7750 3600
F 0 "R?" H 7600 3650 50  0000 L CNN
F 1 "10K" H 7550 3550 50  0000 L CNN
F 2 "RespiraWorks_std:R_0603_1608Metric" V 7680 3600 50  0001 C CNN
F 3 "~" H 7750 3600 50  0001 C CNN
	1    7750 3600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FE6BE44
P 7750 3750
F 0 "#PWR?" H 7750 3500 50  0001 C CNN
F 1 "GND" H 7755 3577 50  0000 C CNN
F 2 "" H 7750 3750 50  0001 C CNN
F 3 "" H 7750 3750 50  0001 C CNN
	1    7750 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 3150 7750 3300
Wire Wire Line
	7750 3450 7750 3300
Connection ~ 7750 3300
$Comp
L RespiraWorks:+3V3_RPi #PWR?
U 1 1 5FE6C7D6
P 7750 2850
F 0 "#PWR?" H 7750 2900 50  0001 C CNN
F 1 "+3V3_RPi" H 7735 3023 50  0000 C CNN
F 2 "" H 7750 2850 50  0001 C CNN
F 3 "" H 7750 2850 50  0001 C CNN
	1    7750 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 3800 7000 3800
Text HLabel 7000 3800 2    50   Output ~ 0
USART-RTS
$Comp
L RespiraWorks:503182-1852 J?
U 1 1 5FE6F067
P 3350 5800
F 0 "J?" H 3150 6150 50  0000 L CNN
F 1 "503182-1852" H 3700 5450 50  0000 L CNN
F 2 "RespiraWorks:5031821852" H 4150 5400 50  0001 C CNN
F 3 "https://www.molex.com/pdm_docs/sd/5031821852_sd.pdf" H 4750 5300 50  0001 C CNN
	1    3350 5800
	1    0    0    -1  
$EndComp
Text Notes 3800 5100 2    50   ~ 0
MicroSD Card Connector
$Comp
L RespiraWorks:+3.3V_Ctrl #PWR?
U 1 1 5FE6F137
P 3550 5400
F 0 "#PWR?" H 3550 5400 50  0001 C CNN
F 1 "+3.3V_Ctrl" H 3535 5573 50  0000 C CNN
F 2 "" H 3550 5400 50  0001 C CNN
F 3 "" H 3550 5400 50  0001 C CNN
	1    3550 5400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5FE6F180
P 4000 5500
F 0 "C?" H 4050 5600 50  0000 L CNN
F 1 "1uF/10V" H 4050 5400 39  0000 L CNN
F 2 "" H 4038 5350 50  0001 C CNN
F 3 "~" H 4000 5500 50  0001 C CNN
	1    4000 5500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5FE6F1C6
P 4400 5500
F 0 "C?" H 4450 5600 50  0000 L CNN
F 1 "0.1uF/16V" H 4450 5400 39  0000 L CNN
F 2 "" H 4438 5350 50  0001 C CNN
F 3 "~" H 4400 5500 50  0001 C CNN
	1    4400 5500
	1    0    0    -1  
$EndComp
$Comp
L RespiraWorks:+3.3V_Ctrl #PWR?
U 1 1 5FE6F2AB
P 4200 5300
F 0 "#PWR?" H 4200 5300 50  0001 C CNN
F 1 "+3.3V_Ctrl" H 4185 5473 50  0000 C CNN
F 2 "" H 4200 5300 50  0001 C CNN
F 3 "" H 4200 5300 50  0001 C CNN
	1    4200 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 5350 4000 5300
Wire Wire Line
	4000 5300 4200 5300
Wire Wire Line
	4200 5300 4400 5300
Wire Wire Line
	4400 5300 4400 5350
Connection ~ 4200 5300
$Comp
L power:GND #PWR?
U 1 1 5FE705DA
P 4200 5700
F 0 "#PWR?" H 4200 5450 50  0001 C CNN
F 1 "GND" H 4205 5527 50  0000 C CNN
F 2 "" H 4200 5700 50  0001 C CNN
F 3 "" H 4200 5700 50  0001 C CNN
	1    4200 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 5650 4200 5650
Wire Wire Line
	4200 5650 4200 5700
Wire Wire Line
	4400 5650 4200 5650
Connection ~ 4200 5650
$Comp
L power:GND #PWR?
U 1 1 5FE71557
P 3500 6500
F 0 "#PWR?" H 3500 6250 50  0001 C CNN
F 1 "GND" H 3505 6327 50  0000 C CNN
F 2 "" H 3500 6500 50  0001 C CNN
F 3 "" H 3500 6500 50  0001 C CNN
	1    3500 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 6500 3550 6500
Wire Wire Line
	3550 6500 3550 6450
Wire Wire Line
	3450 6450 3450 6500
Wire Wire Line
	3450 6500 3500 6500
Connection ~ 3500 6500
Text Notes 2600 5350 2    50   ~ 0
Double Check sw/dt footprint
NoConn ~ 2900 5650
NoConn ~ 2900 5750
NoConn ~ 2900 6150
Text Label 2600 6250 2    50   ~ 0
USD-Detect
Wire Wire Line
	1900 6250 2900 6250
Wire Wire Line
	1900 6250 1900 6100
$Comp
L Device:R R?
U 1 1 5FE79887
P 1900 5950
F 0 "R?" H 1750 6000 50  0000 L CNN
F 1 "10K" H 1700 5900 50  0000 L CNN
F 2 "RespiraWorks_std:R_0603_1608Metric" V 1830 5950 50  0001 C CNN
F 3 "~" H 1900 5950 50  0001 C CNN
	1    1900 5950
	1    0    0    -1  
$EndComp
$Comp
L RespiraWorks:+3.3V_Ctrl #PWR?
U 1 1 5FE798FA
P 1900 5800
F 0 "#PWR?" H 1900 5800 50  0001 C CNN
F 1 "+3.3V_Ctrl" H 1885 5973 50  0000 C CNN
F 2 "" H 1900 5800 50  0001 C CNN
F 3 "" H 1900 5800 50  0001 C CNN
	1    1900 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 6050 2700 6050
Wire Wire Line
	2900 5950 2700 5950
Wire Wire Line
	2900 5850 2700 5850
Wire Wire Line
	2900 5550 2700 5550
Text HLabel 2700 5550 0    50   Output ~ 0
USD-MISO
Text HLabel 2700 5850 0    50   Input ~ 0
USD-CS
Text HLabel 2700 5950 0    50   Input ~ 0
USD-MOSI
Text HLabel 2700 6050 0    50   Input ~ 0
USD-SCLK
$EndSCHEMATC
