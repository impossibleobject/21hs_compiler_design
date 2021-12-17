	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$152, %rsp
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, -16(%rbp)
	subq	$8, %rsp
	movq	%rsp, -24(%rbp)
	movq	$0, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$3, %rdi
	callq	oat_alloc_array
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	subq	$8, %rsp
	movq	%rsp, -48(%rbp)
	movq	$3, %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond7245
	.text
_body7244:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rax
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
	movq	$0, %rax
	movq	-88(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond7245
	.text
_cond7245:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-112(%rbp), %rax
	cmpq	-120(%rbp), %rax
	setl	-128(%rbp)
	andq	$1, -128(%rbp)
	cmpq	$0, -128(%rbp)
	jne	_body7244
	jmp	_post7243
	.text
_merge7265:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_notnull7266:
	movq	$4, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_merge7265
	.text
_null7267:
	movq	$5, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_merge7265
	.text
_post7243:
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	cmpq	$0, %rax
	sete	-152(%rbp)
	andq	$1, -152(%rbp)
	cmpq	$0, -152(%rbp)
	jne	_null7267
	jmp	_notnull7266