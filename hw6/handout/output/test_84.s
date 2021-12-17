	.text
	.globl	f
f:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	movq	%rdi, %rax
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
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	$1, %rsi
	movq	-48(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-40(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	g
g:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$304, %rsp
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
	movq	$3, %rdi
	callq	oat_alloc_array
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	subq	$8, %rsp
	movq	%rsp, -56(%rbp)
	movq	$3, %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond1571
	.text
_body1570:
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-16(%rbp), %rax
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
	movq	$3, %rdi
	callq	oat_alloc_array
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -112(%rbp)
	subq	$8, %rsp
	movq	%rsp, -120(%rbp)
	movq	$3, %rax
	movq	-120(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, -128(%rbp)
	movq	-112(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond1588
	.text
_body1587:
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -152(%rbp)
	movq	-144(%rbp), %rsi
	movq	-152(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-136(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-144(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -160(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	movq	-160(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond1588
	.text
_cond1571:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -192(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -200(%rbp)
	movq	-192(%rbp), %rax
	cmpq	-200(%rbp), %rax
	setl	-208(%rbp)
	andq	$1, -208(%rbp)
	cmpq	$0, -208(%rbp)
	jne	_body1570
	jmp	_post1569
	.text
_cond1588:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -216(%rbp)
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-216(%rbp), %rax
	cmpq	-224(%rbp), %rax
	setl	-232(%rbp)
	andq	$1, -232(%rbp)
	cmpq	$0, -232(%rbp)
	jne	_body1587
	jmp	_post1586
	.text
_post1569:
	movq	-48(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
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
	movq	-256(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -264(%rbp)
	movq	-264(%rbp), %rax
	movq	%rax, -272(%rbp)
	movq	$1, %rsi
	movq	-272(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-264(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, -280(%rbp)
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -288(%rbp)
	movq	-288(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_post1586:
	movq	-112(%rbp), %rax
	movq	-96(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -296(%rbp)
	movq	-296(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -304(%rbp)
	movq	-304(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond1571
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$912, %rsp
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
	subq	$8, %rsp
	movq	%rsp, -72(%rbp)
	movq	$3, %rdi
	callq	oat_alloc_array
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -88(%rbp)
	subq	$8, %rsp
	movq	%rsp, -96(%rbp)
	movq	$3, %rax
	movq	-96(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, -104(%rbp)
	movq	-88(%rbp), %rax
	movq	-104(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond1393
	.text
_body1392:
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-8(%rbp), %rax
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
	movq	$3, %rdi
	callq	oat_alloc_array
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -152(%rbp)
	subq	$8, %rsp
	movq	%rsp, -160(%rbp)
	movq	$3, %rax
	movq	-160(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, -168(%rbp)
	movq	-152(%rbp), %rax
	movq	-168(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond1410
	.text
_body1409:
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-16(%rbp), %rax
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
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rax
	movq	-200(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -216(%rbp)
	movq	-216(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond1410
	.text
_body1441:
	movq	-672(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -232(%rbp)
	movq	-32(%rbp), %rax
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
	movq	$5, %rdi
	callq	oat_alloc_array
	movq	%rax, -264(%rbp)
	movq	-264(%rbp), %rax
	movq	%rax, -272(%rbp)
	subq	$8, %rsp
	movq	%rsp, -280(%rbp)
	movq	$5, %rax
	movq	-280(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, -288(%rbp)
	movq	-272(%rbp), %rax
	movq	-288(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond1459
	.text
_body1458:
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
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -328(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -336(%rbp)
	movq	-328(%rbp), %rax
	imulq	-336(%rbp), %rax
	movq	%rax, -344(%rbp)
	movq	-344(%rbp), %rax
	movq	-320(%rbp), %rcx
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
	jmp	_cond1459
	.text
_body1492:
	movq	-720(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -368(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -376(%rbp)
	movq	-368(%rbp), %rax
	movq	%rax, -384(%rbp)
	movq	-376(%rbp), %rsi
	movq	-384(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-368(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-376(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -392(%rbp)
	movq	$3, %rdi
	callq	oat_alloc_array
	movq	%rax, -400(%rbp)
	movq	-400(%rbp), %rax
	movq	%rax, -408(%rbp)
	subq	$8, %rsp
	movq	%rsp, -416(%rbp)
	movq	$3, %rax
	movq	-416(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, -424(%rbp)
	movq	-408(%rbp), %rax
	movq	-424(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond1510
	.text
_body1509:
	movq	-424(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -432(%rbp)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -440(%rbp)
	movq	-432(%rbp), %rax
	movq	%rax, -448(%rbp)
	movq	-440(%rbp), %rsi
	movq	-448(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-432(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-440(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -456(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -464(%rbp)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -472(%rbp)
	movq	-464(%rbp), %rax
	imulq	-472(%rbp), %rax
	movq	%rax, -480(%rbp)
	movq	-480(%rbp), %rax
	movq	-456(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -488(%rbp)
	movq	-488(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -496(%rbp)
	movq	-496(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond1510
	.text
_cond1393:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -504(%rbp)
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -512(%rbp)
	movq	-504(%rbp), %rax
	cmpq	-512(%rbp), %rax
	setl	-520(%rbp)
	andq	$1, -520(%rbp)
	cmpq	$0, -520(%rbp)
	jne	_body1392
	jmp	_post1391
	.text
_cond1410:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -528(%rbp)
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -536(%rbp)
	movq	-528(%rbp), %rax
	cmpq	-536(%rbp), %rax
	setl	-544(%rbp)
	andq	$1, -544(%rbp)
	cmpq	$0, -544(%rbp)
	jne	_body1409
	jmp	_post1408
	.text
_cond1442:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -552(%rbp)
	movq	-664(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -560(%rbp)
	movq	-552(%rbp), %rax
	cmpq	-560(%rbp), %rax
	setl	-568(%rbp)
	andq	$1, -568(%rbp)
	cmpq	$0, -568(%rbp)
	jne	_body1441
	jmp	_post1440
	.text
_cond1459:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -576(%rbp)
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -584(%rbp)
	movq	-576(%rbp), %rax
	cmpq	-584(%rbp), %rax
	setl	-592(%rbp)
	andq	$1, -592(%rbp)
	cmpq	$0, -592(%rbp)
	jne	_body1458
	jmp	_post1457
	.text
_cond1493:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -600(%rbp)
	movq	-712(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -608(%rbp)
	movq	-600(%rbp), %rax
	cmpq	-608(%rbp), %rax
	setl	-616(%rbp)
	andq	$1, -616(%rbp)
	cmpq	$0, -616(%rbp)
	jne	_body1492
	jmp	_post1491
	.text
_cond1510:
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -624(%rbp)
	movq	-416(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -632(%rbp)
	movq	-624(%rbp), %rax
	cmpq	-632(%rbp), %rax
	setl	-640(%rbp)
	andq	$1, -640(%rbp)
	cmpq	$0, -640(%rbp)
	jne	_body1509
	jmp	_post1508
	.text
_post1391:
	movq	-88(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$4, %rdi
	callq	oat_alloc_array
	movq	%rax, -648(%rbp)
	movq	-648(%rbp), %rax
	movq	%rax, -656(%rbp)
	subq	$8, %rsp
	movq	%rsp, -664(%rbp)
	movq	$4, %rax
	movq	-664(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, -672(%rbp)
	movq	-656(%rbp), %rax
	movq	-672(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond1442
	.text
_post1408:
	movq	-152(%rbp), %rax
	movq	-136(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -680(%rbp)
	movq	-680(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -688(%rbp)
	movq	-688(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond1393
	.text
_post1440:
	movq	-656(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$3, %rdi
	callq	oat_alloc_array
	movq	%rax, -696(%rbp)
	movq	-696(%rbp), %rax
	movq	%rax, -704(%rbp)
	subq	$8, %rsp
	movq	%rsp, -712(%rbp)
	movq	$3, %rax
	movq	-712(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, -720(%rbp)
	movq	-704(%rbp), %rax
	movq	-720(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond1493
	.text
_post1457:
	movq	-272(%rbp), %rax
	movq	-256(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -728(%rbp)
	movq	-728(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -736(%rbp)
	movq	-736(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond1442
	.text
_post1491:
	movq	-704(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -744(%rbp)
	movq	-744(%rbp), %rax
	movq	%rax, -752(%rbp)
	movq	$3, %rsi
	movq	-752(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-744(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$24, %rax
	movq	%rax, -760(%rbp)
	movq	-760(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -768(%rbp)
	movq	-768(%rbp), %rax
	movq	%rax, -776(%rbp)
	movq	$4, %rsi
	movq	-776(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-768(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$32, %rax
	movq	%rax, -784(%rbp)
	movq	-784(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -792(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -800(%rbp)
	movq	-800(%rbp), %rax
	movq	%rax, -808(%rbp)
	movq	$1, %rsi
	movq	-808(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-800(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, -816(%rbp)
	movq	-816(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -824(%rbp)
	movq	-824(%rbp), %rax
	movq	%rax, -832(%rbp)
	movq	$2, %rsi
	movq	-832(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-824(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$16, %rax
	movq	%rax, -840(%rbp)
	movq	-840(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -848(%rbp)
	movq	-792(%rbp), %rax
	addq	-848(%rbp), %rax
	movq	%rax, -856(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -864(%rbp)
	movq	-864(%rbp), %rdi
	callq	f
	movq	%rax, -872(%rbp)
	movq	-856(%rbp), %rax
	addq	-872(%rbp), %rax
	movq	%rax, -880(%rbp)
	movq	$4, %rdi
	callq	g
	movq	%rax, -888(%rbp)
	movq	-880(%rbp), %rax
	addq	-888(%rbp), %rax
	movq	%rax, -896(%rbp)
	movq	-896(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_post1508:
	movq	-408(%rbp), %rax
	movq	-392(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -904(%rbp)
	movq	-904(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -912(%rbp)
	movq	-912(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond1493