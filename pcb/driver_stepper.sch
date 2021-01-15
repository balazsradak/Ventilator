EESchema Schematic File Version 4
LIBS:Ventilator-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 27 28
Title "Stepper Motor Driver"
Date ""
Rev "2.0"
Comp "RespiraWorks"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:+12V #PWR?
U 1 1 5FF9139B
P 700 750
F 0 "#PWR?" H 700 600 50  0001 C CNN
F 1 "+12V" H 715 923 50  0000 C CNN
F 2 "" H 700 750 50  0001 C CNN
F 3 "" H 700 750 50  0001 C CNN
	1    700  750 
	1    0    0    -1  
$EndComp
$Comp
L RespiraWorks:+12V_Step1 #PWR?
U 1 1 5FF913C6
P 2800 750
F 0 "#PWR?" H 2800 750 50  0001 C CNN
F 1 "+12V_Step1" H 2785 923 50  0000 C CNN
F 2 "" H 2800 750 50  0001 C CNN
F 3 "" H 2800 750 50  0001 C CNN
	1    2800 750 
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5FF913F1
P 800 900
F 0 "C?" H 850 1000 50  0000 L CNN
F 1 "220 nF" H 850 800 50  0000 L CNN
F 2 "" H 838 750 50  0001 C CNN
F 3 "~" H 800 900 50  0001 C CNN
	1    800  900 
	1    0    0    -1  
$EndComp
Text Notes 1050 700  0    50   ~ 0
220: 0402 or through hole?\n68: big cap
$Comp
L Device:C C?
U 1 1 5FF914A1
P 1150 900
F 0 "C?" H 1200 1000 50  0000 L CNN
F 1 "220 nF" H 1200 800 50  0000 L CNN
F 2 "" H 1188 750 50  0001 C CNN
F 3 "~" H 1150 900 50  0001 C CNN
	1    1150 900 
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5FF914C1
P 1500 900
F 0 "C?" H 1550 1000 50  0000 L CNN
F 1 "220 nF" H 1550 800 50  0000 L CNN
F 2 "" H 1538 750 50  0001 C CNN
F 3 "~" H 1500 900 50  0001 C CNN
	1    1500 900 
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5FF914DF
P 1850 900
F 0 "C?" H 1900 1000 50  0000 L CNN
F 1 "220 nF" H 1900 800 50  0000 L CNN
F 2 "" H 1888 750 50  0001 C CNN
F 3 "~" H 1850 900 50  0001 C CNN
	1    1850 900 
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5FF91559
P 2200 900
F 0 "C?" H 2250 1000 50  0000 L CNN
F 1 "68 uF" H 2250 800 50  0000 L CNN
F 2 "" H 2238 750 50  0001 C CNN
F 3 "~" H 2200 900 50  0001 C CNN
	1    2200 900 
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5FF9157D
P 2550 900
F 0 "C?" H 2600 1000 50  0000 L CNN
F 1 "68 uF" H 2600 800 50  0000 L CNN
F 2 "" H 2588 750 50  0001 C CNN
F 3 "~" H 2550 900 50  0001 C CNN
	1    2550 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	800  750  1150 750 
Connection ~ 1150 750 
Wire Wire Line
	1150 750  1500 750 
Connection ~ 1500 750 
Wire Wire Line
	1500 750  1850 750 
Connection ~ 1850 750 
Wire Wire Line
	1850 750  2200 750 
Connection ~ 2200 750 
Wire Wire Line
	2200 750  2550 750 
Connection ~ 2550 750 
Wire Wire Line
	2550 750  2800 750 
Wire Wire Line
	700  750  800  750 
Connection ~ 800  750 
$Comp
L power:GND #PWR?
U 1 1 5FF91786
P 800 1050
F 0 "#PWR?" H 800 800 50  0001 C CNN
F 1 "GND" H 805 877 50  0000 C CNN
F 2 "" H 800 1050 50  0001 C CNN
F 3 "" H 800 1050 50  0001 C CNN
	1    800  1050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FF917B4
P 1150 1050
F 0 "#PWR?" H 1150 800 50  0001 C CNN
F 1 "GND" H 1155 877 50  0000 C CNN
F 2 "" H 1150 1050 50  0001 C CNN
F 3 "" H 1150 1050 50  0001 C CNN
	1    1150 1050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FF917CD
P 1500 1050
F 0 "#PWR?" H 1500 800 50  0001 C CNN
F 1 "GND" H 1505 877 50  0000 C CNN
F 2 "" H 1500 1050 50  0001 C CNN
F 3 "" H 1500 1050 50  0001 C CNN
	1    1500 1050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FF917E6
P 1850 1050
F 0 "#PWR?" H 1850 800 50  0001 C CNN
F 1 "GND" H 1855 877 50  0000 C CNN
F 2 "" H 1850 1050 50  0001 C CNN
F 3 "" H 1850 1050 50  0001 C CNN
	1    1850 1050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FF917FF
P 2200 1050
F 0 "#PWR?" H 2200 800 50  0001 C CNN
F 1 "GND" H 2205 877 50  0000 C CNN
F 2 "" H 2200 1050 50  0001 C CNN
F 3 "" H 2200 1050 50  0001 C CNN
	1    2200 1050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FF91818
P 2550 1050
F 0 "#PWR?" H 2550 800 50  0001 C CNN
F 1 "GND" H 2555 877 50  0000 C CNN
F 2 "" H 2550 1050 50  0001 C CNN
F 3 "" H 2550 1050 50  0001 C CNN
	1    2550 1050
	1    0    0    -1  
$EndComp
Text Notes 950  1400 0    50   ~ 0
One 220 near each VS region in layout
$Comp
L RespiraWorks:+12V_Step1 #PWR?
U 1 1 5FF9225C
P 4850 1100
F 0 "#PWR?" H 4850 1100 50  0001 C CNN
F 1 "+12V_Step1" H 4835 1273 50  0000 C CNN
F 2 "" H 4850 1100 50  0001 C CNN
F 3 "" H 4850 1100 50  0001 C CNN
	1    4850 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 1100 3000 1850
Connection ~ 4850 1100
Wire Wire Line
	3100 1850 3100 1100
Connection ~ 3100 1100
Wire Wire Line
	3100 1100 3000 1100
Wire Wire Line
	3200 1850 3200 1100
Connection ~ 3200 1100
Wire Wire Line
	3200 1100 3100 1100
Wire Wire Line
	3300 1850 3300 1100
Connection ~ 3300 1100
Wire Wire Line
	3300 1100 3200 1100
Wire Wire Line
	3400 1850 3400 1100
Connection ~ 3400 1100
Wire Wire Line
	3400 1100 3300 1100
Wire Wire Line
	3500 1850 3500 1100
Connection ~ 3500 1100
Wire Wire Line
	3500 1100 3400 1100
Wire Wire Line
	3600 1850 3600 1100
Connection ~ 3600 1100
Wire Wire Line
	3600 1100 3500 1100
