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
	movq	%rsp, %rdi
	movq	$0, %rax
	movq	%rdi, %rcx
	movq	%rax, (%rcx)
	callq	g
	movq	%rax, %rdi
	movq	%rdi, (%rdi)
	movq	(%rdi), %rdi
	movq	%rdi, %rax
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
	movq	%rax, %rdi
	movq	%rdi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	f
	movq	%rax, %rdi
	movq	%rdi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	