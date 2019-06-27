; commentary outside
section .data
msg: db "; commentary outside%2$csection .data%2$c%2$csection .text%2$cglobal _main%2$cextern _printf", 0
section .text
global _main
extern _printf
_main:
	; commentary inside
	push rbp
	lea rdi, [rel msg]
	lea rsi, [rel msg]
	mov rdx, 10
	mov rcx, 34
	mov r8, 9
	call _printf
	pop rbp
	mov rax, 0
	ret
