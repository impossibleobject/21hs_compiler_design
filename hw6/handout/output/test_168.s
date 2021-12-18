	.data
	.globl	i
i:
	.quad	9
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %r11
	leaq	i(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %r10
	movq	%r10, (%r11)
	movq	(%r11), %r10
	movq	%r10, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	