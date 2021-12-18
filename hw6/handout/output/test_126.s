	.data
	.globl	arr_x
arr_x:
	.quad	_global_arr6861
	.data
	.globl	_global_arr6861
_global_arr6861:
	.quad	3
	.quad	3
	.quad	4
	.quad	5
	.data
	.globl	arr_z
arr_z:
	.quad	_global_arr6860
	.data
	.globl	_global_arr6860
_global_arr6860:
	.quad	3
	.quad	4
	.quad	5
	.quad	6
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$72, %rsp
	subq	$8, %rsp
	movq	%rsp, %r11
	pushq	%r11
	movq	$24, %rdi
	callq	oat_malloc
	popq	%r11
	movq	%rax, %r10
	movq	%r10, %rax
	movq	%rax, -8(%rbp)
	leaq	arr_x(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %r10
	movq	-8(%rbp), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, -16(%rbp)
	movq	%r10, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %r10
	movq	$3, %rax
	movq	%r10, %rcx
	movq	%rax, (%rcx)
	leaq	arr_z(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %r10
	movq	-8(%rbp), %rax
	addq	$0, %rax
	addq	$16, %rax
	movq	%rax, -24(%rbp)
	movq	%r10, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	%r11, %rcx
	movq	%rax, (%rcx)
	movq	(%r11), %r10
	movq	%r10, %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r10
	movq	%r10, %rax
	movq	%rax, -40(%rbp)
	pushq	%r11
	pushq	%r10
	movq	$0, %rsi
	movq	-40(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	%r10, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r10
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	addq	$0, %rax
	addq	$16, %rax
	movq	%rax, %r11
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %r11
	pushq	%r11
	pushq	%r10
	movq	$1, %rsi
	movq	%r11, %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	-64(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, %r11
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	%r10, %r11
	imulq	-72(%rbp), %r11
	movq	%r11, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	