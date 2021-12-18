	.data
	.globl	a
a:
	.quad	1
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	leaq	a(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	%r11, %r10
	addq	$1, %r10
	movq	%r10, %rax
	leaq	a(%rip), %rcx
	movq	%rax, (%rcx)
	leaq	a(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %r10
	movq	%r10, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	