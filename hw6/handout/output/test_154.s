	.data
	.globl	x
x:
	.quad	42
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	leaq	x(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	