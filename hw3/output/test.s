	.text
	.globl	main
main:
	movq	$9, %rax
	addq	$5, %rax
	movq	%rax, 8(%rbp)
	movq	8(%rbp), %rax
	addq	$24, %rsp
	popq	%rbp
	retq	