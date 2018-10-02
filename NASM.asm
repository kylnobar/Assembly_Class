; Syntax translation - GAS
SECTION .data

SECTION .bss
letter: resb 1
r: resd 4
s: resd 4
t: resd 4
x: resw 2
y: resw 2

SECTION .text
GLOBAL _main
_main: 

mov  byte [letter], 077h
mov  dword [r], 5h
mov  dword [s], 2h
mov  word [x], ah
mov  word [y], 4h

mov  ax, [x]
add  ax, [y]
mov  [z], ax

mov  ax, [x]
sub  ax, [y]
mov  [z], ax

mov  edx, 00h
mov  eax, [r]
mov  ecx, [s]
div  ecx
mov  [t], eax

mov  edx, 00h
mov  eax, [r]
mov  ecx, [s]
div  ecx
mov  [t], edx

push  dword 0
sub  esp, 4
mov  eax, 1
int 80h
MISMATCH: ".end"

