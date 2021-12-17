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
	subq	$376, %rsp
	leaq	points(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	$0, %rsi
	movq	-16(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-8(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, -56(%rbp)
	movq	$3, %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	leaq	points(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	$0, %rsi
	movq	-72(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-64(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, -112(%rbp)
	movq	$2, %rax
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	leaq	points(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	$0, %rsi
	movq	-128(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-120(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	addq	$0, %rax
	addq	$16, %rax
	movq	%rax, -168(%rbp)
	movq	$4, %rax
	movq	-168(%rbp), %rcx
	movq	%rax, (%rcx)
	leaq	points(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	$0, %rsi
	movq	-184(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-176(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -216(%rbp)
	movq	-216(%rbp), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -232(%rbp)
	leaq	points(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -240(%rbp)
	movq	-240(%rbp), %rax
	movq	%rax, -248(%rbp)
	movq	$0, %rsi
	movq	-248(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-240(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -256(%rbp)
	movq	-256(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -264(%rbp)
	movq	-264(%rbp), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, -272(%rbp)
	movq	-272(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -280(%rbp)
	movq	-280(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, -288(%rbp)
	movq	-288(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -296(%rbp)
	movq	-232(%rbp), %rax
	imulq	-296(%rbp), %rax
	movq	%rax, -304(%rbp)
	leaq	points(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -312(%rbp)
	movq	-312(%rbp), %rax
	movq	%rax, -320(%rbp)
	movq	$0, %rsi
	movq	-320(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-312(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -328(%rbp)
	movq	-328(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -336(%rbp)
	movq	-336(%rbp), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, -344(%rbp)
	movq	-344(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -352(%rbp)
	movq	-352(%rbp), %rax
	addq	$0, %rax
	addq	$16, %rax
	movq	%rax, -360(%rbp)
	movq	-360(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -368(%rbp)
	movq	-304(%rbp), %rax
	addq	-368(%rbp), %rax
	movq	%rax, -376(%rbp)
	movq	-376(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	