	.data
	.globl	_str_arr3678
_str_arr3678:
	.asciz	" "
	.data
	.globl	_str_arr3684
_str_arr3684:
	.asciz	"\t"
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$512, %rsp
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, -16(%rbp)
	subq	$8, %rsp
	movq	%rsp, -24(%rbp)
	movq	$2, %rdi
	callq	oat_alloc_array
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	$3, %rdi
	callq	oat_alloc_array
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -64(%rbp)
	movq	$1, %rax
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-56(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, -72(%rbp)
	movq	$3, %rax
	movq	-72(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-56(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$16, %rax
	movq	%rax, -80(%rbp)
	movq	$4, %rax
	movq	-80(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-40(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -88(%rbp)
	movq	-56(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$3, %rdi
	callq	oat_alloc_array
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -112(%rbp)
	movq	$2, %rax
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-104(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, -120(%rbp)
	movq	$0, %rax
	movq	-120(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-104(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$16, %rax
	movq	%rax, -128(%rbp)
	movq	$1, %rax
	movq	-128(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-40(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, -136(%rbp)
	movq	-104(%rbp), %rax
	movq	-136(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$3, %rdi
	callq	oat_alloc_array
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -152(%rbp)
	movq	$4, %rdi
	callq	oat_alloc_array
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -176(%rbp)
	movq	$1, %rax
	movq	-176(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-168(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, -184(%rbp)
	movq	$2, %rax
	movq	-184(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-168(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$16, %rax
	movq	%rax, -192(%rbp)
	movq	$3, %rax
	movq	-192(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-168(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$24, %rax
	movq	%rax, -200(%rbp)
	movq	$1, %rax
	movq	-200(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-152(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -208(%rbp)
	movq	-168(%rbp), %rax
	movq	-208(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$4, %rdi
	callq	oat_alloc_array
	movq	%rax, -216(%rbp)
	movq	-216(%rbp), %rax
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -232(%rbp)
	movq	$2, %rax
	movq	-232(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-224(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, -240(%rbp)
	movq	$2, %rax
	movq	-240(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-224(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$16, %rax
	movq	%rax, -248(%rbp)
	movq	$2, %rax
	movq	-248(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-224(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$24, %rax
	movq	%rax, -256(%rbp)
	movq	$2, %rax
	movq	-256(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-152(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, -264(%rbp)
	movq	-224(%rbp), %rax
	movq	-264(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$4, %rdi
	callq	oat_alloc_array
	movq	%rax, -272(%rbp)
	movq	-272(%rbp), %rax
	movq	%rax, -280(%rbp)
	movq	-280(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -288(%rbp)
	movq	$3, %rax
	movq	-288(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-280(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, -296(%rbp)
	movq	$2, %rax
	movq	-296(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-280(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$16, %rax
	movq	%rax, -304(%rbp)
	movq	$1, %rax
	movq	-304(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-280(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$24, %rax
	movq	%rax, -312(%rbp)
	movq	$4, %rax
	movq	-312(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-152(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$16, %rax
	movq	%rax, -320(%rbp)
	movq	-280(%rbp), %rax
	movq	-320(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-152(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$2, %rdi
	callq	oat_alloc_array
	movq	%rax, -328(%rbp)
	movq	-328(%rbp), %rax
	movq	%rax, -336(%rbp)
	movq	$4, %rdi
	callq	oat_alloc_array
	movq	%rax, -344(%rbp)
	movq	-344(%rbp), %rax
	movq	%rax, -352(%rbp)
	movq	-352(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -360(%rbp)
	movq	$0, %rax
	movq	-360(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-352(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, -368(%rbp)
	movq	$0, %rax
	movq	-368(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-352(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$16, %rax
	movq	%rax, -376(%rbp)
	movq	$0, %rax
	movq	-376(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-352(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$24, %rax
	movq	%rax, -384(%rbp)
	movq	$0, %rax
	movq	-384(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-336(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -392(%rbp)
	movq	-352(%rbp), %rax
	movq	-392(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$4, %rdi
	callq	oat_alloc_array
	movq	%rax, -400(%rbp)
	movq	-400(%rbp), %rax
	movq	%rax, -408(%rbp)
	movq	-408(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -416(%rbp)
	movq	$0, %rax
	movq	-416(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-408(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, -424(%rbp)
	movq	$0, %rax
	movq	-424(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-408(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$16, %rax
	movq	%rax, -432(%rbp)
	movq	$0, %rax
	movq	-432(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-408(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$24, %rax
	movq	%rax, -440(%rbp)
	movq	$0, %rax
	movq	-440(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-336(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, -448(%rbp)
	movq	-408(%rbp), %rax
	movq	-448(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-336(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -456(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -464(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -472(%rbp)
	movq	-456(%rbp), %rdx
	movq	-464(%rbp), %rsi
	movq	-472(%rbp), %rdi
	callq	matrix_Mult
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -480(%rbp)
	movq	$2, %rsi
	movq	-480(%rbp), %rdi
	callq	prnNx4
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -488(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -496(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -504(%rbp)
	movq	-488(%rbp), %rdx
	movq	-496(%rbp), %rsi
	movq	-504(%rbp), %rdi
	callq	matrix_MultAlt
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -512(%rbp)
	movq	$2, %rsi
	movq	-512(%rbp), %rdi
	callq	prnNx4
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	matrix_Mult
matrix_Mult:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$440, %rsp
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
	movq	$0, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond3801
	.text
_body3800:
	movq	$0, %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond3808
	.text
_body3807:
	movq	$0, %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond3815
	.text
_body3814:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rax
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
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-96(%rbp), %rsi
	movq	-104(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-88(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-96(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -112(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	-128(%rbp), %rsi
	movq	-136(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-120(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-128(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	-160(%rbp), %rsi
	movq	-168(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-152(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-160(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -184(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -192(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -200(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, -208(%rbp)
	movq	-200(%rbp), %rsi
	movq	-208(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-192(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-200(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -216(%rbp)
	movq	-216(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -232(%rbp)
	movq	-224(%rbp), %rax
	movq	%rax, -240(%rbp)
	movq	-232(%rbp), %rsi
	movq	-240(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-224(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-232(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -248(%rbp)
	movq	-248(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -256(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -264(%rbp)
	movq	-48(%rbp), %rax
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
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -304(%rbp)
	movq	-296(%rbp), %rax
	movq	%rax, -312(%rbp)
	movq	-304(%rbp), %rsi
	movq	-312(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-296(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-304(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -320(%rbp)
	movq	-320(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -328(%rbp)
	movq	-256(%rbp), %rax
	imulq	-328(%rbp), %rax
	movq	%rax, -336(%rbp)
	movq	-184(%rbp), %rax
	addq	-336(%rbp), %rax
	movq	%rax, -344(%rbp)
	movq	-344(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -352(%rbp)
	movq	-352(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -360(%rbp)
	movq	-360(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond3815
	.text
_cond3801:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -368(%rbp)
	movq	-368(%rbp), %rax
	cmpq	$2, %rax
	setl	-376(%rbp)
	andq	$1, -376(%rbp)
	cmpq	$0, -376(%rbp)
	jne	_body3800
	jmp	_post3799
	.text
_cond3808:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -384(%rbp)
	movq	-384(%rbp), %rax
	cmpq	$4, %rax
	setl	-392(%rbp)
	andq	$1, -392(%rbp)
	cmpq	$0, -392(%rbp)
	jne	_body3807
	jmp	_post3806
	.text
_cond3815:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -400(%rbp)
	movq	-400(%rbp), %rax
	cmpq	$3, %rax
	setl	-408(%rbp)
	andq	$1, -408(%rbp)
	cmpq	$0, -408(%rbp)
	jne	_body3814
	jmp	_post3813
	.text
_post3799:
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_post3806:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -416(%rbp)
	movq	-416(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -424(%rbp)
	movq	-424(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond3801
	.text
_post3813:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -432(%rbp)
	movq	-432(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -440(%rbp)
	movq	-440(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond3808
	.text
	.globl	matrix_MultAlt
matrix_MultAlt:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$208, %rsp
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
	movq	%rdi, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%rsi, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%rdx, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond3756
	.text
_body3755:
	movq	$0, %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond3763
	.text
_body3762:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rsi
	movq	-64(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-48(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-56(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-40(%rbp), %rax
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
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	-112(%rbp), %rcx
	movq	-120(%rbp), %rdx
	movq	-128(%rbp), %rsi
	movq	-136(%rbp), %rdi
	callq	dot3
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	movq	-104(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond3763
	.text
_cond3756:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	cmpq	$2, %rax
	setl	-176(%rbp)
	andq	$1, -176(%rbp)
	cmpq	$0, -176(%rbp)
	jne	_body3755
	jmp	_post3754
	.text
_cond3763:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	cmpq	$4, %rax
	setl	-192(%rbp)
	andq	$1, -192(%rbp)
	cmpq	$0, -192(%rbp)
	jne	_body3762
	jmp	_post3761
	.text
_post3754:
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_post3761:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond3756
	.text
	.globl	dot3
dot3:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$264, %rsp
	movq	%rcx, -8(%rbp)
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
	subq	$8, %rsp
	movq	%rsp, -56(%rbp)
	movq	%rdi, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%rsi, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%rdx, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond3710
	.text
_body3709:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-80(%rbp), %rsi
	movq	-88(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-72(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-80(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -120(%rbp)
	movq	-112(%rbp), %rsi
	movq	-120(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-104(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-112(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-56(%rbp), %rax
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
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -184(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-184(%rbp), %rsi
	movq	-192(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-176(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-184(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -208(%rbp)
	movq	-136(%rbp), %rax
	imulq	-208(%rbp), %rax
	movq	%rax, -216(%rbp)
	movq	-64(%rbp), %rax
	addq	-216(%rbp), %rax
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -232(%rbp)
	movq	-232(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -240(%rbp)
	movq	-240(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond3710
	.text
_cond3710:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -248(%rbp)
	movq	-248(%rbp), %rax
	cmpq	$3, %rax
	setl	-256(%rbp)
	andq	$1, -256(%rbp)
	cmpq	$0, -256(%rbp)
	jne	_body3709
	jmp	_post3708
	.text
_post3708:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -264(%rbp)
	movq	-264(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	prnNx4
prnNx4:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$192, %rsp
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, -16(%rbp)
	subq	$8, %rsp
	movq	%rsp, -24(%rbp)
	subq	$8, %rsp
	movq	%rsp, -32(%rbp)
	movq	%rdi, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%rsi, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond3658
	.text
_body3657:
	movq	$0, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond3665
	.text
_body3664:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-40(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-48(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-80(%rbp), %rsi
	movq	-88(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-72(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-80(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rdi
	callq	print_int
	leaq	_str_arr3678(%rip), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rdi
	callq	print_string
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond3665
	.text
_cond3658:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-136(%rbp), %rax
	cmpq	-144(%rbp), %rax
	setl	-152(%rbp)
	andq	$1, -152(%rbp)
	cmpq	$0, -152(%rbp)
	jne	_body3657
	jmp	_post3656
	.text
_cond3665:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	cmpq	$4, %rax
	setl	-168(%rbp)
	andq	$1, -168(%rbp)
	cmpq	$0, -168(%rbp)
	jne	_body3664
	jmp	_post3663
	.text
_post3656:
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_post3663:
	leaq	_str_arr3684(%rip), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rdi
	callq	print_string
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond3658