Wire Wire Line
	3700 1100 3700 1850
Connection ~ 3700 1100
Wire Wire Line
	3700 1100 3600 1100
Wire Wire Line
	3800 1850 3800 1100
Connection ~ 3800 1100
Wire Wire Line
	3800 1100 3700 1100
Wire Wire Line
	3900 1100 3900 1850
Connection ~ 3900 1100
Wire Wire Line
	3900 1100 3800 1100
Wire Wire Line
	4000 1850 4000 1100
Connection ~ 4000 1100
Wire Wire Line
	4000 1100 3900 1100
Wire Wire Line
	4100 1850 4100 1100
Connection ~ 4100 1100
Wire Wire Line
	4100 1100 4000 1100
Wire Wire Line
	4100 1100 4200 1100
Wire Wire Line
	4200 1850 4200 1100
Connection ~ 4200 1100
Wire Wire Line
	4200 1100 4300 1100
Wire Wire Line
	4300 1850 4300 1100
Connection ~ 4300 1100
Wire Wire Line
	4300 1100 4400 1100
Wire Wire Line
	4400 1850 4400 1100
Connection ~ 4400 1100
Wire Wire Line
	4400 1100 4500 1100
Wire Wire Line
	4500 1850 4500 1100
Connection ~ 4500 1100
Wire Wire Line
	4500 1100 4600 1100
Wire Wire Line
	4600 1850 4600 1100
Connection ~ 4600 1100
Wire Wire Line
	4600 1100 4700 1100
Wire Wire Line
	4700 1850 4700 1100
Connection ~ 4700 1100
Wire Wire Line
	4700 1100 4800 1100
Wire Wire Line
	4800 1850 4800 1100
Connection ~ 4800 1100
Wire Wire Line
	4800 1100 4850 1100
Wire Wire Line
	4900 1850 4900 1100
Connection ~ 4900 1100
Wire Wire Line
	4900 1100 4850 1100
Wire Wire Line
	5000 1850 5000 1100
Wire Wire Line
	4900 1100 5000 1100
Connection ~ 5000 1100
Wire Wire Line
	5000 1100 5100 1100
Wire Wire Line
	5100 1850 5100 1100
Connection ~ 5100 1100
Wire Wire Line
	5100 1100 5200 1100
Wire Wire Line
	5200 1850 5200 1100
Connection ~ 5200 1100
Wire Wire Line
	5200 1100 5300 1100
Wire Wire Line
	5300 1850 5300 1100
Connection ~ 5300 1100
Wire Wire Line
	5300 1100 5400 1100
Wire Wire Line
	5400 1850 5400 1100
Connection ~ 5400 1100
Wire Wire Line
	5400 1100 5500 1100
Wire Wire Line
	5500 1850 5500 1100
Connection ~ 5500 1100
Wire Wire Line
	5500 1100 5600 1100
Wire Wire Line
	5600 1850 5600 1100
Connection ~ 5600 1100
Wire Wire Line
	5600 1100 5700 1100
Wire Wire Line
	5700 1850 5700 1100
Connection ~ 5700 1100
Wire Wire Line
	5800 1850 5800 1100
Wire Wire Line
	5700 1100 5800 1100
Connection ~ 5800 1100
Wire Wire Line
	5800 1100 5900 1100
Wire Wire Line
	5900 1850 5900 1100
Connection ~ 5900 1100
Wire Wire Line
	5900 1100 6000 1100
Wire Wire Line
	6000 1850 6000 1100
Connection ~ 6000 1100
Wire Wire Line
	6100 1850 6100 1100
Wire Wire Line
	6000 1100 6100 1100
Connection ~ 6100 1100
Wire Wire Line
	6100 1100 6200 1100
Wire Wire Line
	6200 1850 6200 1100
Connection ~ 6200 1100
Wire Wire Line
	6200 1100 6300 1100
Wire Wire Line
	6300 1850 6300 1100
Connection ~ 6300 1100
Wire Wire Line
	6300 1100 6400 1100
Wire Wire Line
	6400 1850 6400 1100
Connection ~ 6400 1100
Wire Wire Line
	6400 1100 6500 1100
Wire Wire Line
	6500 1850 6500 1100
Connection ~ 6500 1100
Wire Wire Line
	6500 1100 6600 1100
Wire Wire Line
	6600 1850 6600 1100
Connection ~ 6600 1100
Wire Wire Line
	6600 1100 6700 1100
Wire Wire Line
	6700 1850 6700 1100
Connection ~ 6700 1100
Wire Wire Line
	6700 1100 6800 1100
Wire Wire Line
	6800 1850 6800 1100
Connection ~ 6800 1100
Wire Wire Line
	6800 1100 6900 1100
Connection ~ 6900 1100
Wire Wire Line
	6900 1100 7000 1100
Connection ~ 7000 1100
Wire Wire Line
	7000 1100 7100 1100
Connection ~ 7100 1100
Wire Wire Line
	7100 1100 7200 1100
Connection ~ 7200 1100
Wire Wire Line
	7200 1100 7300 1100
Connection ~ 7300 1100
Wire Wire Line
	7300 1100 7500 1100
$Comp
L Device:R R?
U 1 1 5FFAE20F
P 1250 3800
F 0 "R?" H 1320 3846 50  0000 L CNN
F 1 "0.1 1%" H 1320 3755 50  0000 L CNN
F 2 "RespiraWorks_std:R_0603_1608Metric" V 1180 3800 50  0001 C CNN
F 3 "~" H 1250 3800 50  0001 C CNN
	1    1250 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5FFAE2C4
P 1550 5100
F 0 "R?" H 1620 5146 50  0000 L CNN
F 1 "0.1 1%" H 1620 5055 50  0000 L CNN
F 2 "RespiraWorks_std:R_0603_1608Metric" V 1480 5100 50  0001 C CNN
F 3 "~" H 1550 5100 50  0001 C CNN
	1    1550 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 3600 1250 3600
Wire Wire Line
	1250 3600 1250 3650
Wire Wire Line
	2500 3400 1250 3400
Wire Wire Line
	1250 3400 1250 3600
Connection ~ 1250 3600
Wire Wire Line
	2500 3300 1250 3300
Wire Wire Line
	1250 3300 1250 3400
Connection ~ 1250 3400
Wire Wire Line
	2500 3200 1250 3200
Wire Wire Line
	1250 3200 1250 3300
Connection ~ 1250 3300
Wire Wire Line
	2500 3100 1250 3100
Wire Wire Line
	1250 3100 1250 3200
Connection ~ 1250 3200
Wire Wire Line
	2500 2950 1250 2950
Wire Wire Line
	1250 2950 1250 3100
Connection ~ 1250 3100
Wire Wire Line
	2500 2850 1250 2850
Wire Wire Line
	1250 2850 1250 2950
Connection ~ 1250 2950
Wire Wire Line
	2500 2750 1250 2750
Wire Wire Line
	1250 2750 1250 2850
