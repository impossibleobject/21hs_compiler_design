	.text
	.globl	main
main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %r11
	movq	$3, %rax
	movq	%r11, %rcx
	movq	%rax, (%rcx)
	movq	%r11, %rax
	movq	%rax, %r10
	movq	%r10, %rax
	movq	%rax, %r11
	movq	(%r11), %r10
	movq	%r10, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	