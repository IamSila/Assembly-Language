; simple programme demonstrating basic program format and layout.

; ***************************************************************
; some basic data declaration


section .data
;------------------------------------------------------------------
; define some constants.
EXIT_SUCCESS equ 0         ;successful operation
SYS_exit equ 60      ;call code for terminate.



;------------------------------------------------------------------
; Byte (8-bit) variable declarations
bVar1 db 17
bVar2 db 9
bVar3 db 0

; ------------------------------------------------------------------
; word (16-bit) variable declarations
wVar1 dw 17000
wVar2 dw 9000
wResult dw 0

; -----------------------------------------------------------------
; Double-word (32-bit) declarations
dVar1 dd 17000000
dVar2 dd 9000000
dResult dd 0

; ----------------------------------------------------------------
; Quadword (64-bit) declarations
qVar1 dq 170000000
qVar2 dq 9000000
qResult dq 0


