	.text
	.globl	main
main:
	movq	$0, %rax
	addq	$16, %rsp
	popq	%rbp
	retq	