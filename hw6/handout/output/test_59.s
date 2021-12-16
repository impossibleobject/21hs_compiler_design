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
	jmp	_cond40
	.text
_body39:
	movq	(%rdx), %rdi
	movq	%rdi, %r8 
	addq	$2, %r8 
	movq	%r8 , (%rdx)
	movq	(%rsi), %r9 
	movq	%r9 , %rdi
	addq	$1, %rdi
	movq	%rdi, (%rsi)
	jmp	_cond40
	.text
_cond40:
	movq	(%rsi), %r8 
	cmpq	$3, %r8 
	setl	%r9b
	andq	$1, %r9 
	cmpq	$0, %r9 
	jne	_body39
	jmp	_post38
	.text
_post38:
	movq	(%rdx), %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	