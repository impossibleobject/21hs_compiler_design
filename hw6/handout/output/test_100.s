	.text
	.globl	sub
sub:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$248, %rsp
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, -16(%rbp)
	subq	$8, %rsp
	movq	%rsp, -24(%rbp)
	subq	$8, %rsp
	movq	%rsp, -32(%rbp)
	subq	$8, %rsp
	movq	%rsp, -40(%rbp)
	subq	$8, %rsp
	movq	%rsp, -48(%rbp)
	movq	%rdi, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%rsi, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%rdx, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	array_of_string
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	callq	oat_alloc_array
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -88(%rbp)
	subq	$8, %rsp
	movq	%rsp, -96(%rbp)
	movq	-72(%rbp), %rax
	movq	-96(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, -104(%rbp)
	movq	-88(%rbp), %rax
	movq	-104(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond2491
	.text
_body2490:
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-120(%rbp), %rsi
	movq	-128(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-112(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-120(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -136(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)
	movq	-152(%rbp), %rax
	addq	-160(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	-168(%rbp), %rsi
	movq	-176(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-144(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-168(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	movq	-136(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond2491
	.text
_cond2491:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -216(%rbp)
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-216(%rbp), %rax
	cmpq	-224(%rbp), %rax
	setl	-232(%rbp)
	andq	$1, -232(%rbp)
	cmpq	$0, -232(%rbp)
	jne	_body2490
	jmp	_post2489
	.text
_post2489:
	movq	-88(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -240(%rbp)
	movq	-240(%rbp), %rdi
	callq	string_of_array
	movq	%rax, -248(%rbp)
	movq	-248(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	movq	%rsi, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	$1, %rsi
	movq	-24(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-16(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	$5, %rdx
	movq	$3, %rsi
	movq	-40(%rbp), %rdi
	callq	sub
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	print_string
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	