Connection ~ 1250 2850
Wire Wire Line
	2500 2650 1250 2650
Wire Wire Line
	1250 2650 1250 2750
Connection ~ 1250 2750
$Comp
L power:GND #PWR?
U 1 1 5FFC8918
P 1250 3950
F 0 "#PWR?" H 1250 3700 50  0001 C CNN
F 1 "GND" H 1255 3777 50  0000 C CNN
F 2 "" H 1250 3950 50  0001 C CNN
F 3 "" H 1250 3950 50  0001 C CNN
	1    1250 3950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FFC89E3
P 1550 5250
F 0 "#PWR?" H 1550 5000 50  0001 C CNN
F 1 "GND" H 1555 5077 50  0000 C CNN
F 2 "" H 1550 5250 50  0001 C CNN
F 3 "" H 1550 5250 50  0001 C CNN
	1    1550 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 4850 1550 4850
Wire Wire Line
	1550 4850 1550 4950
Wire Wire Line
	2500 4650 1550 4650
Wire Wire Line
	1550 4650 1550 4850
Connection ~ 1550 4850
Wire Wire Line
	2500 4550 1550 4550
Wire Wire Line
	1550 4550 1550 4650
Connection ~ 1550 4650
Wire Wire Line
	1550 4450 1550 4550
Connection ~ 1550 4550
Wire Wire Line
	1550 4450 2500 4450
Wire Wire Line
	2500 4350 1550 4350
Wire Wire Line
	1550 4350 1550 4450
Connection ~ 1550 4450
Wire Wire Line
	2500 4200 1550 4200
Wire Wire Line
	1550 4200 1550 4350
Connection ~ 1550 4350
Wire Wire Line
	2500 4100 1550 4100
Connection ~ 1550 4200
Wire Wire Line
	2500 4000 1550 4000
Connection ~ 1550 4100
Wire Wire Line
	1550 4100 1550 4200
Wire Wire Line
	2500 3900 1550 3900
Wire Wire Line
	1550 3900 1550 4000
Connection ~ 1550 4000
Wire Wire Line
	1550 4000 1550 4100
$Comp
L power:GND #PWR?
U 1 1 6001326E
P 6000 6700
F 0 "#PWR?" H 6000 6450 50  0001 C CNN
F 1 "GND" H 6005 6527 50  0000 C CNN
F 2 "" H 6000 6700 50  0001 C CNN
F 3 "" H 6000 6700 50  0001 C CNN
	1    6000 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 6600 5850 6700
Wire Wire Line
	5850 6700 5950 6700
Wire Wire Line
	5950 6600 5950 6700
Connection ~ 5950 6700
Wire Wire Line
	5950 6700 6000 6700
Wire Wire Line
	6050 6600 6050 6700
Wire Wire Line
	6050 6700 6000 6700
Connection ~ 6000 6700
Wire Wire Line
	6150 6600 6150 6700
Wire Wire Line
	6150 6700 6050 6700
Connection ~ 6050 6700
$Comp
L Device:D_Schottky D?
U 1 1 60026B59
P 9250 1250
F 0 "D?" V 9204 1329 50  0000 L CNN
F 1 "BAT46ZFILM" V 9150 800 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123" H 9250 1250 50  0001 C CNN
F 3 "~" H 9250 1250 50  0001 C CNN
	1    9250 1250
	0    1    1    0   
$EndComp
$Comp
L RespiraWorks:+12V_Step1 #PWR?
U 1 1 600310B7
P 9250 1100
F 0 "#PWR?" H 9250 1100 50  0001 C CNN
F 1 "+12V_Step1" H 9235 1273 50  0000 C CNN
F 2 "" H 9250 1100 50  0001 C CNN
F 3 "" H 9250 1100 50  0001 C CNN
	1    9250 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 600361CF
P 9100 1400
F 0 "C?" V 9150 1250 50  0000 L CNN
F 1 "100 nF" V 9250 1250 50  0000 L CNN
F 2 "" H 9138 1250 50  0001 C CNN
F 3 "~" H 9100 1400 50  0001 C CNN
	1    9100 1400
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60036333
P 8950 1600
F 0 "#PWR?" H 8950 1350 50  0001 C CNN
F 1 "GND" H 8955 1427 50  0000 C CNN
F 2 "" H 8950 1600 50  0001 C CNN
F 3 "" H 8950 1600 50  0001 C CNN
	1    8950 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 1850 9250 1400
Connection ~ 9250 1400
Wire Wire Line
	8950 1400 8950 1600
Wire Wire Line
	7500 1100 7500 1850
Wire Wire Line
	7300 1100 7300 1850
Wire Wire Line
	7200 1100 7200 1850
Wire Wire Line
	7100 1100 7100 1850
Wire Wire Line
	7000 1100 7000 1850
Wire Wire Line
	6900 1100 6900 1850
$Comp
L Device:C C?
U 1 1 603D61E4
P 10600 1400
F 0 "C?" H 10650 1500 50  0000 L CNN
F 1 "470 nF" H 10650 1300 50  0000 L CNN
F 2 "RespiraWorks_std:C_0603_1608Metric" H 10638 1250 50  0001 C CNN
F 3 "~" H 10600 1400 50  0001 C CNN
	1    10600 1400
	1    0    0    -1  
$EndComp
$Comp
L RespiraWorks:+12V_Step1 #PWR?
U 1 1 603D623E
P 10600 1050
F 0 "#PWR?" H 10600 1050 50  0001 C CNN
F 1 "+12V_Step1" H 10585 1223 50  0000 C CNN
F 2 "" H 10600 1050 50  0001 C CNN
F 3 "" H 10600 1050 50  0001 C CNN
	1    10600 1050
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Schottky_x2_Serial_ACK D?
U 1 1 603D64C9
P 10350 1500
F 0 "D?" V 10396 1579 50  0000 L CNN
F 1 "D_Schottky_x2_Serial_ACK (BAR43)" V 9950 1250 25  0000 L CNN
F 2 "" H 10350 1500 50  0001 C CNN
F 3 "~" H 10350 1500 50  0001 C CNN
	1    10350 1500
	0    1    1    0   
$EndComp
Wire Wire Line
	10600 1550 10600 1800
Wire Wire Line
	10600 1800 10350 1800
Connection ~ 10350 1800
Wire Wire Line
	10350 1200 10600 1200
Wire Wire Line
	10600 1200 10600 1050
Wire Wire Line
	10600 1250 10600 1200
Connection ~ 10600 1200
Wire Wire Line
	10150 1800 10350 1800
Wire Wire Line
	10150 1850 10150 1800
Wire Wire Line
	10150 1500 10050 1500
Text Label 10050 1500 0    50   ~ 0
CP
Text Label 11100 4850 0    50   ~ 0
CP
$Comp
L Device:C C?
U 1 1 6041AE63
P 11050 5000
F 0 "C?" H 11100 5100 50  0000 L CNN
F 1 "47 nF" H 11100 4900 50  0000 L CNN
F 2 "RespiraWorks_std:C_0603_1608Metric" H 11088 4850 50  0001 C CNN
F 3 "~" H 11050 5000 50  0001 C CNN
	1    11050 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	10750 5100 10700 5100
