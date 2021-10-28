	.text
	.globl	main
main:
	movq	$9, %rax
	addq	$5, %rax
	movq	%rax, 8(%rbp)
	movq	$15, %rax
	addq	8(%rbp), %rax
	movq	%rax, 16(%rbp)
	movq	16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq	