	.text
	.globl	compute_determinant
compute_determinant:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$1104, %rsp
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
	subq	$8, %rsp
	movq	%rsp, -96(%rbp)
	subq	$8, %rsp
	movq	%rsp, -104(%rbp)
	movq	%rdi, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%rsi, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$-1, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	cmpq	$1, %rax
	sete	-120(%rbp)
	andq	$1, -120(%rbp)
	cmpq	$0, -120(%rbp)
	jne	_then4668
	jmp	_else4667
	.text
_body4488:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rdi
	callq	oat_alloc_array
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -160(%rbp)
	subq	$8, %rsp
	movq	%rsp, -168(%rbp)
	movq	-144(%rbp), %rax
	movq	-168(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, -176(%rbp)
	movq	-160(%rbp), %rax
	movq	-176(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond4506
	.text
_body4505:
	movq	-176(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -184(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -192(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, -200(%rbp)
	movq	-192(%rbp), %rsi
	movq	-200(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-184(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-192(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -208(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -216(%rbp)
	movq	-216(%rbp), %rdi
	callq	oat_alloc_array
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rax
	movq	%rax, -232(%rbp)
	subq	$8, %rsp
	movq	%rsp, -240(%rbp)
	movq	-216(%rbp), %rax
	movq	-240(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, -248(%rbp)
	movq	-232(%rbp), %rax
	movq	-248(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond4524
	.text
_body4523:
	movq	-248(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -256(%rbp)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -264(%rbp)
	movq	-256(%rbp), %rax
	movq	%rax, -272(%rbp)
	movq	-264(%rbp), %rsi
	movq	-272(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-256(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-264(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -280(%rbp)
	movq	$1, %rax
	movq	-280(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -288(%rbp)
	movq	-288(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -296(%rbp)
	movq	-296(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond4524
	.text
_body4550:
	movq	$0, %rax
	movq	-88(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond4560
	.text
_body4559:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -304(%rbp)
	movq	-88(%rbp), %rax
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
	movq	-80(%rbp), %rax
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
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -368(%rbp)
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -376(%rbp)
	movq	-376(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -384(%rbp)
	movq	-368(%rbp), %rax
	movq	%rax, -392(%rbp)
	movq	-384(%rbp), %rsi
	movq	-392(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-368(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-384(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -400(%rbp)
	movq	-400(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -408(%rbp)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -416(%rbp)
	movq	-408(%rbp), %rax
	movq	%rax, -424(%rbp)
	movq	-416(%rbp), %rsi
	movq	-424(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-408(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-416(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -432(%rbp)
	movq	-432(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -440(%rbp)
	movq	-440(%rbp), %rax
	movq	-360(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -448(%rbp)
	movq	-448(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -456(%rbp)
	movq	-456(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond4560
	.text
_body4598:
	movq	$0, %rax
	movq	-104(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond4608
	.text
_body4607:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -464(%rbp)
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -472(%rbp)
	movq	-464(%rbp), %rax
	movq	%rax, -480(%rbp)
	movq	-472(%rbp), %rsi
	movq	-480(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-464(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-472(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -488(%rbp)
	movq	-488(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -496(%rbp)
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -504(%rbp)
	movq	-496(%rbp), %rax
	movq	%rax, -512(%rbp)
	movq	-504(%rbp), %rsi
	movq	-512(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-496(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-504(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -520(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -528(%rbp)
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -536(%rbp)
	movq	-536(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -544(%rbp)
	movq	-528(%rbp), %rax
	movq	%rax, -552(%rbp)
	movq	-544(%rbp), %rsi
	movq	-552(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-528(%rbp), %rax
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
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -576(%rbp)
	movq	-576(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -584(%rbp)
	movq	-568(%rbp), %rax
	movq	%rax, -592(%rbp)
	movq	-584(%rbp), %rsi
	movq	-592(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-568(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-584(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -600(%rbp)
	movq	-600(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -608(%rbp)
	movq	-608(%rbp), %rax
	movq	-520(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -616(%rbp)
	movq	-616(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -624(%rbp)
	movq	-624(%rbp), %rax
	movq	-104(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond4608
	.text
_cond4489:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -632(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -640(%rbp)
	movq	-632(%rbp), %rax
	cmpq	-640(%rbp), %rax
	setl	-648(%rbp)
	andq	$1, -648(%rbp)
	cmpq	$0, -648(%rbp)
	jne	_body4488
	jmp	_post4487
	.text
_cond4506:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -656(%rbp)
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -664(%rbp)
	movq	-656(%rbp), %rax
	cmpq	-664(%rbp), %rax
	setl	-672(%rbp)
	andq	$1, -672(%rbp)
	cmpq	$0, -672(%rbp)
	jne	_body4505
	jmp	_post4504
	.text
_cond4524:
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -680(%rbp)
	movq	-240(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -688(%rbp)
	movq	-680(%rbp), %rax
	cmpq	-688(%rbp), %rax
	setl	-696(%rbp)
	andq	$1, -696(%rbp)
	cmpq	$0, -696(%rbp)
	jne	_body4523
	jmp	_post4522
	.text
_cond4551:
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -704(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -712(%rbp)
	movq	-704(%rbp), %rax
	cmpq	-712(%rbp), %rax
	setl	-720(%rbp)
	andq	$1, -720(%rbp)
	cmpq	$0, -720(%rbp)
	jne	_body4550
	jmp	_post4549
	.text
_cond4560:
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -728(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -736(%rbp)
	movq	-736(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -744(%rbp)
	movq	-728(%rbp), %rax
	cmpq	-744(%rbp), %rax
	setl	-752(%rbp)
	andq	$1, -752(%rbp)
	cmpq	$0, -752(%rbp)
	jne	_body4559
	jmp	_post4558
	.text
_cond4599:
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -760(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -768(%rbp)
	movq	-768(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -776(%rbp)
	movq	-760(%rbp), %rax
	cmpq	-776(%rbp), %rax
	setl	-784(%rbp)
	andq	$1, -784(%rbp)
	cmpq	$0, -784(%rbp)
	jne	_body4598
	jmp	_post4597
	.text
_cond4608:
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -792(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -800(%rbp)
	movq	-800(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -808(%rbp)
	movq	-792(%rbp), %rax
	cmpq	-808(%rbp), %rax
	setl	-816(%rbp)
	andq	$1, -816(%rbp)
	cmpq	$0, -816(%rbp)
	jne	_body4607
	jmp	_post4606
	.text
_else4667:
	movq	$0, %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond4489
	.text
_merge4666:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -824(%rbp)
	movq	-824(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_post4487:
	jmp	_merge4666
	.text
_post4504:
	movq	-160(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-80(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond4551
	.text
_post4522:
	movq	-232(%rbp), %rax
	movq	-208(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -832(%rbp)
	movq	-832(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -840(%rbp)
	movq	-840(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond4506
	.text
_post4549:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -848(%rbp)
	movq	-848(%rbp), %rax
	movq	-96(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond4599
	.text
_post4558:
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -856(%rbp)
	movq	-856(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -864(%rbp)
	movq	-864(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond4551
	.text
_post4597:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -872(%rbp)
	movq	-872(%rbp), %rax
	imulq	$-1, %rax
	movq	%rax, -880(%rbp)
	movq	-880(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -888(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -896(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -904(%rbp)
	movq	-904(%rbp), %rax
	movq	%rax, -912(%rbp)
	movq	$0, %rsi
	movq	-912(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-904(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -920(%rbp)
	movq	-920(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -928(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -936(%rbp)
	movq	-928(%rbp), %rax
	movq	%rax, -944(%rbp)
	movq	-936(%rbp), %rsi
	movq	-944(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-928(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-936(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -952(%rbp)
	movq	-952(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -960(%rbp)
	movq	-896(%rbp), %rax
	imulq	-960(%rbp), %rax
	movq	%rax, -968(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -976(%rbp)
	movq	-976(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -984(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -992(%rbp)
	movq	-984(%rbp), %rsi
	movq	-992(%rbp), %rdi
	callq	compute_determinant
	movq	%rax, -1000(%rbp)
	movq	-968(%rbp), %rax
	imulq	-1000(%rbp), %rax
	movq	%rax, -1008(%rbp)
	movq	-888(%rbp), %rax
	addq	-1008(%rbp), %rax
	movq	%rax, -1016(%rbp)
	movq	-1016(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1024(%rbp)
	movq	-1024(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -1032(%rbp)
	movq	-1032(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond4489
	.text
_post4606:
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1040(%rbp)
	movq	-1040(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -1048(%rbp)
	movq	-1048(%rbp), %rax
	movq	-96(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond4599
	.text
_then4668:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1056(%rbp)
	movq	-1056(%rbp), %rax
	movq	%rax, -1064(%rbp)
	movq	$0, %rsi
	movq	-1064(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-1056(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -1072(%rbp)
	movq	-1072(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1080(%rbp)
	movq	-1080(%rbp), %rax
	movq	%rax, -1088(%rbp)
	movq	$0, %rsi
	movq	-1088(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-1080(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -1096(%rbp)
	movq	-1096(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1104(%rbp)
	movq	-1104(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_merge4666
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$120, %rsp
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	movq	$2, %rdi
	callq	oat_alloc_array
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	$2, %rdi
	callq	oat_alloc_array
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -48(%rbp)
	movq	$20, %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-40(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, -56(%rbp)
	movq	$2, %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$2, %rdi
	callq	oat_alloc_array
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -88(%rbp)
	movq	$3, %rax
	movq	-88(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-80(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, -96(%rbp)
	movq	$5, %rax
	movq	-96(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, -104(%rbp)
	movq	-80(%rbp), %rax
	movq	-104(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	$2, %rsi
	movq	-112(%rbp), %rdi
	callq	compute_determinant
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	