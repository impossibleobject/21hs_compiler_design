	.text
	.globl	insert
insert:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$728, %rsp
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
	subq	$8, %rsp
	movq	%rsp, -56(%rbp)
	subq	$8, %rsp
	movq	%rsp, -64(%rbp)
	movq	%rdi, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%rsi, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%rdx, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	callq	oat_alloc_array
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -96(%rbp)
	subq	$8, %rsp
	movq	%rsp, -104(%rbp)
	movq	-80(%rbp), %rax
	movq	-104(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, -112(%rbp)
	movq	-96(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond6347
	.text
_body6346:
	movq	-112(%rbp), %rax
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
	movq	$0, %rax
	movq	-144(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond6347
	.text
_body6368:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	-176(%rbp), %rsi
	movq	-184(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-168(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-176(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -192(%rbp)
	movq	$-1, %rax
	movq	-192(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond6369
	.text
_body6405:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -216(%rbp)
	cmpq	$0, -216(%rbp)
	jne	_then6467
	jmp	_else6466
	.text
_cond6347:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -232(%rbp)
	movq	-224(%rbp), %rax
	cmpq	-232(%rbp), %rax
	setl	-240(%rbp)
	andq	$1, -240(%rbp)
	cmpq	$0, -240(%rbp)
	jne	_body6346
	jmp	_post6345
	.text
_cond6369:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -248(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -256(%rbp)
	movq	-256(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -264(%rbp)
	movq	-248(%rbp), %rax
	cmpq	-264(%rbp), %rax
	setl	-272(%rbp)
	andq	$1, -272(%rbp)
	cmpq	$0, -272(%rbp)
	jne	_body6368
	jmp	_post6367
	.text
_cond6406:
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -280(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -288(%rbp)
	movq	-280(%rbp), %rax
	cmpq	-288(%rbp), %rax
	setl	-296(%rbp)
	andq	$1, -296(%rbp)
	cmpq	$0, -296(%rbp)
	jne	_body6405
	jmp	_post6404
	.text
_else6397:
	jmp	_merge6396
	.text
_else6450:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -304(%rbp)
	movq	-64(%rbp), %rax
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
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -336(%rbp)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -344(%rbp)
	movq	-336(%rbp), %rax
	movq	%rax, -352(%rbp)
	movq	-344(%rbp), %rsi
	movq	-352(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-336(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-344(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -360(%rbp)
	movq	-360(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -368(%rbp)
	movq	-368(%rbp), %rax
	movq	-328(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_merge6449
	.text
_else6466:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -376(%rbp)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -384(%rbp)
	movq	-384(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -392(%rbp)
	movq	-376(%rbp), %rax
	movq	%rax, -400(%rbp)
	movq	-392(%rbp), %rsi
	movq	-400(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-376(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-392(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -408(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -416(%rbp)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -424(%rbp)
	movq	-416(%rbp), %rax
	movq	%rax, -432(%rbp)
	movq	-424(%rbp), %rsi
	movq	-432(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-416(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-424(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -440(%rbp)
	movq	-440(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -448(%rbp)
	movq	-448(%rbp), %rax
	movq	-408(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_merge6465
	.text
_merge6396:
	movq	$0, %rax
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond6406
	.text
_merge6449:
	jmp	_merge6465
	.text
_merge6465:
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -456(%rbp)
	movq	-456(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -464(%rbp)
	movq	-464(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond6406
	.text
_post6345:
	movq	-96(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond6369
	.text
_post6367:
	movq	$1, %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -472(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -480(%rbp)
	movq	-480(%rbp), %rax
	movq	%rax, -488(%rbp)
	movq	$0, %rsi
	movq	-488(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-480(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -496(%rbp)
	movq	-496(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -504(%rbp)
	movq	-472(%rbp), %rax
	cmpq	-504(%rbp), %rax
	setl	-512(%rbp)
	andq	$1, -512(%rbp)
	cmpq	$0, -512(%rbp)
	jne	_then6398
	jmp	_else6397
	.text
_post6404:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -520(%rbp)
	movq	-520(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then6398:
	movq	$0, %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -528(%rbp)
	movq	-528(%rbp), %rax
	movq	%rax, -536(%rbp)
	movq	$0, %rsi
	movq	-536(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-528(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -544(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -552(%rbp)
	movq	-552(%rbp), %rax
	movq	-544(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_merge6396
	.text
_then6451:
	movq	$0, %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -560(%rbp)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -568(%rbp)
	movq	-568(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -576(%rbp)
	movq	-560(%rbp), %rax
	movq	%rax, -584(%rbp)
	movq	-576(%rbp), %rsi
	movq	-584(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-560(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-576(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -592(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -600(%rbp)
	movq	-600(%rbp), %rax
	movq	-592(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -608(%rbp)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -616(%rbp)
	movq	-608(%rbp), %rax
	movq	%rax, -624(%rbp)
	movq	-616(%rbp), %rsi
	movq	-624(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-608(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-616(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -632(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -640(%rbp)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -648(%rbp)
	movq	-640(%rbp), %rax
	movq	%rax, -656(%rbp)
	movq	-648(%rbp), %rsi
	movq	-656(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-640(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-648(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -664(%rbp)
	movq	-664(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -672(%rbp)
	movq	-672(%rbp), %rax
	movq	-632(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_merge6449
	.text
_then6467:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -680(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -688(%rbp)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -696(%rbp)
	movq	-688(%rbp), %rax
	movq	%rax, -704(%rbp)
	movq	-696(%rbp), %rsi
	movq	-704(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-688(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-696(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -712(%rbp)
	movq	-712(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -720(%rbp)
	movq	-680(%rbp), %rax
	cmpq	-720(%rbp), %rax
	setg	-728(%rbp)
	andq	$1, -728(%rbp)
	cmpq	$0, -728(%rbp)
	jne	_then6451
	jmp	_else6450
	.text
	.globl	insort
insort:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$224, %rsp
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
	movq	$1, %rdi
	callq	oat_alloc_array
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -56(%rbp)
	movq	$0, %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	$0, %rsi
	movq	-72(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-64(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -80(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	$0, %rsi
	movq	-96(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-88(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$1, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond6310
	.text
_body6309:
	movq	-8(%rbp), %rax
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
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-152(%rbp), %rdx
	movq	-160(%rbp), %rsi
	movq	-168(%rbp), %rdi
	callq	insert
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond6310
	.text
_cond6310:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -200(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -208(%rbp)
	movq	-200(%rbp), %rax
	cmpq	-208(%rbp), %rax
	setl	-216(%rbp)
	andq	$1, -216(%rbp)
	cmpq	$0, -216(%rbp)
	jne	_body6309
	jmp	_post6308
	.text
_post6308:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$128, %rsp
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, -16(%rbp)
	movq	$6, %rdi
	callq	oat_alloc_array
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -40(%rbp)
	movq	$13, %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, -48(%rbp)
	movq	$42, %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$16, %rax
	movq	%rax, -56(%rbp)
	movq	$32, %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$24, %rax
	movq	%rax, -64(%rbp)
	movq	$3, %rax
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$32, %rax
	movq	%rax, -72(%rbp)
	movq	$2, %rax
	movq	-72(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$40, %rax
	movq	%rax, -80(%rbp)
	movq	$6, %rax
	movq	-80(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	$6, %rsi
	movq	-88(%rbp), %rdi
	callq	insort
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	$5, %rsi
	movq	-112(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-104(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$40, %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	