Wire Wire Line
	11050 5150 11050 5250
Wire Wire Line
	11050 5250 10750 5250
Wire Wire Line
	10750 5250 10750 5100
Wire Wire Line
	11100 4850 11050 4850
$Comp
L RespiraWorks:+12V_Step1 #PWR?
U 1 1 6042D659
P 9750 1100
F 0 "#PWR?" H 9750 1100 50  0001 C CNN
F 1 "+12V_Step1" H 9735 1273 50  0000 C CNN
F 2 "" H 9750 1100 50  0001 C CNN
F 3 "" H 9750 1100 50  0001 C CNN
	1    9750 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 6042D697
P 9750 1300
F 0 "R?" H 9820 1346 50  0000 L CNN
F 1 "0" H 9820 1255 50  0000 L CNN
F 2 "RespiraWorks_std:R_0603_1608Metric" V 9680 1300 50  0001 C CNN
F 3 "~" H 9750 1300 50  0001 C CNN
	1    9750 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Schottky D?
U 1 1 6042D721
P 9750 1550
F 0 "D?" V 9704 1629 50  0000 L CNN
F 1 "BAT46ZFILM" V 9650 1100 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123" H 9750 1550 50  0001 C CNN
F 3 "~" H 9750 1550 50  0001 C CNN
	1    9750 1550
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 6042D75D
P 9550 1700
F 0 "C?" V 9600 1550 50  0000 L CNN
F 1 "470 nF" V 9700 1550 50  0000 L CNN
F 2 "" H 9588 1550 50  0001 C CNN
F 3 "~" H 9550 1700 50  0001 C CNN
	1    9550 1700
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6042D7D6
P 9400 1850
F 0 "#PWR?" H 9400 1600 50  0001 C CNN
F 1 "GND" H 9405 1677 50  0000 C CNN
F 2 "" H 9400 1850 50  0001 C CNN
F 3 "" H 9400 1850 50  0001 C CNN
	1    9400 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9750 1700 9700 1700
Wire Wire Line
	9750 1850 9750 1700
Connection ~ 9750 1700
Wire Wire Line
	9400 1850 9400 1700
Wire Wire Line
	9750 1150 9750 1100
$Comp
L RespiraWorks:+12V_Step1 #PWR?
U 1 1 60444F56
P 7950 1150
F 0 "#PWR?" H 7950 1150 50  0001 C CNN
F 1 "+12V_Step1" H 7935 1323 50  0000 C CNN
F 2 "" H 7950 1150 50  0001 C CNN
F 3 "" H 7950 1150 50  0001 C CNN
	1    7950 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Schottky D?
U 1 1 60444F83
P 7950 1450
F 0 "D?" V 7904 1529 50  0000 L CNN
F 1 "BAT46ZFILM" V 7850 1000 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123" H 7950 1450 50  0001 C CNN
F 3 "~" H 7950 1450 50  0001 C CNN
	1    7950 1450
	0    1    1    0   
$EndComp
Wire Wire Line
	8250 1850 8250 1600
Wire Wire Line
	7950 1300 7950 1150
Wire Wire Line
	7750 1850 7750 1600
Wire Wire Line
	7750 1600 7950 1600
Connection ~ 7950 1600
Wire Wire Line
	7950 1600 8250 1600
$Comp
L Device:C C?
U 1 1 60457844
P 8450 1800
F 0 "C?" V 8500 1650 50  0000 L CNN
F 1 "100 nF" H 8150 1700 50  0000 L CNN
F 2 "" H 8488 1650 50  0001 C CNN
F 3 "~" H 8450 1800 50  0001 C CNN
	1    8450 1800
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 604579B9
P 8450 1950
F 0 "#PWR?" H 8450 1700 50  0001 C CNN
F 1 "GND" H 8455 1777 50  0000 C CNN
F 2 "" H 8450 1950 50  0001 C CNN
F 3 "" H 8450 1950 50  0001 C CNN
	1    8450 1950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 604579EC
P 7600 1950
F 0 "#PWR?" H 7600 1700 50  0001 C CNN
F 1 "GND" H 7605 1777 50  0000 C CNN
F 2 "" H 7600 1950 50  0001 C CNN
F 3 "" H 7600 1950 50  0001 C CNN
	1    7600 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 60457A1F
P 7600 1800
F 0 "C?" V 7650 1650 50  0000 L CNN
F 1 "100 nF" H 7200 1800 50  0000 L CNN
F 2 "" H 7638 1650 50  0001 C CNN
F 3 "~" H 7600 1800 50  0001 C CNN
	1    7600 1800
	-1   0    0    1   
$EndComp
Wire Wire Line
	8250 1600 8450 1600
Wire Wire Line
	8450 1600 8450 1650
Connection ~ 8250 1600
Wire Wire Line
	7750 1600 7600 1600
Wire Wire Line
	7600 1600 7600 1650
Connection ~ 7750 1600
Text Label 8050 1600 0    50   ~ 0
LED
Text Label 8200 650  0    50   ~ 0
LED
Wire Wire Line
	8200 650  8500 650 
$Comp
L Device:R R?
U 1 1 6046B4B6
P 8650 650
F 0 "R?" V 8750 650 50  0000 C CNN
F 1 "330" V 8550 650 50  0000 C CNN
F 2 "RespiraWorks_std:R_0603_1608Metric" V 8580 650 50  0001 C CNN
F 3 "~" H 8650 650 50  0001 C CNN
	1    8650 650 
	0    -1   -1   0   
$EndComp
$Comp
L Device:D D?
U 1 1 6047208B
P 8950 650
F 0 "D?" H 9000 750 50  0000 C CNN
F 1 "Green" H 8950 550 50  0000 C CNN
F 2 "" H 8950 650 50  0001 C CNN
F 3 "~" H 8950 650 50  0001 C CNN
	1    8950 650 
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6047225A
P 9100 650
F 0 "#PWR?" H 9100 400 50  0001 C CNN
F 1 "GND" H 9105 477 50  0000 C CNN
F 2 "" H 9100 650 50  0001 C CNN
F 3 "" H 9100 650 50  0001 C CNN
	1    9100 650 
	1    0    0    -1  
$EndComp
$Comp
L RespiraWorks:+3.3V_Ctrl #PWR?
U 1 1 60479878
P 8750 1250
F 0 "#PWR?" H 8750 1250 50  0001 C CNN
F 1 "+3.3V_Ctrl" H 8735 1423 50  0000 C CNN
F 2 "" H 8750 1250 50  0001 C CNN
F 3 "" H 8750 1250 50  0001 C CNN
	1    8750 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 60480451
P 8550 1300
F 0 "C?" V 8600 1150 50  0000 L CNN
F 1 "100 nF" V 8400 1200 50  0000 L CNN
F 2 "" H 8588 1150 50  0001 C CNN
F 3 "~" H 8550 1300 50  0001 C CNN
	1    8550 1300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8750 1250 8750 1300
