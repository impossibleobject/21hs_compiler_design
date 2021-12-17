	.data
	.globl	_str_arr4230
_str_arr4230:
	.asciz	"\n"
	.text
	.globl	xor
xor:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, -16(%rbp)
	movq	%rdi, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%rsi, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	andq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	xorq	$-1, %rax
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	orq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-48(%rbp), %rax
	andq	-72(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	xor_shift_plus
xor_shift_plus:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$288, %rsp
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, -16(%rbp)
	subq	$8, %rsp
	movq	%rsp, -24(%rbp)
	movq	%rdi, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
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
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	$1, %rsi
	movq	-72(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-64(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	$0, %rsi
	movq	-104(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-96(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -112(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	$23, %rcx
	shlq	%cl, %rax
	movq	%rax, -136(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-136(%rbp), %rsi
	movq	-144(%rbp), %rdi
	callq	xor
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	movq	$17, %rcx
	shrq	%cl, %rax
	movq	%rax, -168(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-168(%rbp), %rsi
	movq	-176(%rbp), %rdi
	callq	xor
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	movq	$26, %rcx
	shrq	%cl, %rax
	movq	%rax, -200(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -208(%rbp)
	movq	-200(%rbp), %rsi
	movq	-208(%rbp), %rdi
	callq	xor
	movq	%rax, -216(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-216(%rbp), %rsi
	movq	-224(%rbp), %rdi
	callq	xor
	movq	%rax, -232(%rbp)
	movq	-232(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -240(%rbp)
	movq	-240(%rbp), %rax
	movq	%rax, -248(%rbp)
	movq	$1, %rsi
	movq	-248(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-240(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, -256(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -264(%rbp)
	movq	-264(%rbp), %rax
	movq	-256(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -272(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -280(%rbp)
	movq	-272(%rbp), %rax
	addq	-280(%rbp), %rax
	movq	%rax, -288(%rbp)
	movq	-288(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$256, %rsp
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
	subq	$8, %rsp
	movq	%rsp, -48(%rbp)
	movq	$2, %rax
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
	jmp	_cond4194
	.text
_body4193:
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
	movq	$0, %rax
	movq	-88(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond4194
	.text
_body4213:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-24(%rbp), %rax
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
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -152(%rbp)
	movq	$100, %rax
	imulq	-152(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	movq	-136(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond4214
	.text
_cond4194:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -184(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -192(%rbp)
	movq	-184(%rbp), %rax
	cmpq	-192(%rbp), %rax
	setl	-200(%rbp)
	andq	$1, -200(%rbp)
	cmpq	$0, -200(%rbp)
	jne	_body4193
	jmp	_post4192
	.text
_cond4214:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rax
	cmpq	$2, %rax
	setl	-216(%rbp)
	andq	$1, -216(%rbp)
	cmpq	$0, -216(%rbp)
	jne	_body4213
	jmp	_post4212
	.text
_post4192:
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond4214
	.text
_post4212:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rdi
	callq	xor_shift_plus
	movq	%rax, -232(%rbp)
	movq	-232(%rbp), %rdi
	callq	print_int
	leaq	_str_arr4230(%rip), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, -240(%rbp)
	movq	-240(%rbp), %rdi
	callq	print_string
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -248(%rbp)
	movq	-248(%rbp), %rdi
	callq	xor_shift_plus
	movq	%rax, -256(%rbp)
	movq	-256(%rbp), %rdi
	callq	print_int
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	