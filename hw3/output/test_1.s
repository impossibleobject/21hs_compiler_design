	.text
	.globl	main
main:
	movq	$9, %rax
	subq	$10, %rax
	movq	%rax, 8(%rbp)
	movq	8(%rbp), %rax
	addq	$8, %rsp
	popq	%rbp
	retq	