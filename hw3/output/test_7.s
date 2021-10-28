	.text
	.globl	main
main:
	movq	$2, %rax
	shrq	$42, %rax
	movq	%rax, 8(%rbp)
	movq	8(%rbp), %rax
	addq	$24, %rsp
	popq	%rbp
	retq	