Wire Wire Line
	8700 1300 8750 1300
Connection ~ 8750 1300
Wire Wire Line
	8750 1300 8750 1850
$Comp
L power:GND #PWR?
U 1 1 6048DF0A
P 8250 1300
F 0 "#PWR?" H 8250 1050 50  0001 C CNN
F 1 "GND" H 8255 1127 50  0000 C CNN
F 2 "" H 8250 1300 50  0001 C CNN
F 3 "" H 8250 1300 50  0001 C CNN
	1    8250 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 1300 8250 1300
$Comp
L RespiraWorks:POWERSTEP01 U?
U 1 1 6049D3EE
P 2550 2350
F 0 "U?" H 6600 -1994 60  0000 C CNN
F 1 "POWERSTEP01" H 6600 -2100 60  0000 C CNN
F 2 "" H 3850 2590 60  0001 C CNN
F 3 "https://www.st.com/content/ccc/resource/technical/document/datasheet/3f/48/e2/37/6b/ac/4c/f5/DM00090983.pdf/files/DM00090983.pdf/jcr:content/translations/en.DM00090983.pdf" H 3300 3300 60  0001 C CNN
	1    2550 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 6049D4A4
P 2300 5200
F 0 "R?" V 2250 4950 50  0000 L CNN
F 1 "0" V 2350 4950 50  0000 L CNN
F 2 "RespiraWorks_std:R_0603_1608Metric" V 2230 5200 50  0001 C CNN
F 3 "~" H 2300 5200 50  0001 C CNN
	1    2300 5200
	0    1    1    0   
$EndComp
Wire Wire Line
	2500 5200 2450 5200
Wire Wire Line
	2000 5100 2000 5200
Wire Wire Line
	2000 5200 2150 5200
Wire Wire Line
	2000 5100 2500 5100
Text Notes 1850 5300 0    50   ~ 0
DNP
Text HLabel 800  5550 0    50   Input ~ 0
ADCIN
$Comp
L RespiraWorks:+12V_Step1 #PWR?
U 1 1 604CB513
P 1100 5250
F 0 "#PWR?" H 1100 5250 50  0001 C CNN
F 1 "+12V_Step1" H 1085 5423 50  0000 C CNN
F 2 "" H 1100 5250 50  0001 C CNN
F 3 "" H 1100 5250 50  0001 C CNN
	1    1100 5250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 604CB640
P 1100 5850
F 0 "#PWR?" H 1100 5600 50  0001 C CNN
F 1 "GND" H 1105 5677 50  0000 C CNN
F 2 "" H 1100 5850 50  0001 C CNN
F 3 "" H 1100 5850 50  0001 C CNN
	1    1100 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 5300 1700 5300
Wire Wire Line
	1700 5300 1700 5550
Wire Wire Line
	1700 5550 1100 5550
$Comp
L Device:R R?
U 1 1 604D3656
P 1100 5400
F 0 "R?" H 950 5400 50  0000 L CNN
F 1 "0" H 1000 5500 50  0000 L CNN
F 2 "RespiraWorks_std:R_0603_1608Metric" V 1030 5400 50  0001 C CNN
F 3 "~" H 1100 5400 50  0001 C CNN
	1    1100 5400
	-1   0    0    1   
$EndComp
Connection ~ 1100 5550
$Comp
L Device:R R?
U 1 1 604D36E6
P 1100 5700
F 0 "R?" H 950 5800 50  0000 L CNN
F 1 "0" H 1000 5900 50  0000 L CNN
F 2 "RespiraWorks_std:R_0603_1608Metric" V 1030 5700 50  0001 C CNN
F 3 "~" H 1100 5700 50  0001 C CNN
	1    1100 5700
	-1   0    0    1   
$EndComp
Text Notes 900  5450 0    50   ~ 0
DNP
Text Notes 900  5700 0    50   ~ 0
DNP
$Comp
L Device:C C?
U 1 1 604D3B92
P 800 5800
F 0 "C?" H 900 5700 50  0000 L CNN
F 1 "100 nF" H 850 5900 50  0000 L CNN
F 2 "" H 838 5650 50  0001 C CNN
F 3 "~" H 800 5800 50  0001 C CNN
	1    800  5800
	-1   0    0    1   
$EndComp
Text Notes 550  5850 0    50   ~ 0
DNP
Wire Wire Line
	800  5550 850  5550
Wire Wire Line
	800  5650 850  5650
Wire Wire Line
	850  5650 850  5550
Connection ~ 850  5550
Wire Wire Line
	850  5550 1100 5550
$Comp
L power:GND #PWR?
U 1 1 604E3F2D
P 800 5950
F 0 "#PWR?" H 800 5700 50  0001 C CNN
F 1 "GND" H 805 5777 50  0000 C CNN
F 2 "" H 800 5950 50  0001 C CNN
F 3 "" H 800 5950 50  0001 C CNN
	1    800  5950
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP?
U 1 1 604E4B49
P 2050 5450
F 0 "TP?" V 2100 5550 50  0000 C CNN
F 1 "TestPoint" V 1950 5500 50  0000 C CNN
F 2 "" H 2250 5450 50  0001 C CNN
F 3 "~" H 2250 5450 50  0001 C CNN
	1    2050 5450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2500 5450 2050 5450
Text HLabel 1450 5650 0    50   Input ~ 0
D11
Wire Wire Line
	2500 5600 1900 5600
Wire Wire Line
	1900 5600 1900 5650
Wire Wire Line
	1900 5650 1850 5650
$Comp
L Device:R R?
U 1 1 604FF83F
P 1700 5650
F 0 "R?" V 1650 5400 50  0000 L CNN
F 1 "0" V 1750 5400 50  0000 L CNN
F 2 "RespiraWorks_std:R_0603_1608Metric" V 1630 5650 50  0001 C CNN
F 3 "~" H 1700 5650 50  0001 C CNN
	1    1700 5650
	0    1    1    0   
$EndComp
Wire Wire Line
	1550 5650 1450 5650
Text HLabel 11000 5400 2    50   Output ~ 0
D12
Wire Wire Line
	10700 5600 10700 5400
$Comp
L Device:R R?
U 1 1 60508DE0
P 10850 5400
F 0 "R?" V 10800 5150 50  0000 L CNN
F 1 "0" V 10900 5150 50  0000 L CNN
F 2 "RespiraWorks_std:R_0603_1608Metric" V 10780 5400 50  0001 C CNN
F 3 "~" H 10850 5400 50  0001 C CNN
	1    10850 5400
	0    1    1    0   
$EndComp
Text Label 2250 5600 0    50   ~ 0
SDI
Text Label 10700 5550 0    50   ~ 0
SDO
$Comp
L Connector:Conn_01x02_Male J?
U 1 1 6051328E
P 1050 7150
F 0 "J?" H 1156 7328 50  0000 C CNN
F 1 "Conn_01x02_Male" H 950 6950 50  0000 C CNN
F 2 "" H 1050 7150 50  0001 C CNN
F 3 "~" H 1050 7150 50  0001 C CNN
	1    1050 7150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 60513526
