	.text
	.globl	add
add:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %r9 
	subq	$8, %rsp
	movq	%rsp, %r8 
	movq	%rdi, (%r9 )
	movq	%rsi, (%r8 )
	movq	(%r9 ), %rdx
	movq	(%r8 ), %rsi
	movq	%rdx, %rdi
	addq	%rsi, %rdi
	movq	%rdi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	mul
mul:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %r9 
	subq	$8, %rsp
	movq	%rsp, %r8 
	movq	%rdi, (%r9 )
	movq	%rsi, (%r8 )
	movq	(%r9 ), %rdx
	movq	(%r8 ), %rsi
	movq	%rdx, %rdi
	imulq	%rsi, %rdi
	movq	%rdi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rsi
	leaq	mul(%rip), %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	(%rsi), %rdi
	pushq	%r15
	movq	%rdi, %r15
	pushq	%rdi
	movq	$4, %rsi
	movq	$3, %rdi
	callq	*%r15
	popq	%rdi
	popq	%r15
	movq	%rax, %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	