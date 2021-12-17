	.text
	.globl	baz
baz:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rcx, -8(%rbp)
	movq	%rdi, %rax
	addq	%rsi, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	addq	%r8 , %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	addq	%r9 , %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	addq	16(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	addq	24(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	bar
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movq	%rcx, -8(%rbp)
	movq	%rdi, %rax
	addq	%rsi, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	addq	%r8 , %rax
	movq	%rax, -40(%rbp)
	pushq	%r9 
	pushq	%r8 
	pushq	24(%rbp)
	pushq	16(%rbp)
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	baz
	addq	$16, %rsp
	popq	%r8 
	popq	%r9 
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	addq	%r9 , %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	addq	16(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	addq	24(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	addq	-48(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	foo
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	pushq	%rdi
	pushq	%rdi
	pushq	%rdi
	movq	%rdi, %r9 
	movq	%rdi, %r8 
	movq	%rdi, %rcx
	movq	%rdi, %rdx
	movq	%rdi, %rsi
	callq	bar
	addq	$16, %rsp
	popq	%rdi
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	main
main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	$1, %rdi
	callq	foo
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	