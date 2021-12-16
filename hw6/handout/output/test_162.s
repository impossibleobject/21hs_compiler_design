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
	movq	(%rdx), %r8 
	movq	(%rsi), %rdx
	movq	%r8 , %rsi
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
	movq	(%rdx), %r9 
	movq	$0, %r10
	subq	%r9 , %r10
	movq	(%rsi), %r11
	movq	%r10, %rdx
	subq	%r11, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	