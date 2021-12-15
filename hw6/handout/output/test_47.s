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
	jmp	_cond40
	.text
_body39:
	movq	(%rdi), %rdx
	movq	%rdx, %r9 
	addq	$2, %r9 
	movq	%r9 , (%rdi)
	movq	(%rsi), %rdx
	movq	%rdx, %r9 
	addq	$1, %r9 
	movq	%r9 , (%rsi)
	jmp	_cond40
	.text
_cond40:
	movq	(%rsi), %rdx
	cmpq	$3, %rdx
	setl	%r9b
	andq	$1, %r9 
	cmpq	$0, %r9 
	jne	_body39
	jmp	_post38
	.text
_post38:
	movq	(%rdi), %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	