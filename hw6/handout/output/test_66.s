	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rdx
	subq	$8, %rsp
	movq	%rsp, %rsi
	movq	$9, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	(%rdx), %rdi
	movq	(%rdx), %r8 
	movq	%rdi, %r9 
	addq	%r8 , %r9 
	movq	%r9 , (%rsi)
	movq	(%rdx), %rdi
	movq	(%rdx), %r8 
	movq	(%rdx), %r9 
	movq	%r8 , %rdx
	imulq	%r9 , %rdx
	movq	%rdi, %r10
	addq	%rdx, %r10
	movq	(%rsi), %r11
	movq	%r10, %rsi
	subq	%r11, %rsi
	movq	%rsi, %rax
	movq	$2, %rcx
	shrq	%cl, %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	$2, %rcx
	shlq	%cl, %rax
	movq	%rax, %rsi
	movq	%rsi, %rax
	movq	$2, %rcx
	sarq	%cl, %rax
	movq	%rax, %rdi
	movq	%rdi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	