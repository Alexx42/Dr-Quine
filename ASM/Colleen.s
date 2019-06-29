; commentary outside
section .data
	msg db "; commentary outside%2$csection .data%2$c%4$cmsg db %3$c%5$s%3$c, 0%2$csection .text%2$c%4$cglobal start%2$c%4$cglobal _main%2$c%4$cextern _printf%2$cstart:%2$c%4$ccall _main%2$c%4$cret%2$c_main:%2$c%4$cpush rbp%2$c%4$cmov rbp,rsp%2$c%4$cmov rdx,10%2$c%4$cmov rcx,34%2$c%4$cmov r8,9%2$c%4$clea r9,[rel msg]%2$c%4$clea rdi,[rel msg]%2$c%4$ccall _printf%2$c%4$cleave ;equivalent of pop%2$c%4$cmov rax,0%2$c%4$cret%2$c", 0
section .text
	global start
	global _main
	extern _printf
start:
	call _main
	ret
_main:
	push rbp
	mov rbp,rsp
	mov rdx,10
	mov rcx,34
	mov r8,9
	lea r9,[rel msg]
	lea rdi,[rel msg]
	call _printf
	leave ;equivalent of pop
	mov rax,0
	ret
