	.text
	.globl	main
main:
	movq	$3, %rax
	sarq	$42, %rax
	movq	%rax, 8(%rbp)
	movq	8(%rbp), %rax
	addq	$8, %rsp
	popq	%rbp
	retq	