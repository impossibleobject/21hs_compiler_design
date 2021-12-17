	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$40, %rsp
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, -16(%rbp)
	movq	$0, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, %rax
	sete	-32(%rbp)
	andq	$1, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	_null8622
	jmp	_notnull8621
	.text
_merge8620:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_notnull8621:
	movq	$4, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_merge8620
	.text
_null8622:
	movq	$5, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_merge8620