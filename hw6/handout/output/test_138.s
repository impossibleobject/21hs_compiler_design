	.text
	.globl	add
add:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rdx
	subq	$8, %rsp
	movq	%rsp, %r8 
	movq	%rdi, (%rdx)
	movq	%rsi, (%r8 )
	movq	(%rdx), %rsi
	movq	(%r8 ), %rdi
	movq	%rsi, %r9 
	addq	%rdi, %r9 
	movq	%r9 , %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rdx
	subq	$8, %rsp
	movq	%rsp, %rsi
	leaq	add(%rip), %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	(%rdx), %rdi
	movq	%rdi, (%rsi)
	movq	(%rsi), %r8 
	pushq	%r15
	movq	%r8 , %r15
	pushq	%r8 
	movq	$3, %rsi
	movq	$2, %rdi
	callq	*%r15
	popq	%r8 
	popq	%r15
	movq	%rax, %r9 
	movq	%r9 , %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	