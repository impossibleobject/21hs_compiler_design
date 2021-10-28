	.text
	.globl	main
main:
	movq	$2, %rax
	shrq	$42, %rax
	movq	%rax, 8(%rbp)
	movq	8(%rbp), %rax
	addq	$8, %rsp
	popq	%rbp
	retq	