	.text
	.globl	foo
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	main
main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	$17, %rdi
	callq	foo
	movq	%rax, -8(%rbp)
	movq	$19, %rdi
	callq	foo
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	