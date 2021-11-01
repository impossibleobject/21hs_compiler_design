	.text
	.globl	baz
baz:
	pushq	%rbp
	subq	$120, %rsp
	movq	%rdi, 64(%rsp)
	movq	%rsi, 56(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%r8 , 32(%rsp)
	movq	%r9 , 24(%rsp)
	movq	8(%rbp), %r12
	movq	%r12, 16(%rsp)
	movq	16(%rbp), %r12
	movq	%r12, 8(%rsp)
	movq	8(%rsp), %rax
	addq	16(%rsp), %rax
	movq	%rax, 72(%rsp)
	movq	72(%rsp), %rax
	addq	24(%rsp), %rax
	movq	%rax, 80(%rsp)
	movq	80(%rsp), %rax
	addq	32(%rsp), %rax
	movq	%rax, 88(%rsp)
	movq	88(%rsp), %rax
	addq	40(%rsp), %rax
	movq	%rax, 96(%rsp)
	movq	96(%rsp), %rax
	addq	48(%rsp), %rax
	movq	%rax, 104(%rsp)
	movq	104(%rsp), %rax
	addq	56(%rsp), %rax
	movq	%rax, 112(%rsp)
	movq	112(%rsp), %rax
	addq	64(%rsp), %rax
	movq	%rax, 120(%rsp)
	movq	120(%rsp), %rax
	addq	$120, %rsp
	popq	%rbp
	retq	
	.text
	.globl	bar
bar:
	pushq	%rbp
	subq	$136, %rsp
	movq	%rdi, 64(%rsp)
	movq	%rsi, 56(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%r8 , 32(%rsp)
	movq	%r9 , 24(%rsp)
	movq	8(%rbp), %r12
	movq	%r12, 16(%rsp)
	movq	16(%rbp), %r12
	movq	%r12, 8(%rsp)
	movq	8(%rsp), %rax
	addq	16(%rsp), %rax
	movq	%rax, 72(%rsp)
	movq	72(%rsp), %rax
	addq	24(%rsp), %rax
	movq	%rax, 80(%rsp)
	movq	80(%rsp), %rax
	addq	32(%rsp), %rax
	movq	%rax, 88(%rsp)
	movq	88(%rsp), %rax
	addq	40(%rsp), %rax
	movq	%rax, 96(%rsp)
	subq	$16, %rsp
	movq	72(%rsp), %rdi
	movq	80(%rsp), %rsi
	movq	88(%rsp), %rdx
	movq	96(%rsp), %rcx
	movq	40(%rsp), %r8 
	movq	48(%rsp), %r9 
	pushq	56(%rsp)
	pushq	64(%rsp)
	callq	baz
	movq	%rax, 104(%rsp)
	addq	$16, %rsp
	movq	96(%rsp), %rax
	addq	48(%rsp), %rax
	movq	%rax, 112(%rsp)
	movq	112(%rsp), %rax
	addq	56(%rsp), %rax
	movq	%rax, 120(%rsp)
	movq	120(%rsp), %rax
	addq	64(%rsp), %rax
	movq	%rax, 128(%rsp)
	movq	128(%rsp), %rax
	addq	104(%rsp), %rax
	movq	%rax, 136(%rsp)
	movq	136(%rsp), %rax
	addq	$136, %rsp
	popq	%rbp
	retq	
	.text
	.globl	foo
foo:
	pushq	%rbp
	subq	$16, %rsp
	movq	%rdi, 8(%rsp)
	subq	$16, %rsp
	movq	8(%rsp), %rdi
	movq	8(%rsp), %rsi
	movq	8(%rsp), %rdx
	movq	8(%rsp), %rcx
	movq	8(%rsp), %r8 
	movq	8(%rsp), %r9 
	pushq	8(%rsp)
	pushq	8(%rsp)
	callq	bar
	movq	%rax, 16(%rsp)
	addq	$16, %rsp
	movq	16(%rsp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq	
	.text
	.globl	main
main:
	pushq	%rbp
	subq	$24, %rsp
	movq	%rdi, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movq	$1, %rdi
	callq	foo
	movq	%rax, 24(%rsp)
	movq	24(%rsp), %rax
	addq	$24, %rsp
	popq	%rbp
	retq	