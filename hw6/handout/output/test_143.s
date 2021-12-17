	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$144, %rsp
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, -16(%rbp)
	movq	$3, %rdi
	callq	oat_alloc_array
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	subq	$8, %rsp
	movq	%rsp, -40(%rbp)
	movq	$3, %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond7287
	.text
_body7286:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-56(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-64(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -80(%rbp)
	movq	$0, %rax
	movq	-80(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond7287
	.text
_cond7287:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-104(%rbp), %rax
	cmpq	-112(%rbp), %rax
	setl	-120(%rbp)
	andq	$1, -120(%rbp)
	cmpq	$0, -120(%rbp)
	jne	_body7286
	jmp	_post7285
	.text
_post7285:
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	