	.text
	.globl	maxsum
maxsum:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$736, %rsp
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
	movq	%rdi, (%r11)
	movq	%rsi, (%r10)
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	pushq	%r11
	pushq	%r10
	movq	-48(%rbp), %rdi
	callq	oat_alloc_array
	popq	%r10
	popq	%r11
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
	subq	$8, %rsp
	movq	%rsp, -72(%rbp)
	movq	-48(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, -80(%rbp)
	movq	-64(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond6519
	.text
_body6518:
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -104(%rbp)
	pushq	%r11
	pushq	%r10
	movq	-96(%rbp), %rsi
	movq	-104(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	-88(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-96(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -112(%rbp)
	movq	$0, %rax
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond6519
	.text
_body6551:
	movq	$0, %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond6560
	.text
_body6559:
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -152(%rbp)
	pushq	%r11
	pushq	%r10
	movq	-144(%rbp), %rsi
	movq	-152(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	-136(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-144(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -184(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	pushq	%r11
	pushq	%r10
	movq	-184(%rbp), %rsi
	movq	-192(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
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
	movq	-168(%rbp), %rax
	cmpq	-208(%rbp), %rax
	setg	-216(%rbp)
	andq	$1, -216(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -232(%rbp)
	movq	-224(%rbp), %rax
	movq	%rax, -240(%rbp)
	pushq	%r11
	pushq	%r10
	movq	-232(%rbp), %rsi
	movq	-240(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
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
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -272(%rbp)
	movq	-264(%rbp), %rax
	movq	%rax, -280(%rbp)
	pushq	%r11
	pushq	%r10
	movq	-272(%rbp), %rsi
	movq	-280(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
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
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -304(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -312(%rbp)
	movq	-304(%rbp), %rax
	movq	%rax, -320(%rbp)
	pushq	%r11
	pushq	%r10
	movq	-312(%rbp), %rsi
	movq	-320(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
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
	movq	-296(%rbp), %rax
	addq	-336(%rbp), %rax
	movq	%rax, -344(%rbp)
	movq	-256(%rbp), %rax
	cmpq	-344(%rbp), %rax
	setl	-352(%rbp)
	andq	$1, -352(%rbp)
	movq	-216(%rbp), %rax
	andq	-352(%rbp), %rax
	movq	%rax, -360(%rbp)
	cmpq	$0, -360(%rbp)
	jne	_then6616
	jmp	_else6615
	.text
_cond6519:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -368(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -376(%rbp)
	movq	-368(%rbp), %rax
	cmpq	-376(%rbp), %rax
	setl	-384(%rbp)
	andq	$1, -384(%rbp)
	cmpq	$0, -384(%rbp)
	jne	_body6518
	jmp	_post6517
	.text
_cond6552:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -392(%rbp)
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -400(%rbp)
	movq	-392(%rbp), %rax
	cmpq	-400(%rbp), %rax
	setl	-408(%rbp)
	andq	$1, -408(%rbp)
	cmpq	$0, -408(%rbp)
	jne	_body6551
	jmp	_post6550
	.text
_cond6560:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -416(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -424(%rbp)
	movq	-416(%rbp), %rax
	cmpq	-424(%rbp), %rax
	setl	-432(%rbp)
	andq	$1, -432(%rbp)
	cmpq	$0, -432(%rbp)
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
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -440(%rbp)
	movq	-440(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -448(%rbp)
	movq	-448(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond6560
	.text
_merge6635:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -456(%rbp)
	movq	-456(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -464(%rbp)
	movq	-464(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond6552
	.text
_post6517:
	movq	-64(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -472(%rbp)
	movq	-472(%rbp), %rax
	movq	%rax, -480(%rbp)
	pushq	%r11
	pushq	%r10
	movq	$0, %rsi
	movq	-480(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	-472(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -488(%rbp)
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -496(%rbp)
	movq	-496(%rbp), %rax
	movq	%rax, -504(%rbp)
	pushq	%r11
	pushq	%r10
	movq	$0, %rsi
	movq	-504(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	-496(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -512(%rbp)
	movq	-512(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -520(%rbp)
	movq	-520(%rbp), %rax
	movq	-488(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond6552
	.text
_post6550:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	%r11, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_post6558:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -528(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -536(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -544(%rbp)
	movq	-536(%rbp), %rax
	movq	%rax, -552(%rbp)
	pushq	%r11
	pushq	%r10
	movq	-544(%rbp), %rsi
	movq	-552(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	-536(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-544(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -560(%rbp)
	movq	-560(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -568(%rbp)
	movq	-528(%rbp), %rax
	cmpq	-568(%rbp), %rax
	setl	-576(%rbp)
	andq	$1, -576(%rbp)
	cmpq	$0, -576(%rbp)
	jne	_then6637
	jmp	_else6636
	.text
_then6616:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -584(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -592(%rbp)
	movq	-584(%rbp), %rax
	movq	%rax, -600(%rbp)
	pushq	%r11
	pushq	%r10
	movq	-592(%rbp), %rsi
	movq	-600(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	-584(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-592(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -608(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -616(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -624(%rbp)
	movq	-616(%rbp), %rax
	movq	%rax, -632(%rbp)
	pushq	%r11
	pushq	%r10
	movq	-624(%rbp), %rsi
	movq	-632(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	-616(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-624(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -640(%rbp)
	movq	-640(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -648(%rbp)
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -656(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -664(%rbp)
	movq	-656(%rbp), %rax
	movq	%rax, -672(%rbp)
	pushq	%r11
	pushq	%r10
	movq	-664(%rbp), %rsi
	movq	-672(%rbp), %rdi
	callq	oat_assert_array_length
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
	addq	-688(%rbp), %rax
	movq	%rax, -696(%rbp)
	movq	-696(%rbp), %rax
	movq	-608(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_merge6614
	.text
_then6637:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -704(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -712(%rbp)
	movq	-704(%rbp), %rax
	movq	%rax, -720(%rbp)
	pushq	%r11
	pushq	%r10
	movq	-712(%rbp), %rsi
	movq	-720(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	-704(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-712(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -728(%rbp)
	movq	-728(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -736(%rbp)
	movq	-736(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_merge6635
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	subq	$8, %rsp
	movq	%rsp, %r11
	subq	$8, %rsp
	movq	%rsp, %r10
	pushq	%r11
	pushq	%r10
	movq	$7, %rdi
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
	movq	$1, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, -32(%rbp)
	movq	$101, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$16, %rax
	movq	%rax, -40(%rbp)
	movq	$2, %rax
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
	movq	$101, %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$40, %rax
	movq	%rax, -64(%rbp)
	movq	$4, %rax
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$48, %rax
	movq	%rax, -72(%rbp)
	movq	$5, %rax
	movq	-72(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	%r11, %rcx
	movq	%rax, (%rcx)
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	pushq	%r10
	movq	$7, %rsi
	movq	-80(%rbp), %rdi
	callq	maxsum
	popq	%r10
	movq	%rax, %r11
	movq	%r11, (%r10)
	movq	(%r10), %r11
	movq	%r11, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	