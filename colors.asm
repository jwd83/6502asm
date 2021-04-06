;draws randomly colored pixels around the screen
start:
LDA $fe
LDX $fe
STA $200, X
LDX $fe
STA $300, X
LDX $fe
STA $400, X
LDX $fe
STA $500, X
JMP start


; hexdump
; Address  Hexdump   Dissassembly
; -------------------------------
; $0600    a5 fe     LDA $fe
; $0602    a6 fe     LDX $fe
; $0604    9d 00 02  STA $0200,X
; $0607    a6 fe     LDX $fe
; $0609    9d 00 03  STA $0300,X
; $060c    a6 fe     LDX $fe
; $060e    9d 00 04  STA $0400,X
; $0611    a6 fe     LDX $fe
; $0613    9d 00 05  STA $0500,X
; $0616    4c 00 06  JMP $0600
