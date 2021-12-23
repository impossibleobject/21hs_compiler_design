	.data
	.globl	i
i:
	.quad	8
	.text
	.globl	f
f:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rdx
	movq	$0, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	pushq	%rdx
	callq	g
	popq	%rdx
	movq	%rax, %rsi
	movq	%rsi, (%rdx)
	movq	(%rdx), %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	g
g:
	pushq	%rbp
	movq	%rsp, %rbp
	leaq	i(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	f
	movq	%rax, %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	