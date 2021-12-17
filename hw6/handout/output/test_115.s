	.text
	.globl	bubble_sort
bubble_sort:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$360, %rsp
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
	movq	$1, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond4855
	.text
_body4854:
	movq	$0, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond4865
	.text
_body4864:
	movq	-8(%rbp), %rax
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
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -104(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-104(%rbp), %rsi
	movq	-112(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-88(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-104(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	-80(%rbp), %rax
	cmpq	-128(%rbp), %rax
	setg	-136(%rbp)
	andq	$1, -136(%rbp)
	cmpq	$0, -136(%rbp)
	jne	_then4912
	jmp	_else4911
	.text
_cond4855:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)
	cmpq	$0, -144(%rbp)
	jne	_body4854
	jmp	_post4853
	.text
_cond4865:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -168(%rbp)
	movq	-152(%rbp), %rax
	cmpq	-168(%rbp), %rax
	setl	-176(%rbp)
	andq	$1, -176(%rbp)
	cmpq	$0, -176(%rbp)
	jne	_body4864
	jmp	_post4863
	.text
_else4911:
	jmp	_merge4910
	.text
_merge4910:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond4865
	.text
_post4853:
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_post4863:
	jmp	_cond4855
	.text
_then4912:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -200(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -208(%rbp)
	movq	-200(%rbp), %rax
	movq	%rax, -216(%rbp)
	movq	-208(%rbp), %rsi
	movq	-216(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-200(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-208(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -232(%rbp)
	movq	-232(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -240(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -248(%rbp)
	movq	-240(%rbp), %rax
	movq	%rax, -256(%rbp)
	movq	-248(%rbp), %rsi
	movq	-256(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-240(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-248(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -264(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -272(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -280(%rbp)
	movq	-280(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -288(%rbp)
	movq	-272(%rbp), %rax
	movq	%rax, -296(%rbp)
	movq	-288(%rbp), %rsi
	movq	-296(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-272(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-288(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -304(%rbp)
	movq	-304(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -312(%rbp)
	movq	-312(%rbp), %rax
	movq	-264(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -320(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -328(%rbp)
	movq	-328(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -336(%rbp)
	movq	-320(%rbp), %rax
	movq	%rax, -344(%rbp)
	movq	-336(%rbp), %rsi
	movq	-344(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-320(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-336(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -352(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -360(%rbp)
	movq	-360(%rbp), %rax
	movq	-352(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$1, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_merge4910
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$456, %rsp
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
	movq	$10, %rdi
	callq	oat_alloc_array
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
	subq	$8, %rsp
	movq	%rsp, -64(%rbp)
	movq	$10, %rax
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, -72(%rbp)
	movq	-56(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond4765
	.text
_body4764:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-8(%rbp), %rax
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
	movq	$10, %rdi
	callq	oat_alloc_array
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -120(%rbp)
	subq	$8, %rsp
	movq	%rsp, -128(%rbp)
	movq	$10, %rax
	movq	-128(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, -136(%rbp)
	movq	-120(%rbp), %rax
	movq	-136(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond4782
	.text
_body4781:
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-16(%rbp), %rax
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
	movq	$10, %rax
	imulq	-176(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -192(%rbp)
	movq	-184(%rbp), %rax
	subq	-192(%rbp), %rax
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rax
	movq	-168(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -216(%rbp)
	movq	-216(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond4782
	.text
_body4813:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-40(%rbp), %rax
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
	movq	$10, %rsi
	movq	-256(%rbp), %rdi
	callq	bubble_sort
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -264(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -272(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -280(%rbp)
	movq	-272(%rbp), %rax
	movq	%rax, -288(%rbp)
	movq	-280(%rbp), %rsi
	movq	-288(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-272(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-280(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -296(%rbp)
	movq	-296(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -304(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -312(%rbp)
	movq	-304(%rbp), %rax
	movq	%rax, -320(%rbp)
	movq	-312(%rbp), %rsi
	movq	-320(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-304(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-312(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -328(%rbp)
	movq	-328(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -336(%rbp)
	movq	-264(%rbp), %rax
	addq	-336(%rbp), %rax
	movq	%rax, -344(%rbp)
	movq	-344(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -352(%rbp)
	movq	-352(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -360(%rbp)
	movq	-360(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond4814
	.text
_cond4765:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -368(%rbp)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -376(%rbp)
	movq	-368(%rbp), %rax
	cmpq	-376(%rbp), %rax
	setl	-384(%rbp)
	andq	$1, -384(%rbp)
	cmpq	$0, -384(%rbp)
	jne	_body4764
	jmp	_post4763
	.text
_cond4782:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -392(%rbp)
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -400(%rbp)
	movq	-392(%rbp), %rax
	cmpq	-400(%rbp), %rax
	setl	-408(%rbp)
	andq	$1, -408(%rbp)
	cmpq	$0, -408(%rbp)
	jne	_body4781
	jmp	_post4780
	.text
_cond4814:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -416(%rbp)
	movq	-416(%rbp), %rax
	cmpq	$10, %rax
	setl	-424(%rbp)
	andq	$1, -424(%rbp)
	cmpq	$0, -424(%rbp)
	jne	_body4813
	jmp	_post4812
	.text
_else4842:
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_merge4841:
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_post4763:
	movq	-56(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond4814
	.text
_post4780:
	movq	-120(%rbp), %rax
	movq	-104(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -432(%rbp)
	movq	-432(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -440(%rbp)
	movq	-440(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond4765
	.text
_post4812:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -448(%rbp)
	movq	-448(%rbp), %rax
	cmpq	$405, %rax
	sete	-456(%rbp)
	andq	$1, -456(%rbp)
	cmpq	$0, -456(%rbp)
	jne	_then4843
	jmp	_else4842
	.text
_then4843:
	movq	$1, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	