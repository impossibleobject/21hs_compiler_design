	.text
	.globl	main
main:
	movq	$9, 8(%rbp)
	addq	$5, 8(%rbp)
	retq	