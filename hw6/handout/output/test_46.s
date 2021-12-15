	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rdi
	subq	$8, %rsp
	movq	%rsp, %rsi
	movq	$0, %rax
	movq	%rdi, %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	jmp	_cond15
	.text
_body14:
	movq	(%rdi), %rdx
	movq	(%rsi), %r9 
	movq	%rdx, %r8 
	addq	%r9 , %r8 
	movq	(%rsi), %rdx
	movq	%r8 , %r9 
	imulq	%rdx, %r9 
	movq	%r9 , (%rdi)
	movq	(%rsi), %rdx
	movq	%rdx, %r9 
	addq	$1, %r9 
	movq	%r9 , (%rsi)
	jmp	_cond15
	.text
_cond15:
	movq	(%rsi), %rdx
	cmpq	$10, %rdx
	setl	%r9b
	andq	$1, %r9 
	cmpq	$0, %r9 
	jne	_body14
	jmp	_post13
	.text
_post13:
	movq	(%rdi), %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	