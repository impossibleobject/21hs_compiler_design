	.text
	.globl	insert
insert:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$696, %rsp
	subq	$8, %rsp
	movq	%rsp, %r11
	subq	$8, %rsp
	movq	%rsp, %r10
	subq	$8, %rsp
	movq	%rsp, %r9 
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
	movq	%rdi, (%r11)
	movq	%rsi, (%r10)
	movq	%rdx, (%r9 )
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	movq	-56(%rbp), %rdi
	callq	oat_alloc_array
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
	subq	$8, %rsp
	movq	%rsp, -80(%rbp)
	movq	-56(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, -88(%rbp)
	movq	-72(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond6347
	.text
_body6346:
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -112(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	movq	-104(%rbp), %rsi
	movq	-112(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r9 
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
	movq	$0, %rax
	movq	-120(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond6347
	.text
_body6368:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -160(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	movq	-152(%rbp), %rsi
	movq	-160(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	-144(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-152(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -168(%rbp)
	movq	$-1, %rax
	movq	-168(%rbp), %rcx
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
	jmp	_cond6369
	.text
_body6405:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -192(%rbp)
	cmpq	$0, -192(%rbp)
	jne	_then6467
	jmp	_else6466
	.text
_cond6347:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -200(%rbp)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -208(%rbp)
	movq	-200(%rbp), %rax
	cmpq	-208(%rbp), %rax
	setl	-216(%rbp)
	andq	$1, -216(%rbp)
	cmpq	$0, -216(%rbp)
	jne	_body6346
	jmp	_post6345
	.text
_cond6369:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -232(%rbp)
	movq	-232(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -240(%rbp)
	movq	-224(%rbp), %rax
	cmpq	-240(%rbp), %rax
	setl	-248(%rbp)
	andq	$1, -248(%rbp)
	cmpq	$0, -248(%rbp)
	jne	_body6368
	jmp	_post6367
	.text
_cond6406:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -256(%rbp)
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -264(%rbp)
	movq	-256(%rbp), %rax
	cmpq	-264(%rbp), %rax
	setl	-272(%rbp)
	andq	$1, -272(%rbp)
	cmpq	$0, -272(%rbp)
	jne	_body6405
	jmp	_post6404
	.text
_else6397:
	jmp	_merge6396
	.text
_else6450:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -280(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -288(%rbp)
	movq	-280(%rbp), %rax
	movq	%rax, -296(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	movq	-288(%rbp), %rsi
	movq	-296(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	-280(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-288(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -304(%rbp)
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -312(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -320(%rbp)
	movq	-312(%rbp), %rax
	movq	%rax, -328(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	movq	-320(%rbp), %rsi
	movq	-328(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	-312(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-320(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -336(%rbp)
	movq	-336(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -344(%rbp)
	movq	-344(%rbp), %rax
	movq	-304(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_merge6449
	.text
_else6466:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -352(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -360(%rbp)
	movq	-360(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -368(%rbp)
	movq	-352(%rbp), %rax
	movq	%rax, -376(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	movq	-368(%rbp), %rsi
	movq	-376(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	-352(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-368(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -384(%rbp)
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -392(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -400(%rbp)
	movq	-392(%rbp), %rax
	movq	%rax, -408(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	movq	-400(%rbp), %rsi
	movq	-408(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	-392(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-400(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -416(%rbp)
	movq	-416(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -424(%rbp)
	movq	-424(%rbp), %rax
	movq	-384(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_merge6465
	.text
_merge6396:
	movq	$0, %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond6406
	.text
_merge6449:
	jmp	_merge6465
	.text
_merge6465:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -432(%rbp)
	movq	-432(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -440(%rbp)
	movq	-440(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond6406
	.text
_post6345:
	movq	-72(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond6369
	.text
_post6367:
	movq	$1, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%r9 , %rax
	movq	(%rax), %rax
	movq	%rax, -448(%rbp)
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -456(%rbp)
	movq	-456(%rbp), %rax
	movq	%rax, -464(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	movq	$0, %rsi
	movq	-464(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	-456(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -472(%rbp)
	movq	-472(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -480(%rbp)
	movq	-448(%rbp), %rax
	cmpq	-480(%rbp), %rax
	setl	-488(%rbp)
	andq	$1, -488(%rbp)
	cmpq	$0, -488(%rbp)
	jne	_then6398
	jmp	_else6397
	.text
_post6404:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	%r11, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then6398:
	movq	$0, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -496(%rbp)
	movq	-496(%rbp), %rax
	movq	%rax, -504(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	movq	$0, %rsi
	movq	-504(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	-496(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -512(%rbp)
	movq	%r9 , %rax
	movq	(%rax), %rax
	movq	%rax, -520(%rbp)
	movq	-520(%rbp), %rax
	movq	-512(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_merge6396
	.text
_then6451:
	movq	$0, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -528(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -536(%rbp)
	movq	-536(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -544(%rbp)
	movq	-528(%rbp), %rax
	movq	%rax, -552(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	movq	-544(%rbp), %rsi
	movq	-552(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	-528(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-544(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -560(%rbp)
	movq	%r9 , %rax
	movq	(%rax), %rax
	movq	%rax, -568(%rbp)
	movq	-568(%rbp), %rax
	movq	-560(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -576(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -584(%rbp)
	movq	-576(%rbp), %rax
	movq	%rax, -592(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	movq	-584(%rbp), %rsi
	movq	-592(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	-576(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-584(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -600(%rbp)
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -608(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -616(%rbp)
	movq	-608(%rbp), %rax
	movq	%rax, -624(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	movq	-616(%rbp), %rsi
	movq	-624(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	-608(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-616(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -632(%rbp)
	movq	-632(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -640(%rbp)
	movq	-640(%rbp), %rax
	movq	-600(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_merge6449
	.text
_then6467:
	movq	%r9 , %rax
	movq	(%rax), %rax
	movq	%rax, -648(%rbp)
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -656(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -664(%rbp)
	movq	-656(%rbp), %rax
	movq	%rax, -672(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	movq	-664(%rbp), %rsi
	movq	-672(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	-656(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-664(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -680(%rbp)
	movq	-680(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -688(%rbp)
	movq	-648(%rbp), %rax
	cmpq	-688(%rbp), %rax
	setg	-696(%rbp)
	andq	$1, -696(%rbp)
	cmpq	$0, -696(%rbp)
	jne	_then6451
	jmp	_else6450
	.text
	.globl	insort
insort:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$200, %rsp
	subq	$8, %rsp
	movq	%rsp, %r11
	subq	$8, %rsp
	movq	%rsp, %r10
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, -16(%rbp)
	movq	%rdi, (%r11)
	movq	%rsi, (%r10)
	pushq	%r11
	pushq	%r10
	movq	$1, %rdi
	callq	oat_alloc_array
	popq	%r10
	popq	%r11
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -40(%rbp)
	movq	$0, %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
	pushq	%r11
	pushq	%r10
	movq	$0, %rsi
	movq	-56(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	-48(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -64(%rbp)
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -80(%rbp)
	pushq	%r11
	pushq	%r10
	movq	$0, %rsi
	movq	-80(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	-72(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$1, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond6310
	.text
_body6309:
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -120(%rbp)
	pushq	%r11
	pushq	%r10
	movq	-112(%rbp), %rsi
	movq	-120(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
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
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)
	pushq	%r11
	pushq	%r10
	movq	-136(%rbp), %rdx
	movq	-144(%rbp), %rsi
	movq	-152(%rbp), %rdi
	callq	insert
	popq	%r10
	popq	%r11
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	movq	-8(%rbp), %rcx
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
	jmp	_cond6310
	.text
_cond6310:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -184(%rbp)
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -192(%rbp)
	movq	-184(%rbp), %rax
	cmpq	-192(%rbp), %rax
	setl	-200(%rbp)
	andq	$1, -200(%rbp)
	cmpq	$0, -200(%rbp)
	jne	_body6309
	jmp	_post6308
	.text
_post6308:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	%r11, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$72, %rsp
	subq	$8, %rsp
	movq	%rsp, %r11
	subq	$8, %rsp
	movq	%rsp, %r10
	pushq	%r11
	pushq	%r10
	movq	$6, %rdi
	callq	oat_alloc_array
	popq	%r10
	popq	%r11
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -24(%rbp)
	movq	$13, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, -32(%rbp)
	movq	$42, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$16, %rax
	movq	%rax, -40(%rbp)
	movq	$32, %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$24, %rax
	movq	%rax, -48(%rbp)
	movq	$3, %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$32, %rax
	movq	%rax, -56(%rbp)
	movq	$2, %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$40, %rax
	movq	%rax, -64(%rbp)
	movq	$6, %rax
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	%r11, %rcx
	movq	%rax, (%rcx)
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	pushq	%r10
	movq	$6, %rsi
	movq	-72(%rbp), %rdi
	callq	insort
	popq	%r10
	movq	%rax, %r11
	movq	%r11, (%r10)
	movq	(%r10), %r11
	movq	%r11, %rax
	movq	%rax, %r10
	pushq	%r11
	pushq	%r10
	movq	$5, %rsi
	movq	%r10, %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	%r11, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$40, %rax
	movq	%rax, %r10
	movq	(%r10), %r11
	movq	%r11, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	