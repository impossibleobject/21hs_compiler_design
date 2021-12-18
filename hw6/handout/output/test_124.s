	.data
	.globl	red
red:
	.quad	_global_struct6793
	.data
	.globl	_global_struct6793
_global_struct6793:
	.quad	255
	.quad	0
	.quad	0
	.data
	.globl	green
green:
	.quad	_global_struct6792
	.data
	.globl	_global_struct6792
_global_struct6792:
	.quad	0
	.quad	255
	.quad	0
	.data
	.globl	blue
blue:
	.quad	_global_struct6791
	.data
	.globl	_global_struct6791
_global_struct6791:
	.quad	0
	.quad	0
	.quad	255
	.data
	.globl	points
points:
	.quad	_global_arr6790
	.data
	.globl	_global_arr6790
_global_arr6790:
	.quad	1
	.quad	_global_struct6789
	.data
	.globl	_global_struct6789
_global_struct6789:
	.quad	_global_struct6788
	.quad	_global_struct6787
	.quad	_global_struct6786
	.data
	.globl	_global_struct6788
_global_struct6788:
	.quad	255
	.quad	0
	.quad	0
	.data
	.globl	_global_struct6787
_global_struct6787:
	.quad	0
	.quad	255
	.quad	0
	.data
	.globl	_global_struct6786
_global_struct6786:
	.quad	0
	.quad	0
	.quad	255
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$40, %rsp
	leaq	points(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	%r11, %rax
	movq	%rax, %r10
	pushq	%r11
	pushq	%r10
	movq	$0, %rsi
	movq	%r10, %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	%r11, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %r10
	movq	(%r10), %r11
	movq	%r11, %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %r10
	movq	(%r10), %r11
	movq	%r11, %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %r10
	movq	$3, %rax
	movq	%r10, %rcx
	movq	%rax, (%rcx)
	leaq	points(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	%r11, %rax
	movq	%rax, %r10
	pushq	%r11
	pushq	%r10
	movq	$0, %rsi
	movq	%r10, %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	%r11, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %r10
	movq	(%r10), %r11
	movq	%r11, %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %r10
	movq	(%r10), %r11
	movq	%r11, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %r10
	movq	$2, %rax
	movq	%r10, %rcx
	movq	%rax, (%rcx)
	leaq	points(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	%r11, %rax
	movq	%rax, %r10
	pushq	%r11
	pushq	%r10
	movq	$0, %rsi
	movq	%r10, %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	%r11, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %r10
	movq	(%r10), %r11
	movq	%r11, %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %r10
	movq	(%r10), %r11
	movq	%r11, %rax
	addq	$0, %rax
	addq	$16, %rax
	movq	%rax, %r10
	movq	$4, %rax
	movq	%r10, %rcx
	movq	%rax, (%rcx)
	leaq	points(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	%r11, %rax
	movq	%rax, %r10
	pushq	%r11
	pushq	%r10
	movq	$0, %rsi
	movq	%r10, %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	%r11, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %r10
	movq	(%r10), %r11
	movq	%r11, %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %r10
	movq	(%r10), %r11
	movq	%r11, %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %r10
	movq	(%r10), %r11
	leaq	points(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %r10
	movq	%r10, %rax
	movq	%rax, -8(%rbp)
	pushq	%r11
	pushq	%r10
	movq	$0, %rsi
	movq	-8(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	%r10, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r10
	movq	%r10, %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r10
	movq	%r10, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r10
	movq	%r11, %rax
	imulq	%r10, %rax
	movq	%rax, -40(%rbp)
	leaq	points(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	%r11, %rax
	movq	%rax, %r10
	pushq	%r11
	pushq	%r10
	movq	$0, %rsi
	movq	%r10, %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	%r11, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %r10
	movq	(%r10), %r11
	movq	%r11, %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %r10
	movq	(%r10), %r11
	movq	%r11, %rax
	addq	$0, %rax
	addq	$16, %rax
	movq	%rax, %r10
	movq	(%r10), %r11
	movq	-40(%rbp), %r10
	addq	%r11, %r10
	movq	%r10, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	