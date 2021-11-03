	.text
	.globl	main
main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rsi, -16(%rbp)
	movq	%rdi, -8(%rbp)
	movq	$3, %r10
	movq	-24(%rbp), %r11
	movq	%r10, (%r11)
	movq	-24(%rbp), %r10
	movq	%r10, -32(%rbp)
	movq	-32(%rbp), %r10
	movq	%r10, -40(%rbp)
	movq	-40(%rbp), %r10
	movq	(%r10), %r9 
	movq	%r9 , -48(%rbp)
	movq	-48(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq	