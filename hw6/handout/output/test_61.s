	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rdx
	subq	$8, %rsp
	movq	%rsp, %rsi
	movq	$17, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	$18, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	(%rdx), %rdi
	movq	(%rsi), %r8 
	movq	%rdi, %r9 
	addq	%r8 , %r9 
	movq	%r9 , %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	