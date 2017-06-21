; homez.g
; called to home the Z axis
;
; generated by RepRapFirmware Configuration Tool on Wed Jun 21 2017 10:31:25 GMT+0100 (BST)

; Lift Z relatively to current position
G91
G1 Z5 F6000

; Move Z down until the switch triggers
G1 Z-185 S1 F1800

; Back to absolute positioning
G90

; Tell the firmware where we are
G92 Z0

; Uncomment the following lines to lift Z after probing
;G91
;G1 Z5 F100
;G90