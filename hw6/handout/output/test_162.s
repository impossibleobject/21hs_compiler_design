	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rdx
	subq	$8, %rsp
	movq	%rsp, %rsi
	movq	$12, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	$800, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	(%rdx), %rdi
	movq	(%rsi), %r8 
	movq	%rdi, %r9 
	subq	%r8 , %r9 
	cmpq	$0, %r9 
	setle	%dil
	andq	$1, %rdi
	cmpq	$0, %rdi
	jne	_then8234
	jmp	_else8233
	.text
_else8233:
	movq	(%rdx), %rdi
	movq	(%rsi), %rdx
	movq	%rdi, %rsi
	subq	%rdx, %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_merge8232:
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then8234:
	movq	(%rdx), %rdi
	movq	$0, %rdx
	subq	%rdi, %rdx
	movq	(%rsi), %rdi
	movq	%rdx, %rsi
	subq	%rdi, %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	