	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %r8 
	subq	$8, %rsp
	movq	%rsp, %rsi
	movq	$17, %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	movq	$18, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	(%r8 ), %rdx
	movq	(%rsi), %rdi
	movq	%rdx, %rsi
	addq	%rdi, %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	