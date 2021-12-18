	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$56, %rsp
	subq	$8, %rsp
	movq	%rsp, %r11
	subq	$8, %rsp
	movq	%rsp, %r10
	movq	$9, %rax
	movq	%r11, %rcx
	movq	%rax, (%rcx)
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	addq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%r10, %rcx
	movq	%rax, (%rcx)
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %r11
	imulq	-48(%rbp), %r11
	movq	-32(%rbp), %rax
	addq	%r11, %rax
	movq	%rax, -56(%rbp)
	movq	(%r10), %r11
	movq	-56(%rbp), %r10
	subq	%r11, %r10
	movq	%r10, %rax
	movq	$2, %rcx
	shrq	%cl, %rax
	movq	%rax, %r11
	movq	%r11, %rax
	movq	$2, %rcx
	shlq	%cl, %rax
	movq	%rax, %r10
	movq	%r10, %rax
	movq	$2, %rcx
	sarq	%cl, %rax
	movq	%rax, %r11
	movq	%r11, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	