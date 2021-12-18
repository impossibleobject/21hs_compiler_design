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
	subq	$40, %rsp
	cmpq	$0, %rdi
	sete	%r11b
	andq	$1, %r11
	cmpq	$0, %r11
	jne	then
	jmp	else
	.text
else:
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$16, %rax
	movq	%rax, %r11
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %r11
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	pushq	%rdi
	movq	-16(%rbp), %rdi
	callq	sum_tree
	popq	%rdi
	movq	%rax, %r11
	movq	-8(%rbp), %rax
	addq	%r11, %rax
	movq	%rax, -24(%rbp)
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %r11
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	sum_tree
	movq	%rax, %r11
	movq	-24(%rbp), %rax
	addq	%r11, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
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
	leaq	test(%rip), %rdi
	callq	sum_tree
	movq	%rax, %r11
	movq	%r11, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	