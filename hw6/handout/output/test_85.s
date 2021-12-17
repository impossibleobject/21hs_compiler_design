	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$352, %rsp
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
	movq	$10, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$3, %rdi
	callq	oat_alloc_array
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
	subq	$8, %rsp
	movq	%rsp, -64(%rbp)
	movq	$3, %rax
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, -72(%rbp)
	movq	-56(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond1649
	.text
_body1648:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-88(%rbp), %rsi
	movq	-96(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-80(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-88(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -104(%rbp)
	movq	$3, %rdi
	callq	oat_alloc_array
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -120(%rbp)
	subq	$8, %rsp
	movq	%rsp, -128(%rbp)
	movq	$3, %rax
	movq	-128(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, -136(%rbp)
	movq	-120(%rbp), %rax
	movq	-136(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond1666
	.text
_body1665:
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	-152(%rbp), %rsi
	movq	-160(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-144(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-152(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -168(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -184(%rbp)
	movq	-176(%rbp), %rax
	addq	-184(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -200(%rbp)
	movq	-192(%rbp), %rax
	addq	-200(%rbp), %rax
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rax
	movq	-168(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -216(%rbp)
	movq	-216(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond1666
	.text
_cond1649:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -232(%rbp)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -240(%rbp)
	movq	-232(%rbp), %rax
	cmpq	-240(%rbp), %rax
	setl	-248(%rbp)
	andq	$1, -248(%rbp)
	cmpq	$0, -248(%rbp)
	jne	_body1648
	jmp	_post1647
	.text
_cond1666:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -256(%rbp)
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -264(%rbp)
	movq	-256(%rbp), %rax
	cmpq	-264(%rbp), %rax
	setl	-272(%rbp)
	andq	$1, -272(%rbp)
	cmpq	$0, -272(%rbp)
	jne	_body1665
	jmp	_post1664
	.text
_post1647:
	movq	-56(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -280(%rbp)
	movq	-280(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -288(%rbp)
	movq	-288(%rbp), %rax
	movq	%rax, -296(%rbp)
	movq	$2, %rsi
	movq	-296(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-288(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$16, %rax
	movq	%rax, -304(%rbp)
	movq	-304(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -312(%rbp)
	movq	-312(%rbp), %rax
	movq	%rax, -320(%rbp)
	movq	$1, %rsi
	movq	-320(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-312(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, -328(%rbp)
	movq	-328(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -336(%rbp)
	movq	-336(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_post1664:
	movq	-120(%rbp), %rax
	movq	-104(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -344(%rbp)
	movq	-344(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -352(%rbp)
	movq	-352(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond1649