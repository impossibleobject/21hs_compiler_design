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
	movq	(%r8 ), %rdi
	movq	%rdx, %rsi
	addq	%rdi, %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %r8 
	subq	$8, %rsp
	movq	%rsp, %rdx
	leaq	add(%rip), %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	movq	(%r8 ), %rsi
	movq	%rsi, (%rdx)
	movq	(%rdx), %rdi
	pushq	%r15
	movq	%rdi, %r15
	pushq	%rdi
	movq	$3, %rsi
	movq	$2, %rdi
	callq	*%r15
	popq	%rdi
	popq	%r15
	movq	%rax, %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	