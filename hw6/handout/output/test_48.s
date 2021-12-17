	.data
	.globl	glist
glist:
	.quad	1
	.quad	2
	.quad	3
	.quad	4
	.quad	5
	.text
	.globl	search
search:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$56, %rsp
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	movq	$0, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	loop
	.text
check:
	movq	%rsi, %rax
	addq	$0, %rax
	movq	%rax, %rcx
	movq	-48(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	-24(%rbp), %rdi
	sete	-32(%rbp)
	andq	$1, -32(%rbp)
	movq	$1, %rax
	addq	-48(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	cmpq	$0, -32(%rbp)
	jne	true
	jmp	loop
	.text
false:
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
loop:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpq	$5, %rax
	sete	-56(%rbp)
	andq	$1, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	false
	jmp	check
	.text
true:
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
	leaq	glist(%rip), %rsi
	movq	$3, %rdi
	callq	search
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	