; Configuration file for Duet WiFi (firmware version 1.17)
; executed by the firmware on start-up
;
; generated by RepRapFirmware Configuration Tool on Wed Jun 21 2017 10:31:25 GMT+0100 (BST)

; General preferences
G21 ; Work in millimetres
G90 ; Send absolute coordinates...
M83 ; ...but relative extruder moves
M555 P2 ; Set firmware compatibility to look like Marlin
M208 X0 Y0 Z0 S1 ; Set axis minima
M208 X200 Y200 Z180 S0 ; Set axis maxima

; Communication and general
M111 S0                            		; Debug off
M550 P..					; Machine name and Netbios name (can be anything you like)
M551 P...                  			; Machine password (used for FTP)
;*** If you have more than one Duet on your network, they must all have different MAC addresses, so change the last digits
M540 P0xBE:0xEF:0xDE:0xAD:0xFE:0xED		; MAC Address

;*** Networking - Enable for both WiFi and Ethernet boards.
M552 S1						; Turn network on

;*** Ethernet networking: Adjust the IP address and gateway in the following 2 lines to suit your network
M552 .....				; (0 = DHCP)
M554 .....				; Gateway
M553 .....				; Netmask

; Endstops
M574 Z1 S0 ; Define active low and unused microswitches
M574 X1 Y1 S1 ; Define active high microswitches
M558 P0 X0 Y0 Z0 H5 F120 T6000 ; Set Z probe type to switch, the axes for which it is used and the probe + travel speeds
G31 P600 X0 Y0 Z0 ; Set Z probe trigger value, offset and trigger height
M557 X25:175 Y25:175 S20 ; Define mesh grid

; Drives
M569 P0 S1 ; Drive 0 goes forwards
M569 P1 S1 ; Drive 1 goes forwards
M569 P2 S0 ; Drive 2 goes backwards
M569 P3 S1 ; Drive 3 goes forwards
M350 X128 Y128 Z128 E16 I0 ; Configure microstepping without interpolation
M92 X102.29 Y98.61 Z309.81 E206.11 ; Set steps per mm
M566 X900 Y900 Z12 E120 ; Set maximum instantaneous speed changes (mm/min)
M203 X12000 Y12000 Z1200 E3000 ; Set maximum speeds (mm/min)
M201 X1000 Y1000 Z100 E5000 ; Set accelerations (mm/s^2)
M906 X855 Y855 Z855 E855 I30 ; Set motor currents (mA) and motor idle factor in per cent
M84 S30 ; Set idle timeout

; Heaters
M143 S260 ; Set maximum heater temperature to 260C
M305 P0 T100000 B3988 C0 R4700 ; Set thermistor + ADC parameters for heater 0
M305 P1 T100000 B4725 C0 R4700 ; Set thermistor + ADC parameters for heater 1

; Tools
M563 P0 D0 H1 ; Define tool 0
G10 P0 X0 Y0 Z0 ; Set tool 0 axis offsets
G10 P0 R0 S0 ; Set initial tool 0 active and standby temperatures to 0C

; Network
;M550 Pwanhao-di3 ; Set machine name
M552 S1 ; Enable network
; Access point is configured manually via M587 by the user
M586 P0 S1 ; Enable HTTP
M586 P1 S0 ; Disable FTP
M586 P2 S0 ; Disable Telnet

; Fans
M106 P0 S0.3 I0 F500 H-1 ; Set fan 0 value, PWM signal inversion and frequency. Thermostatic control is turned off
M106 P1 S1 I0 F500 H1 T45 ; Set fan 1 value, PWM signal inversion and frequency. Thermostatic control is turned on
M106 P2 S1 I0 F500 H1 T45 ; Set fan 2 value, PWM signal inversion and frequency. Thermostatic control is turned on

; Custom settings are not configured

; Miscellaneous
T0 ; Select first tool
