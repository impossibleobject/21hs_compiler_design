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
	cmpq	$0, %rdi
	sete	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	then
	jmp	else
	.text
else:
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$16, %rax
	movq	%rax, %rsi
	movq	(%rsi), %r8 
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rsi
	movq	(%rsi), %rdx
	pushq	%r8 
	pushq	%rdi
	pushq	%rdx
	movq	%rdx, %rdi
	callq	sum_tree
	popq	%rdx
	popq	%rdi
	popq	%r8 
	movq	%rax, %rsi
	movq	%r8 , %rdx
	addq	%rsi, %rdx
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %rsi
	movq	(%rsi), %rdi
	pushq	%rdi
	pushq	%rdx
	callq	sum_tree
	popq	%rdx
	popq	%rdi
	movq	%rax, %rsi
	movq	%rdx, %rdi
	addq	%rsi, %rdi
	movq	%rdi, %rax
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
	movq	%rax, %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	