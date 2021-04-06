; draws randomly colored pixels around the screen using a JSR (jump subroutine)
; to determine the next color and pixel offset
start:
JSR pick
STA $200, X
JSR pick
STA $300, X
JSR pick
STA $400, X
JSR pick
STA $500, X
JMP start

pick:
LDA $fe
LDX $fe
RTS



; Address  Hexdump   Dissassembly
; -------------------------------
; $0600    20 1b 06  JSR $061b
; $0603    9d 00 02  STA $0200,X
; $0606    20 1b 06  JSR $061b
; $0609    9d 00 03  STA $0300,X
; $060c    20 1b 06  JSR $061b
; $060f    9d 00 04  STA $0400,X
; $0612    20 1b 06  JSR $061b
; $0615    9d 00 05  STA $0500,X
; $0618    4c 00 06  JMP $0600
; $061b    a5 fe     LDA $fe
; $061d    a6 fe     LDX $fe
; $061f    60        RTS 