P 1650 7050
F 0 "R?" V 1600 6800 50  0000 L CNN
F 1 "0" V 1700 6800 50  0000 L CNN
F 2 "RespiraWorks_std:R_0603_1608Metric" V 1580 7050 50  0001 C CNN
F 3 "~" H 1650 7050 50  0001 C CNN
	1    1650 7050
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 60513584
P 1650 7250
F 0 "R?" V 1600 7000 50  0000 L CNN
F 1 "0" V 1700 7000 50  0000 L CNN
F 2 "RespiraWorks_std:R_0603_1608Metric" V 1580 7250 50  0001 C CNN
F 3 "~" H 1650 7250 50  0001 C CNN
	1    1650 7250
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 605136C0
P 1650 7450
F 0 "R?" V 1600 7200 50  0000 L CNN
F 1 "0" V 1700 7200 50  0000 L CNN
F 2 "RespiraWorks_std:R_0603_1608Metric" V 1580 7450 50  0001 C CNN
F 3 "~" H 1650 7450 50  0001 C CNN
	1    1650 7450
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 6051371A
P 1650 6900
F 0 "R?" V 1600 6650 50  0000 L CNN
F 1 "0" V 1700 6650 50  0000 L CNN
F 2 "RespiraWorks_std:R_0603_1608Metric" V 1580 6900 50  0001 C CNN
F 3 "~" H 1650 6900 50  0001 C CNN
	1    1650 6900
	0    1    1    0   
$EndComp
Text Notes 1600 6850 0    50   ~ 0
DNP
Text Notes 1750 7150 0    50   ~ 0
DNP
Text Notes 1600 7200 0    50   ~ 0
DNP
Text Notes 1600 7600 0    50   ~ 0
DNP
Wire Wire Line
	1500 6900 1250 6900
Wire Wire Line
	1250 6900 1250 7050
Connection ~ 1250 7050
Wire Wire Line
	1250 7050 1250 7150
Wire Wire Line
	1500 7450 1250 7450
Wire Wire Line
	1250 7450 1250 7250
Connection ~ 1250 7250
Wire Wire Line
	1250 7250 1500 7250
Wire Wire Line
	1800 6900 2000 6900
Wire Wire Line
	1800 7050 2000 7050
Wire Wire Line
	1800 7250 2000 7250
Wire Wire Line
	1800 7450 2000 7450
Text Label 1800 6900 0    50   ~ 0
SDI
Text Label 1800 7250 0    50   ~ 0
SDI
Text Label 1800 7050 0    50   ~ 0
SDO
Text Label 1800 7450 0    50   ~ 0
SDO
Wire Wire Line
	2500 5700 2000 5700
Wire Wire Line
	2000 5700 2000 5800
Wire Wire Line
	2000 5800 1900 5800
Wire Wire Line
	2000 5900 1900 5900
Wire Wire Line
	2000 5800 2000 5900
Connection ~ 2000 5800
$Comp
L Device:R R?
U 1 1 6058461F
P 1750 5800
F 0 "R?" V 1700 5550 50  0000 L CNN
F 1 "0" V 1700 5900 50  0000 L CNN
F 2 "RespiraWorks_std:R_0603_1608Metric" V 1680 5800 50  0001 C CNN
F 3 "~" H 1750 5800 50  0001 C CNN
	1    1750 5800
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 6058467F
P 1750 5900
F 0 "R?" V 1700 5650 50  0000 L CNN
F 1 "0" V 1800 5650 50  0000 L CNN
F 2 "RespiraWorks_std:R_0603_1608Metric" V 1680 5900 50  0001 C CNN
F 3 "~" H 1750 5900 50  0001 C CNN
	1    1750 5900
	0    1    1    0   
$EndComp
Text Notes 1700 6050 0    50   ~ 0
DNP
Text HLabel 1450 5800 0    50   Input ~ 0
D13
Text HLabel 1450 5900 0    50   Input ~ 0
D3
Wire Wire Line
	1250 7050 1500 7050
Wire Wire Line
	1600 5800 1450 5800
Wire Wire Line
	1600 5900 1450 5900
$Comp
L Device:R R?
U 1 1 605A6934
P 1750 6100
F 0 "R?" V 1700 5850 50  0000 L CNN
F 1 "0" V 1700 6200 50  0000 L CNN
F 2 "RespiraWorks_std:R_0603_1608Metric" V 1680 6100 50  0001 C CNN
F 3 "~" H 1750 6100 50  0001 C CNN
	1    1750 6100
	0    1    1    0   
$EndComp
Wire Wire Line
	2500 5800 2100 5800
Wire Wire Line
	2100 5800 2100 6100
Wire Wire Line
	2100 6100 1900 6100
Text Notes 1900 5950 0    50   ~ 0
DNP
Text HLabel 1450 6100 0    50   Input ~ 0
D10
Wire Wire Line
	1450 6100 1600 6100
Wire Wire Line
	2500 6000 2200 6000
Wire Wire Line
	2200 6000 2200 6650
Text Notes 1350 6600 0    50   ~ 0
why 39k
Text HLabel 650  6650 0    50   Input ~ 0
D9
$Comp
L Device:R R?
U 1 1 605F10A8
P 1100 6500
F 0 "R?" H 950 6500 50  0000 L CNN
F 1 "39K" H 900 6600 50  0000 L CNN
F 2 "RespiraWorks_std:R_0603_1608Metric" V 1030 6500 50  0001 C CNN
F 3 "~" H 1100 6500 50  0001 C CNN
	1    1100 6500
	-1   0    0    1   
$EndComp
Wire Wire Line
	1100 6650 650  6650
Wire Wire Line
	1100 6650 2200 6650
Connection ~ 1100 6650
$Comp
L RespiraWorks:+3.3V_Ctrl #PWR?
U 1 1 605FE109
P 1100 6350
F 0 "#PWR?" H 1100 6350 50  0001 C CNN
F 1 "+3.3V_Ctrl" H 1085 6523 50  0000 C CNN
F 2 "" H 1100 6350 50  0001 C CNN
F 3 "" H 1100 6350 50  0001 C CNN
	1    1100 6350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 60664D60
P 2450 6400
F 0 "C?" H 2550 6300 50  0000 L CNN
F 1 "100 nF" H 2150 6500 50  0000 L CNN
F 2 "" H 2488 6250 50  0001 C CNN
F 3 "~" H 2450 6400 50  0001 C CNN
	1    2450 6400
	-1   0    0    1   
$EndComp
Text HLabel 2400 6150 0    50   Input ~ 0
D8
Wire Wire Line
	2500 6150 2450 6150
