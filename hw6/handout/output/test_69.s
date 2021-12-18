	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$1016, %rsp
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
	subq	$8, %rsp
	movq	%rsp, -96(%rbp)
	pushq	%r11
	pushq	%r10
	movq	$3, %rdi
	callq	oat_alloc_array
	popq	%r10
	popq	%r11
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
	movq	%r11, %rcx
	movq	%rax, (%rcx)
	jmp	_cond505
	.text
_body504:
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	%r11, %rax
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
	pushq	%r11
	pushq	%r10
	movq	$1, %rdi
	callq	oat_alloc_array
	popq	%r10
	popq	%r11
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, -176(%rbp)
	subq	$8, %rsp
	movq	%rsp, -184(%rbp)
	movq	$1, %rax
	movq	-184(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, -192(%rbp)
	movq	-176(%rbp), %rax
	movq	-192(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	%r10, %rcx
	movq	%rax, (%rcx)
	jmp	_cond522
	.text
_body521:
	movq	-192(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -200(%rbp)
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -208(%rbp)
	movq	-200(%rbp), %rax
	movq	%rax, -216(%rbp)
	pushq	%r11
	pushq	%r10
	movq	-208(%rbp), %rsi
	movq	-216(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	-200(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-208(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -224(%rbp)
	movq	$0, %rax
	movq	-224(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -232(%rbp)
	movq	-232(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -240(%rbp)
	movq	-240(%rbp), %rax
	movq	%r10, %rcx
	movq	%rax, (%rcx)
	jmp	_cond522
	.text
_body552:
	movq	-880(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -248(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -256(%rbp)
	movq	-248(%rbp), %rax
	movq	%rax, -264(%rbp)
	movq	-256(%rbp), %rsi
	movq	-264(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-248(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-256(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -272(%rbp)
	movq	$1, %rdi
	callq	oat_alloc_array
	movq	%rax, -280(%rbp)
	movq	-280(%rbp), %rax
	movq	%rax, -288(%rbp)
	subq	$8, %rsp
	movq	%rsp, -296(%rbp)
	movq	$1, %rax
	movq	-296(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, -304(%rbp)
	movq	-288(%rbp), %rax
	movq	-304(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond570
	.text
_body569:
	movq	-304(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -312(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -320(%rbp)
	movq	-312(%rbp), %rax
	movq	%rax, -328(%rbp)
	movq	-320(%rbp), %rsi
	movq	-328(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-312(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-320(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -336(%rbp)
	movq	$0, %rax
	movq	-336(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -344(%rbp)
	movq	-344(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -352(%rbp)
	movq	-352(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond570
	.text
_body600:
	movq	-928(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -360(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -368(%rbp)
	movq	-360(%rbp), %rax
	movq	%rax, -376(%rbp)
	movq	-368(%rbp), %rsi
	movq	-376(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-360(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-368(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -384(%rbp)
	movq	$1, %rdi
	callq	oat_alloc_array
	movq	%rax, -392(%rbp)
	movq	-392(%rbp), %rax
	movq	%rax, -400(%rbp)
	subq	$8, %rsp
	movq	%rsp, -408(%rbp)
	movq	$1, %rax
	movq	-408(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, -416(%rbp)
	movq	-400(%rbp), %rax
	movq	-416(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond618
	.text
_body617:
	movq	-416(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -424(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -432(%rbp)
	movq	-424(%rbp), %rax
	movq	%rax, -440(%rbp)
	movq	-432(%rbp), %rsi
	movq	-440(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-424(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-432(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -448(%rbp)
	movq	$0, %rax
	movq	-448(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -456(%rbp)
	movq	-456(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -464(%rbp)
	movq	-464(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond618
	.text
_body648:
	movq	-976(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -472(%rbp)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -480(%rbp)
	movq	-472(%rbp), %rax
	movq	%rax, -488(%rbp)
	movq	-480(%rbp), %rsi
	movq	-488(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-472(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-480(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -496(%rbp)
	movq	$1, %rdi
	callq	oat_alloc_array
	movq	%rax, -504(%rbp)
	movq	-504(%rbp), %rax
	movq	%rax, -512(%rbp)
	subq	$8, %rsp
	movq	%rsp, -520(%rbp)
	movq	$1, %rax
	movq	-520(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, -528(%rbp)
	movq	-512(%rbp), %rax
	movq	-528(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-72(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond666
	.text
_body665:
	movq	-528(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -536(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -544(%rbp)
	movq	-536(%rbp), %rax
	movq	%rax, -552(%rbp)
	movq	-544(%rbp), %rsi
	movq	-552(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-536(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-544(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -560(%rbp)
	movq	$0, %rax
	movq	-560(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -568(%rbp)
	movq	-568(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -576(%rbp)
	movq	-576(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond666
	.text
_body696:
	movq	-1000(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -584(%rbp)
	movq	-88(%rbp), %rax
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
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -616(%rbp)
	movq	-616(%rbp), %rax
	movq	-608(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -624(%rbp)
	movq	-624(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -632(%rbp)
	movq	-632(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond697
	.text
_cond505:
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -640(%rbp)
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -648(%rbp)
	movq	-640(%rbp), %rax
	cmpq	-648(%rbp), %rax
	setl	-656(%rbp)
	andq	$1, -656(%rbp)
	cmpq	$0, -656(%rbp)
	jne	_body504
	jmp	_post503
	.text
_cond522:
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -664(%rbp)
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -672(%rbp)
	movq	-664(%rbp), %rax
	cmpq	-672(%rbp), %rax
	setl	-680(%rbp)
	andq	$1, -680(%rbp)
	cmpq	$0, -680(%rbp)
	jne	_body521
	jmp	_post520
	.text
_cond553:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -688(%rbp)
	movq	-872(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -696(%rbp)
	movq	-688(%rbp), %rax
	cmpq	-696(%rbp), %rax
	setl	-704(%rbp)
	andq	$1, -704(%rbp)
	cmpq	$0, -704(%rbp)
	jne	_body552
	jmp	_post551
	.text
_cond570:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -712(%rbp)
	movq	-296(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -720(%rbp)
	movq	-712(%rbp), %rax
	cmpq	-720(%rbp), %rax
	setl	-728(%rbp)
	andq	$1, -728(%rbp)
	cmpq	$0, -728(%rbp)
	jne	_body569
	jmp	_post568
	.text
_cond601:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -736(%rbp)
	movq	-920(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -744(%rbp)
	movq	-736(%rbp), %rax
	cmpq	-744(%rbp), %rax
	setl	-752(%rbp)
	andq	$1, -752(%rbp)
	cmpq	$0, -752(%rbp)
	jne	_body600
	jmp	_post599
	.text
_cond618:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -760(%rbp)
	movq	-408(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -768(%rbp)
	movq	-760(%rbp), %rax
	cmpq	-768(%rbp), %rax
	setl	-776(%rbp)
	andq	$1, -776(%rbp)
	cmpq	$0, -776(%rbp)
	jne	_body617
	jmp	_post616
	.text
_cond649:
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -784(%rbp)
	movq	-968(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -792(%rbp)
	movq	-784(%rbp), %rax
	cmpq	-792(%rbp), %rax
	setl	-800(%rbp)
	andq	$1, -800(%rbp)
	cmpq	$0, -800(%rbp)
	jne	_body648
	jmp	_post647
	.text
_cond666:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -808(%rbp)
	movq	-520(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -816(%rbp)
	movq	-808(%rbp), %rax
	cmpq	-816(%rbp), %rax
	setl	-824(%rbp)
	andq	$1, -824(%rbp)
	cmpq	$0, -824(%rbp)
	jne	_body665
	jmp	_post664
	.text
_cond697:
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -832(%rbp)
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -840(%rbp)
	movq	-832(%rbp), %rax
	cmpq	-840(%rbp), %rax
	setl	-848(%rbp)
	andq	$1, -848(%rbp)
	cmpq	$0, -848(%rbp)
	jne	_body696
	jmp	_post695
	.text
_post503:
	movq	-112(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$3, %rdi
	callq	oat_alloc_array
	movq	%rax, -856(%rbp)
	movq	-856(%rbp), %rax
	movq	%rax, -864(%rbp)
	subq	$8, %rsp
	movq	%rsp, -872(%rbp)
	movq	$3, %rax
	movq	-872(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, -880(%rbp)
	movq	-864(%rbp), %rax
	movq	-880(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond553
	.text
_post520:
	movq	-176(%rbp), %rax
	movq	-160(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -888(%rbp)
	movq	-888(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -896(%rbp)
	movq	-896(%rbp), %rax
	movq	%r11, %rcx
	movq	%rax, (%rcx)
	jmp	_cond505
	.text
_post551:
	movq	-864(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$3, %rdi
	callq	oat_alloc_array
	movq	%rax, -904(%rbp)
	movq	-904(%rbp), %rax
	movq	%rax, -912(%rbp)
	subq	$8, %rsp
	movq	%rsp, -920(%rbp)
	movq	$3, %rax
	movq	-920(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, -928(%rbp)
	movq	-912(%rbp), %rax
	movq	-928(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond601
	.text
_post568:
	movq	-288(%rbp), %rax
	movq	-272(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -936(%rbp)
	movq	-936(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -944(%rbp)
	movq	-944(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond553
	.text
_post599:
	movq	-912(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$3, %rdi
	callq	oat_alloc_array
	movq	%rax, -952(%rbp)
	movq	-952(%rbp), %rax
	movq	%rax, -960(%rbp)
	subq	$8, %rsp
	movq	%rsp, -968(%rbp)
	movq	$3, %rax
	movq	-968(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, -976(%rbp)
	movq	-960(%rbp), %rax
	movq	-976(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond649
	.text
_post616:
	movq	-400(%rbp), %rax
	movq	-384(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -984(%rbp)
	movq	-984(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -992(%rbp)
	movq	-992(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond601
	.text
_post647:
	movq	-960(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$3, %rdi
	callq	oat_alloc_array
	movq	%rax, %r10
	movq	%r10, %rax
	movq	%rax, %r11
	subq	$8, %rsp
	movq	%rsp, %r10
	movq	$3, %rax
	movq	%r10, %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, -1000(%rbp)
	movq	%r11, %rax
	movq	-1000(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-88(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond697
	.text
_post664:
	movq	-512(%rbp), %rax
	movq	-496(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1008(%rbp)
	movq	-1008(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -1016(%rbp)
	movq	-1016(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond649
	.text
_post695:
	movq	%r11, %rax
	movq	-96(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	%r11, %rax
	movq	%rax, %r10
	pushq	%r11
	pushq	%r10
	movq	$0, %rsi
	movq	%r10, %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	%r11, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %r10
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	%r11, (%r10)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	%r11, %rax
	movq	%rax, %r10
	pushq	%r11
	pushq	%r10
	movq	$0, %rsi
	movq	%r10, %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	%r11, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %r10
	movq	(%r10), %r11
	movq	%r11, %rax
	movq	%rax, %r10
	pushq	%r11
	pushq	%r10
	movq	$0, %rsi
	movq	%r10, %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	%r11, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %r10
	movq	$2, %rax
	movq	%r10, %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	%r11, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	%r11, %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	%r11, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	%r11, %rax
	movq	-80(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	%r11, %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	%r11, %rax
	movq	%rax, %r10
	pushq	%r11
	pushq	%r10
	movq	$0, %rsi
	movq	%r10, %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	%r11, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %r10
	movq	(%r10), %r11
	movq	%r11, %rax
	movq	%rax, %r10
	pushq	%r11
	pushq	%r10
	movq	$0, %rsi
	movq	%r10, %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	%r11, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %r10
	movq	(%r10), %r11
	movq	%r11, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	