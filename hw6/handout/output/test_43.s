	.data
	.globl	test1
test1:
	.quad	0
	.quad	0
	.quad	100
	.data
	.globl	test2
test2:
	.quad	test1
	.quad	0
	.quad	10
	.data
	.globl	test3
test3:
	.quad	0
	.quad	0
	.quad	1
	.data
	.globl	test
test:
	.quad	test2
	.quad	test3
	.quad	5
	.text
	.globl	sum_tree
sum_tree:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$88, %rsp
	cmpq	$0, %rdi
	sete	-8(%rbp)
	andq	$1, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	then
	jmp	else
	.text
else:
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$16, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	pushq	%rdi
	movq	-40(%rbp), %rdi
	callq	sum_tree
	popq	%rdi
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	addq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	callq	sum_tree
	movq	%rax, -80(%rbp)
	movq	-56(%rbp), %rax
	addq	-80(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
then:
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	main
main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	leaq	test(%rip), %rdi
	callq	sum_tree
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	