$Comp
L power:GND #PWR?
U 1 1 60671A98
P 2450 6550
F 0 "#PWR?" H 2450 6300 50  0001 C CNN
F 1 "GND" H 2455 6377 50  0000 C CNN
F 2 "" H 2450 6550 50  0001 C CNN
F 3 "" H 2450 6550 50  0001 C CNN
	1    2450 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 6250 2450 6150
Connection ~ 2450 6150
Wire Wire Line
	2450 6150 2400 6150
Wire Wire Line
	10700 2650 10950 2650
Wire Wire Line
	10950 2650 10950 2750
Wire Wire Line
	10700 2950 10950 2950
Wire Wire Line
	10950 2950 10950 2850
Wire Wire Line
	10700 2850 10950 2850
Connection ~ 10950 2850
Wire Wire Line
	10700 2750 10950 2750
Connection ~ 10950 2750
Wire Wire Line
	10700 3150 10950 3150
Wire Wire Line
	10950 3150 10950 3250
Wire Wire Line
	10700 3450 10950 3450
Wire Wire Line
	10950 3450 10950 3350
Wire Wire Line
	10700 3350 10950 3350
Connection ~ 10950 3350
Wire Wire Line
	10700 3250 10950 3250
Connection ~ 10950 3250
Wire Wire Line
	10700 3850 10950 3850
Wire Wire Line
	10950 3850 10950 3950
Wire Wire Line
	10700 4150 10950 4150
Wire Wire Line
	10950 4150 10950 4050
Wire Wire Line
	10700 4050 10950 4050
Connection ~ 10950 4050
Wire Wire Line
	10700 3950 10950 3950
Connection ~ 10950 3950
Wire Wire Line
	10700 4300 10950 4300
Wire Wire Line
	10950 4300 10950 4400
Wire Wire Line
	10700 4600 10950 4600
Wire Wire Line
	10950 4600 10950 4500
Wire Wire Line
	10700 4500 10950 4500
Connection ~ 10950 4500
Wire Wire Line
	10700 4400 10950 4400
Connection ~ 10950 4400
Text Label 10750 2650 0    50   ~ 0
OUTA1
Wire Wire Line
	10950 2750 10950 2850
Wire Wire Line
	10950 3250 10950 3350
Text Label 10750 3150 0    50   ~ 0
OUTA2
Wire Wire Line
	10950 3950 10950 4050
Wire Wire Line
	10950 4400 10950 4500
Text Label 10750 3850 0    50   ~ 0
OUTB1
Text Label 10750 4300 0    50   ~ 0
OUTB2
$Comp
L Connector:Conn_01x04_Male J?
U 1 1 6070D08D
P 4700 6850
F 0 "J?" H 4673 6730 50  0000 R CNN
F 1 "Conn_01x04_Male" H 4673 6821 50  0000 R CNN
F 2 "" H 4700 6850 50  0001 C CNN
F 3 "~" H 4700 6850 50  0001 C CNN
	1    4700 6850
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 6070D1FA
P 4200 7450
F 0 "R?" H 4050 7450 50  0000 L CNN
F 1 "10K" H 4000 7550 50  0000 L CNN
F 2 "RespiraWorks_std:R_0603_1608Metric" V 4130 7450 50  0001 C CNN
F 3 "~" H 4200 7450 50  0001 C CNN
	1    4200 7450
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 6070D306
P 3950 7450
F 0 "R?" H 3800 7450 50  0000 L CNN
F 1 "10K" H 3750 7550 50  0000 L CNN
F 2 "RespiraWorks_std:R_0603_1608Metric" V 3880 7450 50  0001 C CNN
F 3 "~" H 3950 7450 50  0001 C CNN
	1    3950 7450
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 6070D3DC
P 3450 7450
F 0 "R?" H 3300 7450 50  0000 L CNN
F 1 "10K" H 3250 7550 50  0000 L CNN
F 2 "RespiraWorks_std:R_0603_1608Metric" V 3380 7450 50  0001 C CNN
F 3 "~" H 3450 7450 50  0001 C CNN
	1    3450 7450
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 6070D370
P 3700 7450
F 0 "R?" H 3550 7450 50  0000 L CNN
F 1 "10K" H 3500 7550 50  0000 L CNN
F 2 "RespiraWorks_std:R_0603_1608Metric" V 3630 7450 50  0001 C CNN
F 3 "~" H 3700 7450 50  0001 C CNN
	1    3700 7450
	-1   0    0    1   
$EndComp
$Comp
L Device:D D?
U 1 1 6070D552
P 3450 7150
F 0 "D?" V 3550 7250 50  0000 R CNN
F 1 "Yellow" V 3350 7400 50  0000 R CNN
F 2 "" H 3450 7150 50  0001 C CNN
F 3 "~" H 3450 7150 50  0001 C CNN
	1    3450 7150
	0    -1   -1   0   
$EndComp
$Comp
L Device:D D?
U 1 1 6070D909
P 3700 7150
F 0 "D?" V 3800 7250 50  0000 R CNN
F 1 "Yellow" V 3600 7400 50  0000 R CNN
F 2 "" H 3700 7150 50  0001 C CNN
F 3 "~" H 3700 7150 50  0001 C CNN
	1    3700 7150
	0    -1   -1   0   
$EndComp
$Comp
L Device:D D?
U 1 1 6070D97D
P 3950 7150
F 0 "D?" V 4050 7250 50  0000 R CNN
F 1 "Yellow" V 3850 7400 50  0000 R CNN
F 2 "" H 3950 7150 50  0001 C CNN
F 3 "~" H 3950 7150 50  0001 C CNN
	1    3950 7150
	0    -1   -1   0   
$EndComp
$Comp
L Device:D D?
U 1 1 6070D9F3
P 4200 7150
F 0 "D?" V 4300 7250 50  0000 R CNN
F 1 "Yellow" V 4100 7400 50  0000 R CNN
F 2 "" H 4200 7150 50  0001 C CNN
F 3 "~" H 4200 7150 50  0001 C CNN
	1    4200 7150
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6070DA69
P 4200 7600
F 0 "#PWR?" H 4200 7350 50  0001 C CNN
F 1 "GND" H 4205 7427 50  0000 C CNN
F 2 "" H 4200 7600 50  0001 C CNN
F 3 "" H 4200 7600 50  0001 C CNN
	1    4200 7600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6070DAD6
P 3950 7600
F 0 "#PWR?" H 3950 7350 50  0001 C CNN
F 1 "GND" H 3955 7427 50  0000 C CNN
F 2 "" H 3950 7600 50  0001 C CNN
F 3 "" H 3950 7600 50  0001 C CNN
	1    3950 7600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6070DB43
P 3700 7600
F 0 "#PWR?" H 3700 7350 50  0001 C CNN
F 1 "GND" H 3705 7427 50  0000 C CNN
F 2 "" H 3700 7600 50  0001 C CNN
F 3 "" H 3700 7600 50  0001 C CNN
	1    3700 7600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6070DBB0
