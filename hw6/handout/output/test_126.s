	.data
	.globl	white
white:
	.quad	_global_struct6723
	.data
	.globl	_global_struct6723
_global_struct6723:
	.quad	255
	.quad	254
	.quad	253
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$72, %rsp
	movq	$24, %rdi
	callq	oat_malloc
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, -24(%rbp)
	movq	$3, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, -32(%rbp)
	movq	$5, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	addq	$0, %rax
	addq	$16, %rax
	movq	%rax, -40(%rbp)
	movq	$7, %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	leaq	white(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	addq	$0, %rax
	addq	$16, %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	