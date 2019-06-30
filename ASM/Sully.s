section .data
file db "Sully_%d.s",0
base db "Sully_5.s",0
compile db "nasm -f macho64 Sully_%d.s",0
execute db "gcc Sully_%1$d.o -o Sully_%1$d && ./Sully_%1$d",0
msg db "section .data%2$cfile db %3$cSully_%%d.s%3$c,0%2$cbase db %3$cSully_5.s%3$c,0%2$ccompile db %3$cnasm -f macho64 Sully_%%d.s%3$c,0%2$cexecute db %3$cgcc Sully_%%1$d.o -o Sully_%%1$d && ./Sully_%%1$d%3$c,0%2$cmsg db %3$c%1$s%3$c,0%2$c%2$csection .text%2$cglobal start%2$cglobal _main%2$cextern _system%2$cextern _sprintf%2$cextern _dprintf%2$c%2$cstart:%2$c_main:%2$cpush rbp%2$cmov rbp,rsp%2$cmov r14,1%2$cmov r13,%4$d%2$ccall verify%2$csub rsp,16%2$c%2$clea rsi,[rel file]%2$clea rdi,[rel rsp]%2$cmov rdx,r13%2$ccall _sprintf%2$c%2$cmov rax,0x2000005%2$cmov rdi,rsp%2$cmov rsi,512+1024+2%2$cmov rdx,0644o%2$csyscall%2$ccmp rax,-1%2$cje error%2$cleave%2$c%2$cpush rax%2$cmov rdi,rax%2$clea rsi,[rel msg]%2$clea rdx,[rel msg]%2$cmov rcx,10%2$cmov r8,34%2$cmov r9,r13%2$ccall _dprintf%2$c%2$cmov rax,0x2000006%2$cpop rdi%2$csyscall%2$c%2$center 0,0%2$csub rsp,32%2$clea rsi,[rel compile]%2$clea rdi,[rel rsp]%2$cmov rdx,r13%2$ccall _sprintf%2$cmov rdi,rsp%2$ccall _system%2$c%2$clea rsi,[rel execute]%2$clea rdi,[rel rsp]%2$cmov rdx,r13%2$ccall _sprintf%2$cmov rdi,rsp%2$ccall _system%2$cleave%2$cret%2$c%2$cverify:%2$ccmp r13,0%2$cje end%2$ccmp r14,1%2$cje de%2$cret%2$c%2$cde:%2$cdec r13%2$cret%2$c%2$cerror:%2$cmov rdi,1%2$cmov rax,0x2000001%2$csyscall%2$c%2$cend:%2$cmov rdi,0%2$cmov rax,0x2000001%2$csyscall%2$c",0

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
mov r14,0
mov r13,5
call verify
sub rsp,16

lea rsi,[rel file]
lea rdi,[rel rsp]
mov rdx,r13
call _sprintf

mov rax,0x2000005
mov rdi,rsp
mov rsi,512+1024+2
mov rdx,0644o
syscall
cmp rax,-1
je error
leave

push rax
mov rdi,rax
lea rsi,[rel msg]
lea rdx,[rel msg]
mov rcx,10
mov r8,34
mov r9,r13
call _dprintf

mov rax,0x2000006
pop rdi
syscall

enter 0,0
sub rsp,32
lea rsi,[rel compile]
lea rdi,[rel rsp]
mov rdx,r13
call _sprintf
mov rdi,rsp
call _system

lea rsi,[rel execute]
lea rdi,[rel rsp]
mov rdx,r13
call _sprintf
mov rdi,rsp
call _system
leave
ret

verify:
cmp r13,0
je end
cmp r14,1
je de
ret

de:
dec r13
ret

error:
mov rdi,1
mov rax,0x2000001
syscall

end:
mov rdi,0
mov rax,0x2000001
syscall
