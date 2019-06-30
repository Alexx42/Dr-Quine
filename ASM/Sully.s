section .data
file db "Sully_%d.s",0
compile db "nasm -f macho64 %s",0
execute db "gcc -o Sully_%d",0
msg db "section .data%2$cfile db %3$cSully_%%d.s%3$c,0%2$ccompile db %3$cnasm -f macho64 %%s%3$c,0%2$cexecute db %3$cgcc -o Sully_%%d%3$c,0%2$cmsg db %3$c%1$s%3$c,0%2$c%2$csection .text%2$cglobal start%2$cglobal _main%2$cextern _system%2$cextern _sprintf%2$cextern _dprintf%2$c%2$cstart:%2$c_main:%2$cpush rbp%2$cmov rbp,rsp%2$csub rsp,16%2$cmov r10,%4$d%2$c",0

section .text
global start
global _main
extern _system
extern _sprintf
extern _dprintf

start:
_main:
push rbp
mov rbp,rsp
sub rsp,16
mov r12,5
cmp r12,0
je end

lea rsi,[rel file]
lea rdi,[rel rsp]
mov rdx,r12
call _sprintf

mov rax,0x2000005
mov rdi,rsp
mov rsi,512+1024+2
mov rdx,0644o
syscall
cmp rax,-1
je end
leave

push rax
mov rdi,rax
lea rsi,[rel msg]
lea rdx,[rel msg]
mov rcx,10
mov r8,34
sub r12,1
mov r9,r12
call _dprintf

mov rax,0x2000006
pop rdi
syscall
call end

push rbp
mov rbp,rsp
sub rsp,16
lea rsi,[rel compile]
lea rdi,[rel rsp]
mov rdx,r12
call _sprintf

mov rdi,rsi
call _system
leave

end:
ret