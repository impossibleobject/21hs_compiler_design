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
	subq	$168, %rsp
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	movq	$24, %rdi
	callq	oat_malloc
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	leaq	arr_x(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, -48(%rbp)
	movq	$3, %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	leaq	arr_z(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	addq	$0, %rax
	addq	$16, %rax
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	$0, %rsi
	movq	-96(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-88(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	addq	$0, %rax
	addq	$16, %rax
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	$1, %rsi
	movq	-144(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-136(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)
	movq	-112(%rbp), %rax
	imulq	-160(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	