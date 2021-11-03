	.text
	.globl	main
main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	movq	%rsi, -16(%rbp)
	movq	%rdi, -8(%rbp)
	movq	$0, %r10
	movq	-24(%rbp), %r11
	movq	%r10, (%r11)
	movq	$42, %rax
	addq	$24, %rsp
	popq	%rbp
	retq	