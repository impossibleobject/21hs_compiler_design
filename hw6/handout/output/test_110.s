	.text
	.globl	compute_determinant
compute_determinant:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$1024, %rsp
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
	subq	$8, %rsp
	movq	%rsp, -64(%rbp)
	subq	$8, %rsp
	movq	%rsp, -72(%rbp)
	subq	$8, %rsp
	movq	%rsp, -80(%rbp)
	subq	$8, %rsp
	movq	%rsp, -88(%rbp)
	movq	%rdi, (%r11)
	movq	%rsi, (%r10)
	movq	$0, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$-1, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	cmpq	$1, %rax
	sete	-104(%rbp)
	andq	$1, -104(%rbp)
	cmpq	$0, -104(%rbp)
	jne	_then4668
	jmp	_else4667
	.text
_body4488:
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)
	pushq	%r11
	pushq	%r10
	movq	-128(%rbp), %rdi
	callq	oat_alloc_array
	popq	%r10
	popq	%r11
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -144(%rbp)
	subq	$8, %rsp
	movq	%rsp, -152(%rbp)
	movq	-128(%rbp), %rax
	movq	-152(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, -160(%rbp)
	movq	-144(%rbp), %rax
	movq	-160(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond4506
	.text
_body4505:
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, -184(%rbp)
	pushq	%r11
	pushq	%r10
	movq	-176(%rbp), %rsi
	movq	-184(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	-168(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-176(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -192(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -200(%rbp)
	pushq	%r11
	pushq	%r10
	movq	-200(%rbp), %rdi
	callq	oat_alloc_array
	popq	%r10
	popq	%r11
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rax
	movq	%rax, -216(%rbp)
	subq	$8, %rsp
	movq	%rsp, -224(%rbp)
	movq	-200(%rbp), %rax
	movq	-224(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, -232(%rbp)
	movq	-216(%rbp), %rax
	movq	-232(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond4524
	.text
_body4523:
	movq	-232(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -240(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -248(%rbp)
	movq	-240(%rbp), %rax
	movq	%rax, -256(%rbp)
	pushq	%r11
	pushq	%r10
	movq	-248(%rbp), %rsi
	movq	-256(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	-240(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-248(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -264(%rbp)
	movq	$1, %rax
	movq	-264(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -272(%rbp)
	movq	-272(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -280(%rbp)
	movq	-280(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond4524
	.text
_body4550:
	movq	$0, %rax
	movq	-72(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond4560
	.text
_body4559:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -288(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -296(%rbp)
	movq	-288(%rbp), %rax
	movq	%rax, -304(%rbp)
	pushq	%r11
	pushq	%r10
	movq	-296(%rbp), %rsi
	movq	-304(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	-288(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-296(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -312(%rbp)
	movq	-312(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -320(%rbp)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -328(%rbp)
	movq	-320(%rbp), %rax
	movq	%rax, -336(%rbp)
	pushq	%r11
	pushq	%r10
	movq	-328(%rbp), %rsi
	movq	-336(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	-320(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-328(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -344(%rbp)
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -352(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -360(%rbp)
	movq	-360(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -368(%rbp)
	movq	-352(%rbp), %rax
	movq	%rax, -376(%rbp)
	pushq	%r11
	pushq	%r10
	movq	-368(%rbp), %rsi
	movq	-376(%rbp), %rdi
	callq	oat_assert_array_length
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
	movq	-384(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -392(%rbp)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -400(%rbp)
	movq	-392(%rbp), %rax
	movq	%rax, -408(%rbp)
	pushq	%r11
	pushq	%r10
	movq	-400(%rbp), %rsi
	movq	-408(%rbp), %rdi
	callq	oat_assert_array_length
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
	movq	-344(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -432(%rbp)
	movq	-432(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -440(%rbp)
	movq	-440(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond4560
	.text
_body4598:
	movq	$0, %rax
	movq	-88(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond4608
	.text
_body4607:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -448(%rbp)
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -456(%rbp)
	movq	-448(%rbp), %rax
	movq	%rax, -464(%rbp)
	pushq	%r11
	pushq	%r10
	movq	-456(%rbp), %rsi
	movq	-464(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	-448(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-456(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -472(%rbp)
	movq	-472(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -480(%rbp)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -488(%rbp)
	movq	-480(%rbp), %rax
	movq	%rax, -496(%rbp)
	pushq	%r11
	pushq	%r10
	movq	-488(%rbp), %rsi
	movq	-496(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	-480(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-488(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -504(%rbp)
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -512(%rbp)
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -520(%rbp)
	movq	-520(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -528(%rbp)
	movq	-512(%rbp), %rax
	movq	%rax, -536(%rbp)
	pushq	%r11
	pushq	%r10
	movq	-528(%rbp), %rsi
	movq	-536(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	-512(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-528(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -544(%rbp)
	movq	-544(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -552(%rbp)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -560(%rbp)
	movq	-560(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -568(%rbp)
	movq	-552(%rbp), %rax
	movq	%rax, -576(%rbp)
	pushq	%r11
	pushq	%r10
	movq	-568(%rbp), %rsi
	movq	-576(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	-552(%rbp), %rax
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
	movq	-592(%rbp), %rax
	movq	-504(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -600(%rbp)
	movq	-600(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -608(%rbp)
	movq	-608(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond4608
	.text
_cond4489:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -616(%rbp)
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -624(%rbp)
	movq	-616(%rbp), %rax
	cmpq	-624(%rbp), %rax
	setl	-632(%rbp)
	andq	$1, -632(%rbp)
	cmpq	$0, -632(%rbp)
	jne	_body4488
	jmp	_post4487
	.text
_cond4506:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -640(%rbp)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -648(%rbp)
	movq	-640(%rbp), %rax
	cmpq	-648(%rbp), %rax
	setl	-656(%rbp)
	andq	$1, -656(%rbp)
	cmpq	$0, -656(%rbp)
	jne	_body4505
	jmp	_post4504
	.text
_cond4524:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -664(%rbp)
	movq	-224(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -672(%rbp)
	movq	-664(%rbp), %rax
	cmpq	-672(%rbp), %rax
	setl	-680(%rbp)
	andq	$1, -680(%rbp)
	cmpq	$0, -680(%rbp)
	jne	_body4523
	jmp	_post4522
	.text
_cond4551:
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -688(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -696(%rbp)
	movq	-688(%rbp), %rax
	cmpq	-696(%rbp), %rax
	setl	-704(%rbp)
	andq	$1, -704(%rbp)
	cmpq	$0, -704(%rbp)
	jne	_body4550
	jmp	_post4549
	.text
_cond4560:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -712(%rbp)
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -720(%rbp)
	movq	-720(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -728(%rbp)
	movq	-712(%rbp), %rax
	cmpq	-728(%rbp), %rax
	setl	-736(%rbp)
	andq	$1, -736(%rbp)
	cmpq	$0, -736(%rbp)
	jne	_body4559
	jmp	_post4558
	.text
_cond4599:
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -744(%rbp)
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -752(%rbp)
	movq	-752(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -760(%rbp)
	movq	-744(%rbp), %rax
	cmpq	-760(%rbp), %rax
	setl	-768(%rbp)
	andq	$1, -768(%rbp)
	cmpq	$0, -768(%rbp)
	jne	_body4598
	jmp	_post4597
	.text
_cond4608:
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -776(%rbp)
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -784(%rbp)
	movq	-784(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -792(%rbp)
	movq	-776(%rbp), %rax
	cmpq	-792(%rbp), %rax
	setl	-800(%rbp)
	andq	$1, -800(%rbp)
	cmpq	$0, -800(%rbp)
	jne	_body4607
	jmp	_post4606
	.text
_else4667:
	movq	$0, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond4489
	.text
_merge4666:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	%r11, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_post4487:
	jmp	_merge4666
	.text
_post4504:
	movq	-144(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond4551
	.text
_post4522:
	movq	-216(%rbp), %rax
	movq	-192(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -808(%rbp)
	movq	-808(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -816(%rbp)
	movq	-816(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond4506
	.text
_post4549:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -824(%rbp)
	movq	-824(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond4599
	.text
_post4558:
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -832(%rbp)
	movq	-832(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -840(%rbp)
	movq	-840(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond4551
	.text
_post4597:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -848(%rbp)
	movq	-848(%rbp), %rax
	imulq	$-1, %rax
	movq	%rax, -856(%rbp)
	movq	-856(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -864(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -872(%rbp)
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -880(%rbp)
	movq	-880(%rbp), %rax
	movq	%rax, -888(%rbp)
	pushq	%r11
	pushq	%r10
	movq	$0, %rsi
	movq	-888(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	-880(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -896(%rbp)
	movq	-896(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -904(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -912(%rbp)
	movq	-904(%rbp), %rax
	movq	%rax, -920(%rbp)
	pushq	%r11
	pushq	%r10
	movq	-912(%rbp), %rsi
	movq	-920(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	-904(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-912(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -928(%rbp)
	movq	-928(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -936(%rbp)
	movq	-872(%rbp), %rax
	imulq	-936(%rbp), %rax
	movq	%rax, -944(%rbp)
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -952(%rbp)
	movq	-952(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -960(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -968(%rbp)
	pushq	%r11
	pushq	%r10
	movq	-960(%rbp), %rsi
	movq	-968(%rbp), %rdi
	callq	compute_determinant
	popq	%r10
	popq	%r11
	movq	%rax, -976(%rbp)
	movq	-944(%rbp), %rax
	imulq	-976(%rbp), %rax
	movq	%rax, -984(%rbp)
	movq	-864(%rbp), %rax
	addq	-984(%rbp), %rax
	movq	%rax, -992(%rbp)
	movq	-992(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1000(%rbp)
	movq	-1000(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -1008(%rbp)
	movq	-1008(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond4489
	.text
_post4606:
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1016(%rbp)
	movq	-1016(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -1024(%rbp)
	movq	-1024(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond4599
	.text
_then4668:
	movq	(%r11), %r10
	movq	%r10, %rax
	movq	%rax, %r11
	pushq	%r11
	pushq	%r10
	movq	$0, %rsi
	movq	%r11, %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	%r10, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %r11
	movq	(%r11), %r10
	movq	%r10, %rax
	movq	%rax, %r11
	pushq	%r11
	pushq	%r10
	movq	$0, %rsi
	movq	%r11, %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	%r10, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %r11
	movq	(%r11), %r10
	movq	%r10, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_merge4666
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	subq	$8, %rsp
	movq	%rsp, %r11
	pushq	%r11
	movq	$2, %rdi
	callq	oat_alloc_array
	popq	%r11
	movq	%rax, %r10
	movq	%r10, %rax
	movq	%rax, -8(%rbp)
	pushq	%r11
	movq	$2, %rdi
	callq	oat_alloc_array
	popq	%r11
	movq	%rax, %r10
	movq	%r10, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %r10
	movq	$20, %rax
	movq	%r10, %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, %r10
	movq	$2, %rax
	movq	%r10, %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %r10
	movq	-16(%rbp), %rax
	movq	%r10, %rcx
	movq	%rax, (%rcx)
	pushq	%r11
	movq	$2, %rdi
	callq	oat_alloc_array
	popq	%r11
	movq	%rax, %r10
	movq	%r10, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %r10
	movq	$3, %rax
	movq	%r10, %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, %r10
	movq	$5, %rax
	movq	%r10, %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, %r10
	movq	-24(%rbp), %rax
	movq	%r10, %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	%r11, %rcx
	movq	%rax, (%rcx)
	movq	(%r11), %r10
	pushq	%r10
	movq	$2, %rsi
	movq	%r10, %rdi
	callq	compute_determinant
	popq	%r10
	movq	%rax, %r11
	movq	%r11, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	