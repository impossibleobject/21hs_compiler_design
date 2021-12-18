	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	subq	$8, %rsp
	movq	%rsp, %r11
	pushq	%r11
	movq	$24, %rdi
	callq	oat_malloc
	popq	%r11
	movq	%rax, %r10
	movq	%r10, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %r10
	movq	$3, %rax
	movq	%r10, %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %r10
	movq	$4, %rax
	movq	%r10, %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	addq	$0, %rax
	addq	$16, %rax
	movq	%rax, %r10
	movq	$5, %rax
	movq	%r10, %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	%r11, %rcx
	movq	%rax, (%rcx)
	movq	(%r11), %r10
	movq	%r10, %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r10
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %r11
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	%r10, %r11
	addq	-32(%rbp), %r11
	movq	%r11, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	