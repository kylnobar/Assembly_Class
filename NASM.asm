; Casey Sorrells
; Syntax translation - GAS to NASM
; CSCI 273-5867

SECTION .data

SECTION .bss
letter: resb 1
r: resd 1
s: resd 1
t: resd 1
x: resw 1
y: resw 1
z: resw 1

SECTION .text
GLOBAL _main
mov  dword [s], 2h
_main:

mov byte [letter], 77h
mov dword [r], 5h
mov dword [s], 2h
mov word [x], ah
mov word [y], 4h

mov ax, [x]
add ax, [y]
mov [z], ax

mov ax, [x]
sub ax, [y]
mov [z], ax

mov edx, 0h
mov eax, [r]
mov ecx, [s]
div ecx
mov [t], eax

mov edx, 0h
mov eax, [r]
mov ecx, [s]
div ecx
mov [t], edx

push dword 0
sub esp, 4
mov eax, 1
int 80h
