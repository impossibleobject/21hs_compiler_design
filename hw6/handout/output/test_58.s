	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rdx
	subq	$8, %rsp
	movq	%rsp, %rsi
	movq	$0, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	jmp	_cond15
	.text
_body14:
	movq	(%rdx), %rdi
	movq	(%rsi), %r8 
	movq	%rdi, %r9 
	addq	%r8 , %r9 
	movq	(%rsi), %rdi
	movq	%r9 , %r8 
	imulq	%rdi, %r8 
	movq	%r8 , (%rdx)
	movq	(%rsi), %r9 
	movq	%r9 , %r10
	addq	$1, %r10
	movq	%r10, (%rsi)
	jmp	_cond15
	.text
_cond15:
	movq	(%rsi), %r11
	cmpq	$10, %r11
	setl	%dil
	andq	$1, %rdi
	cmpq	$0, %rdi
	jne	_body14
	jmp	_post13
	.text
_post13:
	movq	(%rdx), %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	