	.text
	.globl	main
main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rsi, -16(%rbp)
	movq	%rdi, -8(%rbp)
	movq	$17, %r10
	movq	-24(%rbp), %r11
	movq	%r10, (%r11)
	movq	-24(%rbp), %r10
	movq	(%r10), %r9 
	movq	%r9 , -32(%rbp)
	movq	-32(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq	