	.text
	.globl	f
f:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, -16(%rbp)
	movq	%rdi, %rax
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
	jne	_then2802
	jmp	_else2801
	.text
_else2801:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	f
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	imulq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_merge2800
	.text
_merge2800:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then2802:
	movq	$1, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_merge2800
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	$5, %rdi
	callq	f
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	