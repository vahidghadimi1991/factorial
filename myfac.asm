segment .data

i:	dq 100
var1: db "%d",10,0
var2: db "%d",0
a: dq 0
b: dq 0

segment .text
global main
extern printf, scanf
main:

	push rbp
	mov rbp, rsp
	sub rsp, 32
	
	mov rax, 0
	
	

	mov rdi, var2
	mov rsi, a
	call scanf
	mov rax, [a]
	push rax
	

	call mypro
	leave
	ret

mypro:	
	push rbp
	mov rbp, rsp
	mov rax, [rbp+16]

	mov rcx, rax
	dec rcx

loop1:
	cmp rcx, 0
	jle print
	
	mul rcx

	loop loop1


print:
	mov rdi, var1
	mov rsi, rax
	mov rax, 0
	call printf

	
	
	mov rax, 0
	leave
	ret
