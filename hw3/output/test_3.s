	.text
	.globl	main
main:
	movq	$0, %rax
	andq	$1, %rax
	movq	%rax, 8(%rbp)
	movq	8(%rbp), %rax
	addq	$24, %rsp
	popq	%rbp
	retq	