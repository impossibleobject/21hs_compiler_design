	.text
	.globl	main
main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rdx
	movq	$3, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	%rdx, %rax
	movq	%rax, %rsi
	movq	%rsi, %rax
	movq	%rax, %rdi
	movq	(%rdi), %r8 
	movq	%r8 , %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	