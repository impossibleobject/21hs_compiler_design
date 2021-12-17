	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$104, %rsp
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, -16(%rbp)
	movq	$12, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$800, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	subq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, %rax
	setle	-48(%rbp)
	andq	$1, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	_then8234
	jmp	_else8233
	.text
_else8233:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	subq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
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
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	$0, %rax
	subq	-80(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-88(%rbp), %rax
	subq	-96(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	