	.text
	.globl	main
main:
	movq	$3, %rax
	sarq	$42, %rax
	movq	%rax, 8(%rbp)
	movq	8(%rbp), %rax
	addq	$24, %rsp
	popq	%rbp
	retq	