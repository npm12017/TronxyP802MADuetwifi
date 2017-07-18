; homeall.g
; called to home all axes
;
; generated by RepRapFirmware Configuration Tool on Sun Jul 02 2017 11:18:04 GMT+0100 (BST)

; Relative positioning
G91

; Lift Z
G1 Z40 F6000

; Course home X and Y
G1 X-225 Y-225 F1800 S1

; Move away from the endstops
G1 X5 Y5 F6000

; Fine home X and Y
G1 X-225 Y-225 F360 S1

; Tell the firmware where we are
G92 X0 Y0

; Move Z down until the switch triggers
G1 Z-10 F360

; Move away from the endstops for homeing 
G1 X70 Y150 F6000

; Tell the firmware where we are
G92 X70 Y150

; Move Z down until the switch triggers
G1 Z-300 F360 S1

; Move to corner ready for printer
G1 X-69 Y-133 F6000

; Absolute positioning
G90

; Tell the firmware where we are
G92 Z2.5

; Uncomment the following line to lift the nozzle after probing
;G1 Z5 F100

