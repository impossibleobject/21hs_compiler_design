	.data
	.globl	gbl
gbl:
	.quad	1
	.quad	2
	.quad	3
	.quad	4
	.quad	5
	.quad	6
	.quad	7
	.text
	.globl	main
main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	movq	$0, %rax
	addq	%rdi, %rax
	movq	%rax, -8(%rbp)
	leaq	gbl(%rip), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	