P 3450 7600
F 0 "#PWR?" H 3450 7350 50  0001 C CNN
F 1 "GND" H 3455 7427 50  0000 C CNN
F 2 "" H 3450 7600 50  0001 C CNN
F 3 "" H 3450 7600 50  0001 C CNN
	1    3450 7600
	1    0    0    -1  
$EndComp
Text Label 2900 7000 0    50   ~ 0
OUTB2
Text Label 2900 6900 0    50   ~ 0
OUTB1
Text Label 2900 6800 0    50   ~ 0
OUTA2
Text Label 2900 6700 0    50   ~ 0
OUTA1
Wire Wire Line
	2900 6700 4200 6700
Wire Wire Line
	4200 6700 4200 6650
Wire Wire Line
	4200 6650 4500 6650
Wire Wire Line
	2900 6800 3300 6800
Wire Wire Line
	3300 6800 3300 6950
Wire Wire Line
	3300 6950 3450 6950
Wire Wire Line
	3200 6750 3200 6900
Wire Wire Line
	3200 6900 2900 6900
Wire Wire Line
	3250 6850 3250 7000
Wire Wire Line
	3250 7000 2900 7000
Wire Wire Line
	3250 6850 3700 6850
Wire Wire Line
	4200 7000 4200 6700
Connection ~ 4200 6700
Wire Wire Line
	3950 7000 3950 6750
Wire Wire Line
	3200 6750 3950 6750
Connection ~ 3950 6750
Wire Wire Line
	3950 6750 4500 6750
Wire Wire Line
	3700 7000 3700 6850
Connection ~ 3700 6850
Wire Wire Line
	3700 6850 4500 6850
Wire Wire Line
	3450 7000 3450 6950
Connection ~ 3450 6950
Wire Wire Line
	3450 6950 4500 6950
Wire Wire Line
	10700 5850 10950 5850
Text Label 10750 5850 0    50   ~ 0
BUSY
$Comp
L Device:R R?
U 1 1 6084D0B2
P 5400 7350
F 0 "R?" H 5250 7350 50  0000 L CNN
F 1 "39K" H 5200 7450 50  0000 L CNN
F 2 "RespiraWorks_std:R_0603_1608Metric" V 5330 7350 50  0001 C CNN
F 3 "~" H 5400 7350 50  0001 C CNN
	1    5400 7350
	-1   0    0    1   
$EndComp
$Comp
L RespiraWorks:+3.3V_Ctrl #PWR?
U 1 1 6084D138
P 5400 7200
F 0 "#PWR?" H 5400 7200 50  0001 C CNN
F 1 "+3.3V_Ctrl" H 5385 7373 50  0000 C CNN
F 2 "" H 5400 7200 50  0001 C CNN
F 3 "" H 5400 7200 50  0001 C CNN
	1    5400 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 7500 5400 7500
Text Label 5100 7500 0    50   ~ 0
BUSY
Text HLabel 5400 7600 3    50   Output ~ 0
D4
Wire Wire Line
	6050 7500 5950 7500
Connection ~ 5400 7500
Wire Wire Line
	5400 7500 5000 7500
$Comp
L Device:R R?
U 1 1 60872E4C
P 6150 7350
F 0 "R?" H 6000 7350 50  0000 L CNN
F 1 "330" H 5950 7450 50  0000 L CNN
F 2 "RespiraWorks_std:R_0603_1608Metric" V 6080 7350 50  0001 C CNN
F 3 "~" H 6150 7350 50  0001 C CNN
	1    6150 7350
	-1   0    0    1   
$EndComp
$Comp
L Device:D D?
U 1 1 60873125
P 5900 7500
F 0 "D?" V 6000 7600 50  0000 R CNN
F 1 "Yellow" V 5800 7750 50  0000 R CNN
F 2 "" H 5900 7500 50  0001 C CNN
F 3 "~" H 5900 7500 50  0001 C CNN
	1    5900 7500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 7500 6150 7500
Connection ~ 6050 7500
$Comp
L RespiraWorks:+3.3V_Ctrl #PWR?
U 1 1 608864B8
P 6150 7200
F 0 "#PWR?" H 6150 7200 50  0001 C CNN
F 1 "+3.3V_Ctrl" H 6135 7373 50  0000 C CNN
F 2 "" H 6150 7200 50  0001 C CNN
F 3 "" H 6150 7200 50  0001 C CNN
	1    6150 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 7500 5400 7600
Wire Wire Line
	10700 6000 10950 6000
Text Label 10750 6000 0    50   ~ 0
FLAG
$Comp
L Device:R R?
U 1 1 608AE29E
P 10100 6700
F 0 "R?" H 9950 6700 50  0000 L CNN
F 1 "39K" H 9900 6800 50  0000 L CNN
F 2 "RespiraWorks_std:R_0603_1608Metric" V 10030 6700 50  0001 C CNN
F 3 "~" H 10100 6700 50  0001 C CNN
	1    10100 6700
	-1   0    0    1   
$EndComp
$Comp
L RespiraWorks:+3.3V_Ctrl #PWR?
U 1 1 608AE2A5
P 10100 6550
F 0 "#PWR?" H 10100 6550 50  0001 C CNN
F 1 "+3.3V_Ctrl" H 10085 6723 50  0000 C CNN
F 2 "" H 10100 6550 50  0001 C CNN
F 3 "" H 10100 6550 50  0001 C CNN
	1    10100 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	10450 6850 10100 6850
Text Label 9800 6850 0    50   ~ 0
FLAG
Text HLabel 10100 6950 3    50   Output ~ 0
D2
Wire Wire Line
	10750 6850 10650 6850
Connection ~ 10100 6850
Wire Wire Line
	10100 6850 9700 6850
$Comp
L Device:R R?
U 1 1 608AE2B1
P 10850 6700
F 0 "R?" H 10700 6700 50  0000 L CNN
F 1 "330" H 10650 6800 50  0000 L CNN
F 2 "RespiraWorks_std:R_0603_1608Metric" V 10780 6700 50  0001 C CNN
F 3 "~" H 10850 6700 50  0001 C CNN
	1    10850 6700
	-1   0    0    1   
$EndComp
$Comp
L Device:D D?
U 1 1 608AE2B8
P 10600 6850
F 0 "D?" V 10700 6950 50  0000 R CNN
F 1 "Yellow" V 10500 7100 50  0000 R CNN
F 2 "" H 10600 6850 50  0001 C CNN
F 3 "~" H 10600 6850 50  0001 C CNN
	1    10600 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	10750 6850 10850 6850
Connection ~ 10750 6850
$Comp
L RespiraWorks:+3.3V_Ctrl #PWR?
U 1 1 608AE2C1
P 10850 6550
F 0 "#PWR?" H 10850 6550 50  0001 C CNN
F 1 "+3.3V_Ctrl" H 10835 6723 50  0000 C CNN
F 2 "" H 10850 6550 50  0001 C CNN
F 3 "" H 10850 6550 50  0001 C CNN
	1    10850 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 6850 10100 6950
$EndSCHEMATC
