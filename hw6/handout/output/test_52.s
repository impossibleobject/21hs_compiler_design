	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rdi
	subq	$8, %rsp
	movq	%rsp, %rsi
	movq	$9, %rax
	movq	%rdi, %rcx
	movq	%rax, (%rcx)
	movq	(%rdi), %rdx
	movq	(%rdi), %r9 
	movq	%rdx, %r8 
	addq	%r9 , %r8 
	movq	%r8 , (%rsi)
	movq	(%rdi), %rdx
	movq	(%rdi), %r9 
	movq	(%rdi), %r8 
	movq	%r9 , %rdi
	imulq	%r8 , %rdi
	movq	%rdx, %r9 
	addq	%rdi, %r9 
	movq	(%rsi), %rdi
	movq	%r9 , %rsi
	subq	%rdi, %rsi
	movq	%rsi, %rax
	movq	$2, %rcx
	shrq	%cl, %rax
	movq	%rax, %rdi
	movq	%rdi, %rax
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