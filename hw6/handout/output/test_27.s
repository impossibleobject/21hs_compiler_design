	.text
	.globl	foo
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rcx, -8(%rbp)
	movq	%r9 , %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	bar
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rcx, -8(%rbp)
	movq	16(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	baz
baz:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rcx, -8(%rbp)
	movq	24(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	main
main:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	$8
	pushq	$7
	movq	$6, %r9 
	movq	$5, %r8 
	movq	$4, %rcx
	movq	$3, %rdx
	movq	$2, %rsi
	movq	$1, %rdi
	callq	foo
	addq	$16, %rsp
	movq	%rax, %rdi
	pushq	%rdi
	pushq	$8
	pushq	$7
	movq	$6, %r9 
	movq	$5, %r8 
	movq	$4, %rcx
	movq	$3, %rdx
	movq	$2, %rsi
	movq	$1, %rdi
	callq	bar
	addq	$16, %rsp
	popq	%rdi
	movq	%rax, %rsi
	pushq	%rdi
	pushq	%rsi
	pushq	$8
	pushq	$7
	movq	$6, %r9 
	movq	$5, %r8 
	movq	$4, %rcx
	movq	$3, %rdx
	movq	$2, %rsi
	movq	$1, %rdi
	callq	baz
	addq	$16, %rsp
	popq	%rsi
	popq	%rdi
	movq	%rax, %rdx
	movq	%rdi, %r9 
	addq	%rsi, %r9 
	movq	%r9 , %rdi
	addq	%rdx, %rdi
	movq	%rdi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	