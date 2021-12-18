	.text
	.globl	f
f:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	subq	$8, %rsp
	movq	%rsp, %r11
	movq	%rdi, (%r11)
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %r11
	pushq	%r11
	movq	$1, %rsi
	movq	%r11, %rdi
	callq	oat_assert_array_length
	popq	%r11
	movq	-8(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, %r11
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %r11
	pushq	%r11
	movq	$1, %rsi
	movq	%r11, %rdi
	callq	oat_assert_array_length
	popq	%r11
	movq	-16(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, %r11
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	g
g:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$272, %rsp
	subq	$8, %rsp
	movq	%rsp, %r11
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, -16(%rbp)
	subq	$8, %rsp
	movq	%rsp, -24(%rbp)
	movq	%rdi, (%r11)
	pushq	%r11
	movq	$3, %rdi
	callq	oat_alloc_array
	popq	%r11
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
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond1571
	.text
_body1570:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -80(%rbp)
	pushq	%r11
	movq	-72(%rbp), %rsi
	movq	-80(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r11
	movq	-64(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-72(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -88(%rbp)
	pushq	%r11
	movq	$3, %rdi
	callq	oat_alloc_array
	popq	%r11
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -104(%rbp)
	subq	$8, %rsp
	movq	%rsp, -112(%rbp)
	movq	$3, %rax
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, -120(%rbp)
	movq	-104(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond1588
	.text
_body1587:
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -144(%rbp)
	pushq	%r11
	movq	-136(%rbp), %rsi
	movq	-144(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r11
	movq	-128(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-136(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -152(%rbp)
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond1588
	.text
_cond1571:
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
	jne	_body1570
	jmp	_post1569
	.text
_cond1588:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -208(%rbp)
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -216(%rbp)
	movq	-208(%rbp), %rax
	cmpq	-216(%rbp), %rax
	setl	-224(%rbp)
	andq	$1, -224(%rbp)
	cmpq	$0, -224(%rbp)
	jne	_body1587
	jmp	_post1586
	.text
_post1569:
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	%r11, %rax
	movq	%rax, -232(%rbp)
	pushq	%r11
	movq	$1, %rsi
	movq	-232(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r11
	movq	%r11, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, -240(%rbp)
	movq	-240(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	%r11, %rax
	movq	%rax, -248(%rbp)
	pushq	%r11
	movq	$1, %rsi
	movq	-248(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r11
	movq	%r11, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, -256(%rbp)
	movq	-256(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	%r11, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_post1586:
	movq	-104(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -264(%rbp)
	movq	-264(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -272(%rbp)
	movq	-272(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond1571
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$752, %rsp
	subq	$8, %rsp
	movq	%rsp, %r11
	subq	$8, %rsp
	movq	%rsp, %r10
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
	pushq	%r11
	pushq	%r10
	movq	$3, %rdi
	callq	oat_alloc_array
	popq	%r10
	popq	%r11
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
	subq	$8, %rsp
	movq	%rsp, -80(%rbp)
	movq	$3, %rax
	movq	-80(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, -88(%rbp)
	movq	-72(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	%r11, %rcx
	movq	%rax, (%rcx)
	jmp	_cond1393
	.text
_body1392:
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -112(%rbp)
	pushq	%r11
	pushq	%r10
	movq	-104(%rbp), %rsi
	movq	-112(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	-96(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-104(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -120(%rbp)
	pushq	%r11
	pushq	%r10
	movq	$3, %rdi
	callq	oat_alloc_array
	popq	%r10
	popq	%r11
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -136(%rbp)
	subq	$8, %rsp
	movq	%rsp, -144(%rbp)
	movq	$3, %rax
	movq	-144(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, -152(%rbp)
	movq	-136(%rbp), %rax
	movq	-152(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	%r10, %rcx
	movq	%rax, (%rcx)
	jmp	_cond1410
	.text
_body1409:
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -176(%rbp)
	pushq	%r11
	pushq	%r10
	movq	-168(%rbp), %rsi
	movq	-176(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	-160(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-168(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -184(%rbp)
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	movq	-184(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rax
	movq	%r10, %rcx
	movq	%rax, (%rcx)
	jmp	_cond1410
	.text
_body1441:
	movq	-648(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -216(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-216(%rbp), %rax
	movq	%rax, -232(%rbp)
	movq	-224(%rbp), %rsi
	movq	-232(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-216(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-224(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -240(%rbp)
	movq	$5, %rdi
	callq	oat_alloc_array
	movq	%rax, -248(%rbp)
	movq	-248(%rbp), %rax
	movq	%rax, -256(%rbp)
	subq	$8, %rsp
	movq	%rsp, -264(%rbp)
	movq	$5, %rax
	movq	-264(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, -272(%rbp)
	movq	-256(%rbp), %rax
	movq	-272(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond1459
	.text
_body1458:
	movq	-272(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -280(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -288(%rbp)
	movq	-280(%rbp), %rax
	movq	%rax, -296(%rbp)
	movq	-288(%rbp), %rsi
	movq	-296(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-280(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-288(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -304(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -312(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -320(%rbp)
	movq	-312(%rbp), %rax
	imulq	-320(%rbp), %rax
	movq	%rax, -328(%rbp)
	movq	-328(%rbp), %rax
	movq	-304(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -336(%rbp)
	movq	-336(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -344(%rbp)
	movq	-344(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond1459
	.text
_body1492:
	movq	-672(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -352(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -360(%rbp)
	movq	-352(%rbp), %rax
	movq	%rax, -368(%rbp)
	pushq	%r11
	pushq	%r10
	movq	-360(%rbp), %rsi
	movq	-368(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	-352(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-360(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -376(%rbp)
	pushq	%r11
	pushq	%r10
	movq	$3, %rdi
	callq	oat_alloc_array
	popq	%r10
	popq	%r11
	movq	%rax, -384(%rbp)
	movq	-384(%rbp), %rax
	movq	%rax, -392(%rbp)
	subq	$8, %rsp
	movq	%rsp, -400(%rbp)
	movq	$3, %rax
	movq	-400(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, -408(%rbp)
	movq	-392(%rbp), %rax
	movq	-408(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond1510
	.text
_body1509:
	movq	-408(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -416(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -424(%rbp)
	movq	-416(%rbp), %rax
	movq	%rax, -432(%rbp)
	pushq	%r11
	pushq	%r10
	movq	-424(%rbp), %rsi
	movq	-432(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	-416(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-424(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -440(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -448(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -456(%rbp)
	movq	-448(%rbp), %rax
	imulq	-456(%rbp), %rax
	movq	%rax, -464(%rbp)
	movq	-464(%rbp), %rax
	movq	-440(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -472(%rbp)
	movq	-472(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -480(%rbp)
	movq	-480(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond1510
	.text
_cond1393:
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -488(%rbp)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -496(%rbp)
	movq	-488(%rbp), %rax
	cmpq	-496(%rbp), %rax
	setl	-504(%rbp)
	andq	$1, -504(%rbp)
	cmpq	$0, -504(%rbp)
	jne	_body1392
	jmp	_post1391
	.text
_cond1410:
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -512(%rbp)
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -520(%rbp)
	movq	-512(%rbp), %rax
	cmpq	-520(%rbp), %rax
	setl	-528(%rbp)
	andq	$1, -528(%rbp)
	cmpq	$0, -528(%rbp)
	jne	_body1409
	jmp	_post1408
	.text
_cond1442:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -536(%rbp)
	movq	-640(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -544(%rbp)
	movq	-536(%rbp), %rax
	cmpq	-544(%rbp), %rax
	setl	-552(%rbp)
	andq	$1, -552(%rbp)
	cmpq	$0, -552(%rbp)
	jne	_body1441
	jmp	_post1440
	.text
_cond1459:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -560(%rbp)
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -568(%rbp)
	movq	-560(%rbp), %rax
	cmpq	-568(%rbp), %rax
	setl	-576(%rbp)
	andq	$1, -576(%rbp)
	cmpq	$0, -576(%rbp)
	jne	_body1458
	jmp	_post1457
	.text
_cond1493:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -584(%rbp)
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -592(%rbp)
	movq	-584(%rbp), %rax
	cmpq	-592(%rbp), %rax
	setl	-600(%rbp)
	andq	$1, -600(%rbp)
	cmpq	$0, -600(%rbp)
	jne	_body1492
	jmp	_post1491
	.text
_cond1510:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -608(%rbp)
	movq	-400(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -616(%rbp)
	movq	-608(%rbp), %rax
	cmpq	-616(%rbp), %rax
	setl	-624(%rbp)
	andq	$1, -624(%rbp)
	cmpq	$0, -624(%rbp)
	jne	_body1509
	jmp	_post1508
	.text
_post1391:
	movq	-72(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$4, %rdi
	callq	oat_alloc_array
	movq	%rax, %r11
	movq	%r11, %rax
	movq	%rax, -632(%rbp)
	subq	$8, %rsp
	movq	%rsp, -640(%rbp)
	movq	$4, %rax
	movq	-640(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, -648(%rbp)
	movq	-632(%rbp), %rax
	movq	-648(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond1442
	.text
_post1408:
	movq	-136(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -656(%rbp)
	movq	-656(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -664(%rbp)
	movq	-664(%rbp), %rax
	movq	%r11, %rcx
	movq	%rax, (%rcx)
	jmp	_cond1393
	.text
_post1440:
	movq	-632(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$3, %rdi
	callq	oat_alloc_array
	movq	%rax, %r11
	movq	%r11, %rax
	movq	%rax, %r10
	subq	$8, %rsp
	movq	%rsp, %r11
	movq	$3, %rax
	movq	%r11, %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, -672(%rbp)
	movq	%r10, %rax
	movq	-672(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond1493
	.text
_post1457:
	movq	-256(%rbp), %rax
	movq	-240(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -680(%rbp)
	movq	-680(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -688(%rbp)
	movq	-688(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond1442
	.text
_post1491:
	movq	%r10, %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r10
	movq	%r10, %rax
	movq	%rax, %r11
	pushq	%r11
	pushq	%r10
	movq	$3, %rsi
	movq	%r11, %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	%r10, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$24, %rax
	movq	%rax, %r11
	movq	(%r11), %r10
	movq	%r10, %rax
	movq	%rax, %r11
	pushq	%r11
	pushq	%r10
	movq	$4, %rsi
	movq	%r11, %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	%r10, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$32, %rax
	movq	%rax, %r11
	movq	(%r11), %r10
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	%r11, %rax
	movq	%rax, -696(%rbp)
	pushq	%r11
	pushq	%r10
	movq	$1, %rsi
	movq	-696(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	%r11, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, -704(%rbp)
	movq	-704(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	%r11, %rax
	movq	%rax, -712(%rbp)
	pushq	%r11
	pushq	%r10
	movq	$2, %rsi
	movq	-712(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	%r11, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$16, %rax
	movq	%rax, -720(%rbp)
	movq	-720(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	%r10, %rax
	addq	%r11, %rax
	movq	%rax, -728(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r10
	pushq	%r10
	movq	%r10, %rdi
	callq	f
	popq	%r10
	movq	%rax, %r11
	movq	-728(%rbp), %r10
	addq	%r11, %r10
	pushq	%r10
	movq	$4, %rdi
	callq	g
	popq	%r10
	movq	%rax, %r11
	movq	%r10, %rax
	addq	%r11, %rax
	movq	%rax, -736(%rbp)
	movq	-736(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_post1508:
	movq	-392(%rbp), %rax
	movq	-376(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -744(%rbp)
	movq	-744(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -752(%rbp)
	movq	-752(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond1493