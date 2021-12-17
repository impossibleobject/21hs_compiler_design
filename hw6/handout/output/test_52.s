	.text
	.globl	gcd_rec
gcd_rec:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	movq	%rdi, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	cmpq	$0, %rsi
	setne	-16(%rbp)
	andq	$1, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	neq0
	jmp	eq0
	.text
eq0:
	movq	%rdi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
neq0:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	subq	%rsi, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	cmpq	%rsi, %rax
	setg	-40(%rbp)
	andq	$1, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	neq0
	jmp	recurse
	.text
recurse:
	pushq	%rsi
	movq	%rsi, %rdi
	movq	-32(%rbp), %rsi
	callq	gcd_rec
	popq	%rsi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	main
main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	$34, %rsi
	movq	$424, %rdi
	callq	gcd_rec
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	