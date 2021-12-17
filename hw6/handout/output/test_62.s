	.data
	.globl	arr
arr:
	.quad	_global_arr118
	.data
	.globl	_global_arr118
_global_arr118:
	.quad	4
	.quad	1
	.quad	2
	.quad	3
	.quad	4
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	leaq	arr(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	$2, %rsi
	movq	-16(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-8(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$16, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	