	.data
	.globl	a
a:
	.quad	1
	.text
	.globl	f
f:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	leaq	a(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	a(%rip), %rcx
	movq	%rax, (%rcx)
	leaq	a(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$224, %rsp
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, -16(%rbp)
	callq	f
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	oat_alloc_array
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	subq	$8, %rsp
	movq	%rsp, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond2078
	.text
_body2077:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rsi
	movq	-80(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-64(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-72(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -88(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond2078
	.text
_cond2078:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	-120(%rbp), %rax
	cmpq	-128(%rbp), %rax
	setl	-136(%rbp)
	andq	$1, -136(%rbp)
	cmpq	$0, -136(%rbp)
	jne	_body2077
	jmp	_post2076
	.text
_post2076:
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	leaq	a(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	$0, %rsi
	movq	-160(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-152(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-144(%rbp), %rax
	addq	-176(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, -200(%rbp)
	movq	$1, %rsi
	movq	-200(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-192(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -216(%rbp)
	movq	-184(%rbp), %rax
	addq	-216(%rbp), %rax
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	