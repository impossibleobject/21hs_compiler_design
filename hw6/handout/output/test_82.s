	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rdi
	pushq	%rdi
	movq	$16, %rdi
	callq	oat_malloc
	popq	%rdi
	movq	%rax, %rsi
	movq	%rsi, %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %rsi
	movq	$3, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rsi
	movq	$4, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	%rdx, (%rdi)
	movq	(%rdi), %rsi
	movq	%rsi, %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %rdx
	movq	$5, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	(%rdi), %rsi
	movq	%rsi, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rdx
	movq	(%rdi), %rsi
	movq	%rsi, %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %r9 
	movq	(%r9 ), %rsi
	movq	(%rdi), %r9 
	movq	%r9 , %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %r8 
	movq	(%r8 ), %r9 
	movq	%rsi, %r8 
	addq	%r9 , %r8 
	movq	%r8 , %rsi
	addq	$3, %rsi
	movq	%rsi, (%rdx)
	movq	(%rdi), %rsi
	movq	%rsi, %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %rdx
	movq	(%rdi), %rsi
	movq	%rsi, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %r9 
	movq	(%r9 ), %rsi
	movq	%rsi, %r9 
	addq	$4, %r9 
	movq	%r9 , (%rdx)
	movq	(%rdi), %rsi
	movq	%rsi, %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %rdi
	movq	(%rdi), %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	