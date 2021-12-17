	.data
	.globl	x
x:
	.quad	_global_arr7411
	.data
	.globl	_global_arr7411
_global_arr7411:
	.quad	3
	.quad	1
	.quad	2
	.quad	3
	.data
	.globl	y
y:
	.quad	_global_arr7410
	.data
	.globl	_global_arr7410
_global_arr7410:
	.quad	3
	.quad	4
	.quad	5
	.quad	6
	.text
	.globl	f
f:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, -16(%rbp)
	subq	$8, %rsp
	movq	%rsp, -24(%rbp)
	movq	%rdi, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%rsi, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%rdx, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	_then7426
	jmp	_else7425
	.text
_else7425:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_merge7424:
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then7426:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$160, %rsp
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	leaq	y(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	leaq	x(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	$1, %rdx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdi
	callq	f
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	$0, %rsi
	movq	-40(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-32(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -48(%rbp)
	movq	$17, %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	leaq	y(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	leaq	x(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	$1, %rdx
	movq	-56(%rbp), %rsi
	movq	-64(%rbp), %rdi
	callq	f
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	$0, %rsi
	movq	-80(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-72(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	leaq	x(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	leaq	y(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	$0, %rdx
	movq	-104(%rbp), %rsi
	movq	-112(%rbp), %rdi
	callq	f
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
	movq	-96(%rbp), %rax
	addq	-144(%rbp), %rax
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	