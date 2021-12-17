	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$376, %rsp
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, -16(%rbp)
	subq	$8, %rsp
	movq	%rsp, -24(%rbp)
	subq	$8, %rsp
	movq	%rsp, -32(%rbp)
	movq	$3, %rdi
	callq	oat_alloc_array
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	$4, %rdi
	callq	oat_alloc_array
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -72(%rbp)
	movq	$0, %rax
	movq	-72(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-64(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, -80(%rbp)
	movq	$1, %rax
	movq	-80(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-64(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$16, %rax
	movq	%rax, -88(%rbp)
	movq	$2, %rax
	movq	-88(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-64(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$24, %rax
	movq	%rax, -96(%rbp)
	movq	$3, %rax
	movq	-96(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-48(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -104(%rbp)
	movq	-64(%rbp), %rax
	movq	-104(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$4, %rdi
	callq	oat_alloc_array
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -128(%rbp)
	movq	$4, %rax
	movq	-128(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-120(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, -136(%rbp)
	movq	$5, %rax
	movq	-136(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-120(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$16, %rax
	movq	%rax, -144(%rbp)
	movq	$6, %rax
	movq	-144(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-120(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$24, %rax
	movq	%rax, -152(%rbp)
	movq	$7, %rax
	movq	-152(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-48(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, -160(%rbp)
	movq	-120(%rbp), %rax
	movq	-160(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$4, %rdi
	callq	oat_alloc_array
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -184(%rbp)
	movq	$8, %rax
	movq	-184(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-176(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, -192(%rbp)
	movq	$9, %rax
	movq	-192(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-176(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$16, %rax
	movq	%rax, -200(%rbp)
	movq	$10, %rax
	movq	-200(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-176(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$24, %rax
	movq	%rax, -208(%rbp)
	movq	$11, %rax
	movq	-208(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-48(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$16, %rax
	movq	%rax, -216(%rbp)
	movq	-176(%rbp), %rax
	movq	-216(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-48(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond407
	.text
_body406:
	movq	$0, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond414
	.text
_body413:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -232(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -240(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, -248(%rbp)
	movq	-240(%rbp), %rsi
	movq	-248(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-232(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-240(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -256(%rbp)
	movq	-256(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -264(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -272(%rbp)
	movq	-264(%rbp), %rax
	movq	%rax, -280(%rbp)
	movq	-272(%rbp), %rsi
	movq	-280(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-264(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-272(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -288(%rbp)
	movq	-288(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -296(%rbp)
	movq	-224(%rbp), %rax
	addq	-296(%rbp), %rax
	movq	%rax, -304(%rbp)
	movq	-304(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -312(%rbp)
	movq	-312(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -320(%rbp)
	movq	-320(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond414
	.text
_cond407:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -328(%rbp)
	movq	-328(%rbp), %rax
	cmpq	$3, %rax
	setl	-336(%rbp)
	andq	$1, -336(%rbp)
	cmpq	$0, -336(%rbp)
	jne	_body406
	jmp	_post405
	.text
_cond414:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -344(%rbp)
	movq	-344(%rbp), %rax
	cmpq	$4, %rax
	setl	-352(%rbp)
	andq	$1, -352(%rbp)
	cmpq	$0, -352(%rbp)
	jne	_body413
	jmp	_post412
	.text
_post405:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -360(%rbp)
	movq	-360(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_post412:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -368(%rbp)
	movq	-368(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -376(%rbp)
	movq	-376(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond407