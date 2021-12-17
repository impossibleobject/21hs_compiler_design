	.text
	.globl	maxsum
maxsum:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$760, %rsp
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
	movq	%rdi, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%rsi, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	oat_alloc_array
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -80(%rbp)
	subq	$8, %rsp
	movq	%rsp, -88(%rbp)
	movq	-64(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, -96(%rbp)
	movq	-80(%rbp), %rax
	movq	-96(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond6519
	.text
_body6518:
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-24(%rbp), %rax
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
	movq	$0, %rax
	movq	-128(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond6519
	.text
_body6551:
	movq	$0, %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond6560
	.text
_body6559:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)
	movq	-48(%rbp), %rax
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
	movq	-56(%rbp), %rax
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
	movq	-184(%rbp), %rax
	cmpq	-224(%rbp), %rax
	setg	-232(%rbp)
	andq	$1, -232(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -240(%rbp)
	movq	-48(%rbp), %rax
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
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -272(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -280(%rbp)
	movq	-56(%rbp), %rax
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
	movq	-304(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -312(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -320(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -328(%rbp)
	movq	-320(%rbp), %rax
	movq	%rax, -336(%rbp)
	movq	-328(%rbp), %rsi
	movq	-336(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-320(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-328(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -344(%rbp)
	movq	-344(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -352(%rbp)
	movq	-312(%rbp), %rax
	addq	-352(%rbp), %rax
	movq	%rax, -360(%rbp)
	movq	-272(%rbp), %rax
	cmpq	-360(%rbp), %rax
	setl	-368(%rbp)
	andq	$1, -368(%rbp)
	movq	-232(%rbp), %rax
	andq	-368(%rbp), %rax
	movq	%rax, -376(%rbp)
	cmpq	$0, -376(%rbp)
	jne	_then6616
	jmp	_else6615
	.text
_cond6519:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -384(%rbp)
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -392(%rbp)
	movq	-384(%rbp), %rax
	cmpq	-392(%rbp), %rax
	setl	-400(%rbp)
	andq	$1, -400(%rbp)
	cmpq	$0, -400(%rbp)
	jne	_body6518
	jmp	_post6517
	.text
_cond6552:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -408(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -416(%rbp)
	movq	-408(%rbp), %rax
	cmpq	-416(%rbp), %rax
	setl	-424(%rbp)
	andq	$1, -424(%rbp)
	cmpq	$0, -424(%rbp)
	jne	_body6551
	jmp	_post6550
	.text
_cond6560:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -432(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -440(%rbp)
	movq	-432(%rbp), %rax
	cmpq	-440(%rbp), %rax
	setl	-448(%rbp)
	andq	$1, -448(%rbp)
	cmpq	$0, -448(%rbp)
	jne	_body6559
	jmp	_post6558
	.text
_else6615:
	jmp	_merge6614
	.text
_else6636:
	jmp	_merge6635
	.text
_merge6614:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -456(%rbp)
	movq	-456(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -464(%rbp)
	movq	-464(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond6560
	.text
_merge6635:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -472(%rbp)
	movq	-472(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -480(%rbp)
	movq	-480(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond6552
	.text
_post6517:
	movq	-80(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -488(%rbp)
	movq	-488(%rbp), %rax
	movq	%rax, -496(%rbp)
	movq	$0, %rsi
	movq	-496(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-488(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -504(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -512(%rbp)
	movq	-512(%rbp), %rax
	movq	%rax, -520(%rbp)
	movq	$0, %rsi
	movq	-520(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-512(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -528(%rbp)
	movq	-528(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -536(%rbp)
	movq	-536(%rbp), %rax
	movq	-504(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond6552
	.text
_post6550:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -544(%rbp)
	movq	-544(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_post6558:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -552(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -560(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -568(%rbp)
	movq	-560(%rbp), %rax
	movq	%rax, -576(%rbp)
	movq	-568(%rbp), %rsi
	movq	-576(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-560(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-568(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -584(%rbp)
	movq	-584(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -592(%rbp)
	movq	-552(%rbp), %rax
	cmpq	-592(%rbp), %rax
	setl	-600(%rbp)
	andq	$1, -600(%rbp)
	cmpq	$0, -600(%rbp)
	jne	_then6637
	jmp	_else6636
	.text
_then6616:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -608(%rbp)
	movq	-48(%rbp), %rax
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
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -640(%rbp)
	movq	-56(%rbp), %rax
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
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -680(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -688(%rbp)
	movq	-680(%rbp), %rax
	movq	%rax, -696(%rbp)
	movq	-688(%rbp), %rsi
	movq	-696(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-680(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-688(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -704(%rbp)
	movq	-704(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -712(%rbp)
	movq	-672(%rbp), %rax
	addq	-712(%rbp), %rax
	movq	%rax, -720(%rbp)
	movq	-720(%rbp), %rax
	movq	-632(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_merge6614
	.text
_then6637:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -728(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -736(%rbp)
	movq	-728(%rbp), %rax
	movq	%rax, -744(%rbp)
	movq	-736(%rbp), %rsi
	movq	-744(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-728(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-736(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -752(%rbp)
	movq	-752(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -760(%rbp)
	movq	-760(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_merge6635
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$112, %rsp
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, -16(%rbp)
	movq	$7, %rdi
	callq	oat_alloc_array
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -40(%rbp)
	movq	$1, %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, -48(%rbp)
	movq	$101, %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$16, %rax
	movq	%rax, -56(%rbp)
	movq	$2, %rax
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
	movq	$101, %rax
	movq	-72(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$40, %rax
	movq	%rax, -80(%rbp)
	movq	$4, %rax
	movq	-80(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$48, %rax
	movq	%rax, -88(%rbp)
	movq	$5, %rax
	movq	-88(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	$7, %rsi
	movq	-96(%rbp), %rdi
	callq	maxsum
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	