	.text
	.globl	factorial
factorial:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	cmpq	$0, %rdi
	sete	-8(%rbp)
	andq	$1, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	ret1
	jmp	recurse
	.text
recurse:
	movq	%rdi, %rax
	subq	$1, %rax
	movq	%rax, -16(%rbp)
	pushq	%rdi
	movq	-16(%rbp), %rdi
	callq	factorial
	popq	%rdi
	movq	%rax, -24(%rbp)
	movq	%rdi, %rax
	imulq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
ret1:
	movq	$1, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	main
main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	$5, %rdi
	callq	factorial
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	