	.data
	.globl	gbl
gbl:
	.quad	12
	.text
	.globl	main
main:
	pushq	%rbp
	movq	%rsp, %rbp
	leaq	gbl(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	%r11, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	