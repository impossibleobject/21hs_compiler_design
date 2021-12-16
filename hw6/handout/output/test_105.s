	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rdi
	subq	$8, %rsp
	movq	%rsp, %rsi
	movq	$12, %rax
	movq	%rdi, %rcx
	movq	%rax, (%rcx)
	movq	$800, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	(%rdi), %rdx
	movq	(%rsi), %r9 
	movq	%rdx, %r8 
	subq	%r9 , %r8 
	cmpq	$0, %r8 
	setle	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	_then8234
	jmp	_else8233
	.text
_else8233:
	movq	(%rdi), %rdx
	movq	(%rsi), %rdi
	movq	%rdx, %rsi
	subq	%rdi, %rsi
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
	movq	(%rdi), %rdx
	movq	$0, %rdi
	subq	%rdx, %rdi
	movq	(%rsi), %rdx
	movq	%rdi, %rsi
	subq	%rdx, %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	