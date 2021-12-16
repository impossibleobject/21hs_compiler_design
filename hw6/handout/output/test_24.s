	.text
	.globl	bar
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rcx, -8(%rbp)
	movq	%rdi, %rax
	addq	%rsi, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	addq	%rdx, %rdi
	movq	%rdi, %rsi
	addq	-8(%rbp), %rsi
	movq	%rsi, %rdi
	addq	%r8 , %rdi
	movq	%rdi, %rsi
	addq	%r9 , %rsi
	movq	%rsi, %rdi
	addq	16(%rbp), %rdi
	movq	%rdi, %rsi
	addq	24(%rbp), %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	foo
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rdi
	pushq	%rdi
	movq	%rdi, %r9 
	movq	%rdi, %r8 
	movq	%rdi, %rcx
	movq	%rdi, %rdx
	movq	%rdi, %rsi
	callq	bar
	addq	$16, %rsp
	movq	%rax, %rdi
	movq	%rdi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	main
main:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	$3, %rdi
	callq	foo
	movq	%rax, %rdi
	movq	%rdi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	