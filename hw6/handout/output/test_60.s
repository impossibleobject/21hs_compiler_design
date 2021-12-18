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
	leaq	arr(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	%r11, %rax
	movq	%rax, %r10
	pushq	%r11
	pushq	%r10
	movq	$2, %rsi
	movq	%r10, %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	%r11, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$16, %rax
	movq	%rax, %r10
	movq	(%r10), %r11
	movq	%r11, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	