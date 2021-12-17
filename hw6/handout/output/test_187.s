	.data
	.globl	_str_arr9289
_str_arr9289:
	.asciz	"\n"
	.text
	.globl	min
min:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$208, %rsp
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
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	$0, %rsi
	movq	-48(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-40(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond9526
	.text
_body9525:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rax
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
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-104(%rbp), %rax
	cmpq	-112(%rbp), %rax
	setl	-120(%rbp)
	andq	$1, -120(%rbp)
	cmpq	$0, -120(%rbp)
	jne	_then9544
	jmp	_else9543
	.text
_cond9526:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	-128(%rbp), %rax
	cmpq	-136(%rbp), %rax
	setl	-144(%rbp)
	andq	$1, -144(%rbp)
	cmpq	$0, -144(%rbp)
	jne	_body9525
	jmp	_post9524
	.text
_else9543:
	jmp	_merge9542
	.text
_merge9542:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond9526
	.text
_post9524:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then9544:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-32(%rbp), %rax
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
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_merge9542
	.text
	.globl	max
max:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$208, %rsp
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
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	$0, %rsi
	movq	-48(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-40(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond9483
	.text
_body9482:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rax
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
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-104(%rbp), %rax
	cmpq	-112(%rbp), %rax
	setg	-120(%rbp)
	andq	$1, -120(%rbp)
	cmpq	$0, -120(%rbp)
	jne	_then9501
	jmp	_else9500
	.text
_cond9483:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	-128(%rbp), %rax
	cmpq	-136(%rbp), %rax
	setl	-144(%rbp)
	andq	$1, -144(%rbp)
	cmpq	$0, -144(%rbp)
	jne	_body9482
	jmp	_post9481
	.text
_else9500:
	jmp	_merge9499
	.text
_merge9499:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond9483
	.text
_post9481:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then9501:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-32(%rbp), %rax
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
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_merge9499
	.text
	.globl	count_sort
count_sort:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$888, %rsp
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
	movq	%rdi, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%rsi, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-96(%rbp), %rsi
	movq	-104(%rbp), %rdi
	callq	min
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	-120(%rbp), %rsi
	movq	-128(%rbp), %rdi
	callq	max
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)
	movq	-144(%rbp), %rax
	subq	-152(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rdi
	callq	oat_alloc_array
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -184(%rbp)
	subq	$8, %rsp
	movq	%rsp, -192(%rbp)
	movq	-168(%rbp), %rax
	movq	-192(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, -200(%rbp)
	movq	-184(%rbp), %rax
	movq	-200(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond9331
	.text
_body9330:
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -208(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -216(%rbp)
	movq	-208(%rbp), %rax
	movq	%rax, -224(%rbp)
	movq	-216(%rbp), %rsi
	movq	-224(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-208(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-216(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -232(%rbp)
	movq	$0, %rax
	movq	-232(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -240(%rbp)
	movq	-240(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -248(%rbp)
	movq	-248(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond9331
	.text
_body9351:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -256(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -264(%rbp)
	movq	-56(%rbp), %rax
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
	movq	-288(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -296(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -304(%rbp)
	movq	-296(%rbp), %rax
	subq	-304(%rbp), %rax
	movq	%rax, -312(%rbp)
	movq	-256(%rbp), %rax
	movq	%rax, -320(%rbp)
	movq	-312(%rbp), %rsi
	movq	-320(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-256(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-312(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -328(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -336(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -344(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -352(%rbp)
	movq	-344(%rbp), %rax
	movq	%rax, -360(%rbp)
	movq	-352(%rbp), %rsi
	movq	-360(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-344(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-352(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -368(%rbp)
	movq	-368(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -376(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -384(%rbp)
	movq	-376(%rbp), %rax
	subq	-384(%rbp), %rax
	movq	%rax, -392(%rbp)
	movq	-336(%rbp), %rax
	movq	%rax, -400(%rbp)
	movq	-392(%rbp), %rsi
	movq	-400(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-336(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-392(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -408(%rbp)
	movq	-408(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -416(%rbp)
	movq	-416(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -424(%rbp)
	movq	-424(%rbp), %rax
	movq	-328(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -432(%rbp)
	movq	-432(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -440(%rbp)
	movq	-440(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond9352
	.text
_body9399:
	movq	-712(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -448(%rbp)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -456(%rbp)
	movq	-448(%rbp), %rax
	movq	%rax, -464(%rbp)
	movq	-456(%rbp), %rsi
	movq	-464(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-448(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-456(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -472(%rbp)
	movq	$0, %rax
	movq	-472(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -480(%rbp)
	movq	-480(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -488(%rbp)
	movq	-488(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond9400
	.text
_body9418:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -496(%rbp)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -504(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -512(%rbp)
	movq	-504(%rbp), %rax
	subq	-512(%rbp), %rax
	movq	%rax, -520(%rbp)
	movq	-496(%rbp), %rax
	movq	%rax, -528(%rbp)
	movq	-520(%rbp), %rsi
	movq	-528(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-496(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-520(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -536(%rbp)
	movq	-536(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -544(%rbp)
	movq	-544(%rbp), %rax
	cmpq	$0, %rax
	setg	-552(%rbp)
	andq	$1, -552(%rbp)
	cmpq	$0, -552(%rbp)
	jne	_then9461
	jmp	_else9460
	.text
_cond9331:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -560(%rbp)
	movq	-192(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -568(%rbp)
	movq	-560(%rbp), %rax
	cmpq	-568(%rbp), %rax
	setl	-576(%rbp)
	andq	$1, -576(%rbp)
	cmpq	$0, -576(%rbp)
	jne	_body9330
	jmp	_post9329
	.text
_cond9352:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -584(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -592(%rbp)
	movq	-584(%rbp), %rax
	cmpq	-592(%rbp), %rax
	setl	-600(%rbp)
	andq	$1, -600(%rbp)
	cmpq	$0, -600(%rbp)
	jne	_body9351
	jmp	_post9350
	.text
_cond9400:
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -608(%rbp)
	movq	-704(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -616(%rbp)
	movq	-608(%rbp), %rax
	cmpq	-616(%rbp), %rax
	setl	-624(%rbp)
	andq	$1, -624(%rbp)
	cmpq	$0, -624(%rbp)
	jne	_body9399
	jmp	_post9398
	.text
_cond9419:
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -632(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -640(%rbp)
	movq	-632(%rbp), %rax
	cmpq	-640(%rbp), %rax
	setle	-648(%rbp)
	andq	$1, -648(%rbp)
	cmpq	$0, -648(%rbp)
	jne	_body9418
	jmp	_post9417
	.text
_else9460:
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -656(%rbp)
	movq	-656(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -664(%rbp)
	movq	-664(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_merge9459
	.text
_merge9459:
	jmp	_cond9419
	.text
_post9329:
	movq	-184(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond9352
	.text
_post9350:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -672(%rbp)
	movq	-672(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-72(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -680(%rbp)
	movq	-680(%rbp), %rdi
	callq	oat_alloc_array
	movq	%rax, -688(%rbp)
	movq	-688(%rbp), %rax
	movq	%rax, -696(%rbp)
	subq	$8, %rsp
	movq	%rsp, -704(%rbp)
	movq	-680(%rbp), %rax
	movq	-704(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, -712(%rbp)
	movq	-696(%rbp), %rax
	movq	-712(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-80(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond9400
	.text
_post9398:
	movq	-696(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond9419
	.text
_post9417:
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -720(%rbp)
	movq	-720(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then9461:
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -728(%rbp)
	movq	-72(%rbp), %rax
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
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -760(%rbp)
	movq	-760(%rbp), %rax
	movq	-752(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -768(%rbp)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -776(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -784(%rbp)
	movq	-776(%rbp), %rax
	subq	-784(%rbp), %rax
	movq	%rax, -792(%rbp)
	movq	-768(%rbp), %rax
	movq	%rax, -800(%rbp)
	movq	-792(%rbp), %rsi
	movq	-800(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-768(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-792(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -808(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -816(%rbp)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -824(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -832(%rbp)
	movq	-824(%rbp), %rax
	subq	-832(%rbp), %rax
	movq	%rax, -840(%rbp)
	movq	-816(%rbp), %rax
	movq	%rax, -848(%rbp)
	movq	-840(%rbp), %rsi
	movq	-848(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-816(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-840(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -856(%rbp)
	movq	-856(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -864(%rbp)
	movq	-864(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -872(%rbp)
	movq	-872(%rbp), %rax
	movq	-808(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -880(%rbp)
	movq	-880(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -888(%rbp)
	movq	-888(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_merge9459
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$176, %rsp
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, -16(%rbp)
	subq	$8, %rsp
	movq	%rsp, -24(%rbp)
	movq	$9, %rdi
	callq	oat_alloc_array
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -48(%rbp)
	movq	$65, %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-40(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, -56(%rbp)
	movq	$70, %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-40(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$16, %rax
	movq	%rax, -64(%rbp)
	movq	$72, %rax
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-40(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$24, %rax
	movq	%rax, -72(%rbp)
	movq	$90, %rax
	movq	-72(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-40(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$32, %rax
	movq	%rax, -80(%rbp)
	movq	$65, %rax
	movq	-80(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-40(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$40, %rax
	movq	%rax, -88(%rbp)
	movq	$65, %rax
	movq	-88(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-40(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$48, %rax
	movq	%rax, -96(%rbp)
	movq	$69, %rax
	movq	-96(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-40(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$56, %rax
	movq	%rax, -104(%rbp)
	movq	$89, %rax
	movq	-104(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-40(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$64, %rax
	movq	%rax, -112(%rbp)
	movq	$67, %rax
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$9, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rdi
	callq	string_of_array
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rdi
	callq	print_string
	leaq	_str_arr9289(%rip), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rdi
	callq	print_string
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)
	movq	-144(%rbp), %rsi
	movq	-152(%rbp), %rdi
	callq	count_sort
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rdi
	callq	string_of_array
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rdi
	callq	print_string
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	