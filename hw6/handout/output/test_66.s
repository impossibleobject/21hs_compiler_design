	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %r10
	subq	$8, %rsp
	movq	%rsp, %r9 
	movq	$9, %rax
	movq	%r10, %rcx
	movq	%rax, (%rcx)
	movq	(%r10), %rdx
	movq	(%r10), %rdi
	movq	%rdx, %rsi
	addq	%rdi, %rsi
	movq	%rsi, (%r9 )
	movq	(%r10), %r8 
	movq	(%r10), %rdx
	movq	(%r10), %rsi
	movq	%rdx, %rdi
	imulq	%rsi, %rdi
	movq	%r8 , %rdx
	addq	%rdi, %rdx
	movq	(%r9 ), %rsi
	movq	%rdx, %rdi
	subq	%rsi, %rdi
	movq	%rdi, %rax
	movq	$2, %rcx
	shrq	%cl, %rax
	movq	%rax, %rsi
	movq	%rsi, %rax
	movq	$2, %rcx
	shlq	%cl, %rax
	movq	%rax, %rdi
	movq	%rdi, %rax
	movq	$2, %rcx
	sarq	%cl, %rax
	movq	%rax, %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	