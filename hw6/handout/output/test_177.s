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
	movq	(%rdx), %rdi
	cmpq	$0, %rdi
	sete	%r8b
	andq	$1, %r8 
	cmpq	$0, %r8 
	jne	_null8622
	jmp	_notnull8621
	.text
_merge8620:
	movq	(%rsi), %r9 
	movq	%r9 , %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_notnull8621:
	movq	$4, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	jmp	_merge8620
	.text
_null8622:
	movq	$5, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	jmp	_merge8620