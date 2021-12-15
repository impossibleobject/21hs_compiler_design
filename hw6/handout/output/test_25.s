	.text
	.globl	baz
baz:
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
	.globl	bar
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	movq	%rcx, -8(%rbp)
	movq	%rdi, %rax
	addq	%rsi, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	addq	%rdx, %rdi
	movq	%rdi, %rsi
	addq	-8(%rbp), %rsi
	movq	%rsi, %rdx
	addq	%r8 , %rdx
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	24(%rbp)
	pushq	16(%rbp)
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movq	%rdi, %rsi
	movq	-16(%rbp), %rdi
	callq	baz
	addq	$16, %rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	movq	%rax, -24(%rbp)
	movq	%rdx, %rdi
	addq	%r9 , %rdi
	movq	%rdi, %rsi
	addq	16(%rbp), %rsi
	movq	%rsi, %rdi
	addq	24(%rbp), %rdi
	movq	%rdi, %rsi
	addq	-24(%rbp), %rsi
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
	movq	$1, %rdi
	callq	foo
	movq	%rax, %rdi
	movq	%rdi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	