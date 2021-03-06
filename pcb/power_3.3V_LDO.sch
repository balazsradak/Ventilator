EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 30
Title "3.3V LDO Regulator"
Date ""
Rev "2.0"
Comp "RespiraWorks"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 4200 3600 0    50   Input ~ 0
In
Text HLabel 6850 3600 2    50   Output ~ 0
Out
$Comp
L RespiraWorks:LD39050 U?
U 1 1 606AF9B2
P 5300 3750
AR Path="/5FCD4B8E/5FCD4BF6/606AF9B2" Ref="U?"  Part="1" 
AR Path="/5FCD4B8E/606EF10F/606AF9B2" Ref="U?"  Part="1" 
F 0 "U?" H 5350 4165 50  0000 C CNN
F 1 "LD39050PU33R" H 5350 4074 50  0000 C CNN
F 2 "RespiraWorks:DFN-6-1EP_3x3mm_P0.95mm_EP1.75x2.5mm" H 5300 3750 50  0001 C CNN
F 3 "" H 5300 3750 50  0001 C CNN
	1    5300 3750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 606AFEF2
P 5400 4050
AR Path="/5FCD4B8E/5FCD4BF6/606AFEF2" Ref="#PWR?"  Part="1" 
AR Path="/5FCD4B8E/606EF10F/606AFEF2" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5400 3800 50  0001 C CNN
F 1 "GND" H 5405 3877 50  0000 C CNN
F 2 "" H 5400 4050 50  0001 C CNN
F 3 "" H 5400 4050 50  0001 C CNN
	1    5400 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 4050 5300 4050
Connection ~ 5400 4050
$Comp
L Connector:TestPoint TP?
U 1 1 606B462F
P 5900 3900
AR Path="/5FCD4B8E/5FCD4BC5/606B462F" Ref="TP?"  Part="1" 
AR Path="/5FCD4B8E/5FE27F70/606B462F" Ref="TP?"  Part="1" 
AR Path="/5FCD4B8E/5FCD4BF6/606B462F" Ref="TP?"  Part="1" 
AR Path="/5FCD4B8E/606EF10F/606B462F" Ref="TP?"  Part="1" 
F 0 "TP?" H 5842 3920 50  0000 R CNN
F 1 "~Power Good" H 5842 4018 50  0000 R CNN
F 2 "RespiraWorks_Std:TestPoint_Pad_2.0x2.0mm" H 6100 3900 50  0001 C CNN
F 3 "~" H 6100 3900 50  0001 C CNN
	1    5900 3900
	-1   0    0    1   
$EndComp
Wire Wire Line
	5800 3850 5900 3850
Wire Wire Line
	5900 3850 5900 3900
$Comp
L Device:Jumper_NC_Small JP?
U 1 1 606C7AE0
P 4750 3700
AR Path="/5FCD4D85/606C7AE0" Ref="JP?"  Part="1" 
AR Path="/5FCD4B8E/5FCD4BF6/606C7AE0" Ref="JP?"  Part="1" 
AR Path="/5FCD4B8E/606EF10F/606C7AE0" Ref="JP?"  Part="1" 
F 0 "JP?" V 4750 3900 50  0000 C CNN
F 1 "Jumper_NC_Small" H 4750 3821 50  0001 C CNN
F 2 "RespiraWorks_Std:SolderJumper-2_P1.3mm_Bridged_RoundedPad1.0x1.5mm" H 4750 3700 50  0001 C CNN
F 3 "~" H 4750 3700 50  0001 C CNN
	1    4750 3700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4750 3600 4900 3600
Wire Wire Line
	4750 3800 4750 3850
Wire Wire Line
	4750 3850 4900 3850
$Comp
L Device:C C?
U 1 1 606CDB4D
P 6650 3750
AR Path="/5FCD4B8E/5FCD4BC5/606CDB4D" Ref="C?"  Part="1" 
AR Path="/5FCD4B8E/5FE27F70/606CDB4D" Ref="C?"  Part="1" 
AR Path="/5FCD4B8E/5FCD4BF6/606CDB4D" Ref="C?"  Part="1" 
AR Path="/5FCD4B8E/606EF10F/606CDB4D" Ref="C?"  Part="1" 
F 0 "C?" H 6600 3500 50  0000 L CNN
F 1 "1uF 10V X7R" H 6350 3400 50  0000 L CNN
F 2 "RespiraWorks_Std:C_0603_1608Metric" H 6688 3600 50  0001 C CNN
F 3 "~" H 6650 3750 50  0001 C CNN
	1    6650 3750
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 606CDB53
P 6650 3900
AR Path="/5FCD4B8E/5FCD4BC5/606CDB53" Ref="#PWR?"  Part="1" 
AR Path="/5FCD4B8E/5FE27F70/606CDB53" Ref="#PWR?"  Part="1" 
AR Path="/5FCD4B8E/5FCD4BF6/606CDB53" Ref="#PWR?"  Part="1" 
AR Path="/5FCD4B8E/606EF10F/606CDB53" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6650 3650 50  0001 C CNN
F 1 "GND" H 6655 3727 50  0000 C CNN
F 2 "" H 6650 3900 50  0001 C CNN
F 3 "" H 6650 3900 50  0001 C CNN
	1    6650 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 606CE401
P 4350 3750
AR Path="/5FCD4B8E/5FCD4BC5/606CE401" Ref="C?"  Part="1" 
AR Path="/5FCD4B8E/5FE27F70/606CE401" Ref="C?"  Part="1" 
AR Path="/5FCD4B8E/5FCD4BF6/606CE401" Ref="C?"  Part="1" 
AR Path="/5FCD4B8E/606EF10F/606CE401" Ref="C?"  Part="1" 
F 0 "C?" H 4300 3500 50  0000 L CNN
F 1 "1uF 10V X7R" H 4050 3400 50  0000 L CNN
F 2 "RespiraWorks_Std:C_0603_1608Metric" H 4388 3600 50  0001 C CNN
F 3 "~" H 4350 3750 50  0001 C CNN
	1    4350 3750
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 606CE407
P 4350 3900
AR Path="/5FCD4B8E/5FCD4BC5/606CE407" Ref="#PWR?"  Part="1" 
AR Path="/5FCD4B8E/5FE27F70/606CE407" Ref="#PWR?"  Part="1" 
AR Path="/5FCD4B8E/5FCD4BF6/606CE407" Ref="#PWR?"  Part="1" 
AR Path="/5FCD4B8E/606EF10F/606CE407" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4350 3650 50  0001 C CNN
F 1 "GND" H 4355 3727 50  0000 C CNN
F 2 "" H 4350 3900 50  0001 C CNN
F 3 "" H 4350 3900 50  0001 C CNN
	1    4350 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 3600 4350 3600
Connection ~ 4750 3600
Connection ~ 4350 3600
Wire Wire Line
	4350 3600 4750 3600
Wire Wire Line
	5800 3600 6650 3600
Connection ~ 6650 3600
Wire Wire Line
	6650 3600 6850 3600
Text Notes 4850 3200 0    50   ~ 0
Stable with 1-22µF output capacitance range\n(1µF "nominal" recommended)
$EndSCHEMATC
