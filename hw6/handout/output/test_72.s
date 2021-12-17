	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$1232, %rsp
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
	subq	$8, %rsp
	movq	%rsp, -112(%rbp)
	movq	$3, %rdi
	callq	oat_alloc_array
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -128(%rbp)
	subq	$8, %rsp
	movq	%rsp, -136(%rbp)
	movq	$3, %rax
	movq	-136(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, -144(%rbp)
	movq	-128(%rbp), %rax
	movq	-144(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond505
	.text
_body504:
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)
	movq	-8(%rbp), %rax
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
	movq	$1, %rdi
	callq	oat_alloc_array
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, -192(%rbp)
	subq	$8, %rsp
	movq	%rsp, -200(%rbp)
	movq	$1, %rax
	movq	-200(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, -208(%rbp)
	movq	-192(%rbp), %rax
	movq	-208(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond522
	.text
_body521:
	movq	-208(%rbp), %rax
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
	movq	$0, %rax
	movq	-240(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -248(%rbp)
	movq	-248(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -256(%rbp)
	movq	-256(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond522
	.text
_body552:
	movq	-896(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -264(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -272(%rbp)
	movq	-264(%rbp), %rax
	movq	%rax, -280(%rbp)
	movq	-272(%rbp), %rsi
	movq	-280(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-264(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-272(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -288(%rbp)
	movq	$1, %rdi
	callq	oat_alloc_array
	movq	%rax, -296(%rbp)
	movq	-296(%rbp), %rax
	movq	%rax, -304(%rbp)
	subq	$8, %rsp
	movq	%rsp, -312(%rbp)
	movq	$1, %rax
	movq	-312(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, -320(%rbp)
	movq	-304(%rbp), %rax
	movq	-320(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond570
	.text
_body569:
	movq	-320(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -328(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -336(%rbp)
	movq	-328(%rbp), %rax
	movq	%rax, -344(%rbp)
	movq	-336(%rbp), %rsi
	movq	-344(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-328(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-336(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -352(%rbp)
	movq	$0, %rax
	movq	-352(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -360(%rbp)
	movq	-360(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -368(%rbp)
	movq	-368(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond570
	.text
_body600:
	movq	-944(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -376(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -384(%rbp)
	movq	-376(%rbp), %rax
	movq	%rax, -392(%rbp)
	movq	-384(%rbp), %rsi
	movq	-392(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-376(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-384(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -400(%rbp)
	movq	$1, %rdi
	callq	oat_alloc_array
	movq	%rax, -408(%rbp)
	movq	-408(%rbp), %rax
	movq	%rax, -416(%rbp)
	subq	$8, %rsp
	movq	%rsp, -424(%rbp)
	movq	$1, %rax
	movq	-424(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, -432(%rbp)
	movq	-416(%rbp), %rax
	movq	-432(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond618
	.text
_body617:
	movq	-432(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -440(%rbp)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -448(%rbp)
	movq	-440(%rbp), %rax
	movq	%rax, -456(%rbp)
	movq	-448(%rbp), %rsi
	movq	-456(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-440(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-448(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -464(%rbp)
	movq	$0, %rax
	movq	-464(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -472(%rbp)
	movq	-472(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -480(%rbp)
	movq	-480(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond618
	.text
_body648:
	movq	-992(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -488(%rbp)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -496(%rbp)
	movq	-488(%rbp), %rax
	movq	%rax, -504(%rbp)
	movq	-496(%rbp), %rsi
	movq	-504(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-488(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-496(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -512(%rbp)
	movq	$1, %rdi
	callq	oat_alloc_array
	movq	%rax, -520(%rbp)
	movq	-520(%rbp), %rax
	movq	%rax, -528(%rbp)
	subq	$8, %rsp
	movq	%rsp, -536(%rbp)
	movq	$1, %rax
	movq	-536(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, -544(%rbp)
	movq	-528(%rbp), %rax
	movq	-544(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-88(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond666
	.text
_body665:
	movq	-544(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -552(%rbp)
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -560(%rbp)
	movq	-552(%rbp), %rax
	movq	%rax, -568(%rbp)
	movq	-560(%rbp), %rsi
	movq	-568(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-552(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-560(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -576(%rbp)
	movq	$0, %rax
	movq	-576(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -584(%rbp)
	movq	-584(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -592(%rbp)
	movq	-592(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond666
	.text
_body696:
	movq	-1040(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -600(%rbp)
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -608(%rbp)
	movq	-600(%rbp), %rax
	movq	%rax, -616(%rbp)
	movq	-608(%rbp), %rsi
	movq	-616(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-600(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-608(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -624(%rbp)
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -632(%rbp)
	movq	-632(%rbp), %rax
	movq	-624(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -640(%rbp)
	movq	-640(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -648(%rbp)
	movq	-648(%rbp), %rax
	movq	-104(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond697
	.text
_cond505:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -656(%rbp)
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -664(%rbp)
	movq	-656(%rbp), %rax
	cmpq	-664(%rbp), %rax
	setl	-672(%rbp)
	andq	$1, -672(%rbp)
	cmpq	$0, -672(%rbp)
	jne	_body504
	jmp	_post503
	.text
_cond522:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -680(%rbp)
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -688(%rbp)
	movq	-680(%rbp), %rax
	cmpq	-688(%rbp), %rax
	setl	-696(%rbp)
	andq	$1, -696(%rbp)
	cmpq	$0, -696(%rbp)
	jne	_body521
	jmp	_post520
	.text
_cond553:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -704(%rbp)
	movq	-888(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -712(%rbp)
	movq	-704(%rbp), %rax
	cmpq	-712(%rbp), %rax
	setl	-720(%rbp)
	andq	$1, -720(%rbp)
	cmpq	$0, -720(%rbp)
	jne	_body552
	jmp	_post551
	.text
_cond570:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -728(%rbp)
	movq	-312(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -736(%rbp)
	movq	-728(%rbp), %rax
	cmpq	-736(%rbp), %rax
	setl	-744(%rbp)
	andq	$1, -744(%rbp)
	cmpq	$0, -744(%rbp)
	jne	_body569
	jmp	_post568
	.text
_cond601:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -752(%rbp)
	movq	-936(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -760(%rbp)
	movq	-752(%rbp), %rax
	cmpq	-760(%rbp), %rax
	setl	-768(%rbp)
	andq	$1, -768(%rbp)
	cmpq	$0, -768(%rbp)
	jne	_body600
	jmp	_post599
	.text
_cond618:
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -776(%rbp)
	movq	-424(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -784(%rbp)
	movq	-776(%rbp), %rax
	cmpq	-784(%rbp), %rax
	setl	-792(%rbp)
	andq	$1, -792(%rbp)
	cmpq	$0, -792(%rbp)
	jne	_body617
	jmp	_post616
	.text
_cond649:
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -800(%rbp)
	movq	-984(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -808(%rbp)
	movq	-800(%rbp), %rax
	cmpq	-808(%rbp), %rax
	setl	-816(%rbp)
	andq	$1, -816(%rbp)
	cmpq	$0, -816(%rbp)
	jne	_body648
	jmp	_post647
	.text
_cond666:
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -824(%rbp)
	movq	-536(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -832(%rbp)
	movq	-824(%rbp), %rax
	cmpq	-832(%rbp), %rax
	setl	-840(%rbp)
	andq	$1, -840(%rbp)
	cmpq	$0, -840(%rbp)
	jne	_body665
	jmp	_post664
	.text
_cond697:
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -848(%rbp)
	movq	-1032(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -856(%rbp)
	movq	-848(%rbp), %rax
	cmpq	-856(%rbp), %rax
	setl	-864(%rbp)
	andq	$1, -864(%rbp)
	cmpq	$0, -864(%rbp)
	jne	_body696
	jmp	_post695
	.text
_post503:
	movq	-128(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$3, %rdi
	callq	oat_alloc_array
	movq	%rax, -872(%rbp)
	movq	-872(%rbp), %rax
	movq	%rax, -880(%rbp)
	subq	$8, %rsp
	movq	%rsp, -888(%rbp)
	movq	$3, %rax
	movq	-888(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, -896(%rbp)
	movq	-880(%rbp), %rax
	movq	-896(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond553
	.text
_post520:
	movq	-192(%rbp), %rax
	movq	-176(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -904(%rbp)
	movq	-904(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -912(%rbp)
	movq	-912(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond505
	.text
_post551:
	movq	-880(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$3, %rdi
	callq	oat_alloc_array
	movq	%rax, -920(%rbp)
	movq	-920(%rbp), %rax
	movq	%rax, -928(%rbp)
	subq	$8, %rsp
	movq	%rsp, -936(%rbp)
	movq	$3, %rax
	movq	-936(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, -944(%rbp)
	movq	-928(%rbp), %rax
	movq	-944(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond601
	.text
_post568:
	movq	-304(%rbp), %rax
	movq	-288(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -952(%rbp)
	movq	-952(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -960(%rbp)
	movq	-960(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond553
	.text
_post599:
	movq	-928(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$3, %rdi
	callq	oat_alloc_array
	movq	%rax, -968(%rbp)
	movq	-968(%rbp), %rax
	movq	%rax, -976(%rbp)
	subq	$8, %rsp
	movq	%rsp, -984(%rbp)
	movq	$3, %rax
	movq	-984(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, -992(%rbp)
	movq	-976(%rbp), %rax
	movq	-992(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-80(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond649
	.text
_post616:
	movq	-416(%rbp), %rax
	movq	-400(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1000(%rbp)
	movq	-1000(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -1008(%rbp)
	movq	-1008(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond601
	.text
_post647:
	movq	-976(%rbp), %rax
	movq	-96(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$3, %rdi
	callq	oat_alloc_array
	movq	%rax, -1016(%rbp)
	movq	-1016(%rbp), %rax
	movq	%rax, -1024(%rbp)
	subq	$8, %rsp
	movq	%rsp, -1032(%rbp)
	movq	$3, %rax
	movq	-1032(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, -1040(%rbp)
	movq	-1024(%rbp), %rax
	movq	-1040(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-104(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond697
	.text
_post664:
	movq	-528(%rbp), %rax
	movq	-512(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1048(%rbp)
	movq	-1048(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -1056(%rbp)
	movq	-1056(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond649
	.text
_post695:
	movq	-1024(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1064(%rbp)
	movq	-1064(%rbp), %rax
	movq	%rax, -1072(%rbp)
	movq	$0, %rsi
	movq	-1072(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-1064(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -1080(%rbp)
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1088(%rbp)
	movq	-1088(%rbp), %rax
	movq	-1080(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1096(%rbp)
	movq	-1096(%rbp), %rax
	movq	%rax, -1104(%rbp)
	movq	$0, %rsi
	movq	-1104(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-1096(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -1112(%rbp)
	movq	-1112(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1120(%rbp)
	movq	-1120(%rbp), %rax
	movq	%rax, -1128(%rbp)
	movq	$0, %rsi
	movq	-1128(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-1120(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -1136(%rbp)
	movq	$2, %rax
	movq	-1136(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1144(%rbp)
	movq	-1144(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1152(%rbp)
	movq	-1152(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1160(%rbp)
	movq	-1160(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1168(%rbp)
	movq	-1168(%rbp), %rax
	movq	-96(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1176(%rbp)
	movq	-1176(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1184(%rbp)
	movq	-1184(%rbp), %rax
	movq	%rax, -1192(%rbp)
	movq	$0, %rsi
	movq	-1192(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-1184(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -1200(%rbp)
	movq	-1200(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1208(%rbp)
	movq	-1208(%rbp), %rax
	movq	%rax, -1216(%rbp)
	movq	$0, %rsi
	movq	-1216(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-1208(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -1224(%rbp)
	movq	-1224(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1232(%rbp)
	movq	-1232(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	