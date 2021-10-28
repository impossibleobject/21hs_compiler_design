	.text
	.globl	main
main:
	movq	$0, %rax
	orq	$1, %rax
	movq	%rax, 8(%rbp)
	movq	8(%rbp), %rax
	addq	$8, %rsp
	popq	%rbp
	retq	