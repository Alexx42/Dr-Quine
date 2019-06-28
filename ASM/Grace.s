; commentary outside
%define START start:
%define STR "; commentary outside"
%define MAIN _main:

section .data
	file db "Grace_kid.s"

section .text
	global _main
	global start
	extern _dprintf

START
MAIN
	mov rax,0x2000005
	mov rdi,file
	mov rsi,512+1024+2
	mov rdx,0644o
	syscall

	; dprintf

	
	call _dprintf

	mov rax,0x2000006
	pop rdi
	syscall

	mov rax,0x2000001
	mov rdi,0
	syscall
