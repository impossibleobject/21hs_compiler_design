	.data
	.globl	_str_arr3219
_str_arr3219:
	.asciz	" "
	.data
	.globl	_str_arr3225
_str_arr3225:
	.asciz	" "
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
	movq	$0, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$10, %rdi
	callq	oat_alloc_array
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -40(%rbp)
	movq	$126, %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, -48(%rbp)
	movq	$125, %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$16, %rax
	movq	%rax, -56(%rbp)
	movq	$124, %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$24, %rax
	movq	%rax, -64(%rbp)
	movq	$123, %rax
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$32, %rax
	movq	%rax, -72(%rbp)
	movq	$122, %rax
	movq	-72(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$40, %rax
	movq	%rax, -80(%rbp)
	movq	$121, %rax
	movq	-80(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$48, %rax
	movq	%rax, -88(%rbp)
	movq	$120, %rax
	movq	-88(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$56, %rax
	movq	%rax, -96(%rbp)
	movq	$119, %rax
	movq	-96(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$64, %rax
	movq	%rax, -104(%rbp)
	movq	$118, %rax
	movq	-104(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$72, %rax
	movq	%rax, -112(%rbp)
	movq	$117, %rax
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rdi
	callq	string_of_array
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rdi
	callq	print_string
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	$9, %rdx
	movq	$0, %rsi
	movq	-136(%rbp), %rdi
	callq	oat_mergesort
	leaq	_str_arr3219(%rip), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rdi
	callq	print_string
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rdi
	callq	string_of_array
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rdi
	callq	print_string
	leaq	_str_arr3225(%rip), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rdi
	callq	print_string
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	oat_mergesort
oat_mergesort:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$176, %rsp
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
	movq	%rdx, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-48(%rbp), %rax
	setl	-56(%rbp)
	andq	$1, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	_then3181
	jmp	_else3180
	.text
_else3180:
	jmp	_merge3179
	.text
_merge3179:
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then3181:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	addq	-72(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	$1, %rcx
	shrq	%cl, %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-96(%rbp), %rdx
	movq	-104(%rbp), %rsi
	movq	-112(%rbp), %rdi
	callq	oat_mergesort
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -136(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-120(%rbp), %rdx
	movq	-136(%rbp), %rsi
	movq	-144(%rbp), %rdi
	callq	oat_mergesort
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-152(%rbp), %rcx
	movq	-160(%rbp), %rdx
	movq	-168(%rbp), %rsi
	movq	-176(%rbp), %rdi
	callq	merge
	jmp	_merge3179
	.text
	.globl	merge
merge:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$944, %rsp
	movq	%rcx, -8(%rbp)
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
	movq	%rdi, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%rsi, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%rdx, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$50, %rdi
	callq	oat_alloc_array
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -96(%rbp)
	subq	$8, %rsp
	movq	%rsp, -104(%rbp)
	movq	$50, %rax
	movq	-104(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, -112(%rbp)
	movq	-96(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-72(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond2992
	.text
_body2991:
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	-128(%rbp), %rsi
	movq	-136(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-120(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-128(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -144(%rbp)
	movq	$0, %rax
	movq	-144(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond2992
	.text
_body3021:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	-176(%rbp), %rsi
	movq	-184(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-168(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-176(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -200(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -208(%rbp)
	movq	-56(%rbp), %rax
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
	movq	-232(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -240(%rbp)
	movq	-200(%rbp), %rax
	cmpq	-240(%rbp), %rax
	setl	-248(%rbp)
	andq	$1, -248(%rbp)
	cmpq	$0, -248(%rbp)
	jne	_then3074
	jmp	_else3073
	.text
_body3079:
	movq	-80(%rbp), %rax
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
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -288(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -296(%rbp)
	movq	-288(%rbp), %rax
	movq	%rax, -304(%rbp)
	movq	-296(%rbp), %rsi
	movq	-304(%rbp), %rdi
	callq	oat_assert_array_length
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
	movq	-320(%rbp), %rax
	movq	-280(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -328(%rbp)
	movq	-328(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -336(%rbp)
	movq	-336(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -344(%rbp)
	movq	-344(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -352(%rbp)
	movq	-352(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond3080
	.text
_body3103:
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -360(%rbp)
	movq	-64(%rbp), %rax
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
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -392(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -400(%rbp)
	movq	-392(%rbp), %rax
	movq	%rax, -408(%rbp)
	movq	-400(%rbp), %rsi
	movq	-408(%rbp), %rdi
	callq	oat_assert_array_length
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
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -432(%rbp)
	movq	-432(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -440(%rbp)
	movq	-440(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -448(%rbp)
	movq	-448(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -456(%rbp)
	movq	-456(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond3104
	.text
_body3129:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -464(%rbp)
	movq	-48(%rbp), %rax
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
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -496(%rbp)
	movq	-48(%rbp), %rax
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
	movq	-520(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -528(%rbp)
	movq	-528(%rbp), %rax
	movq	-488(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -536(%rbp)
	movq	-536(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -544(%rbp)
	movq	-544(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond3130
	.text
_cond2992:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -552(%rbp)
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -560(%rbp)
	movq	-552(%rbp), %rax
	cmpq	-560(%rbp), %rax
	setl	-568(%rbp)
	andq	$1, -568(%rbp)
	cmpq	$0, -568(%rbp)
	jne	_body2991
	jmp	_post2990
	.text
_cond3022:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -576(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -584(%rbp)
	movq	-576(%rbp), %rax
	cmpq	-584(%rbp), %rax
	setle	-592(%rbp)
	andq	$1, -592(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -600(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -608(%rbp)
	movq	-600(%rbp), %rax
	cmpq	-608(%rbp), %rax
	setle	-616(%rbp)
	andq	$1, -616(%rbp)
	movq	-592(%rbp), %rax
	andq	-616(%rbp), %rax
	movq	%rax, -624(%rbp)
	cmpq	$0, -624(%rbp)
	jne	_body3021
	jmp	_post3020
	.text
_cond3080:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -632(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -640(%rbp)
	movq	-632(%rbp), %rax
	cmpq	-640(%rbp), %rax
	setle	-648(%rbp)
	andq	$1, -648(%rbp)
	cmpq	$0, -648(%rbp)
	jne	_body3079
	jmp	_post3078
	.text
_cond3104:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -656(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -664(%rbp)
	movq	-656(%rbp), %rax
	cmpq	-664(%rbp), %rax
	setle	-672(%rbp)
	andq	$1, -672(%rbp)
	cmpq	$0, -672(%rbp)
	jne	_body3103
	jmp	_post3102
	.text
_cond3130:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -680(%rbp)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -688(%rbp)
	movq	-680(%rbp), %rax
	cmpq	-688(%rbp), %rax
	setl	-696(%rbp)
	andq	$1, -696(%rbp)
	cmpq	$0, -696(%rbp)
	jne	_body3129
	jmp	_post3128
	.text
_else3073:
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -704(%rbp)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -712(%rbp)
	movq	-704(%rbp), %rax
	movq	%rax, -720(%rbp)
	movq	-712(%rbp), %rsi
	movq	-720(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-704(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-712(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -728(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -736(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -744(%rbp)
	movq	-736(%rbp), %rax
	movq	%rax, -752(%rbp)
	movq	-744(%rbp), %rsi
	movq	-752(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-736(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-744(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -760(%rbp)
	movq	-760(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -768(%rbp)
	movq	-768(%rbp), %rax
	movq	-728(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -776(%rbp)
	movq	-776(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -784(%rbp)
	movq	-784(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -792(%rbp)
	movq	-792(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -800(%rbp)
	movq	-800(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_merge3072
	.text
_merge3072:
	jmp	_cond3022
	.text
_post2990:
	movq	-96(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -808(%rbp)
	movq	-808(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -816(%rbp)
	movq	-816(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -824(%rbp)
	movq	-824(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -832(%rbp)
	movq	-832(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond3022
	.text
_post3020:
	jmp	_cond3080
	.text
_post3078:
	jmp	_cond3104
	.text
_post3102:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -840(%rbp)
	movq	-840(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond3130
	.text
_post3128:
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then3074:
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -848(%rbp)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -856(%rbp)
	movq	-848(%rbp), %rax
	movq	%rax, -864(%rbp)
	movq	-856(%rbp), %rsi
	movq	-864(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-848(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-856(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -872(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -880(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -888(%rbp)
	movq	-880(%rbp), %rax
	movq	%rax, -896(%rbp)
	movq	-888(%rbp), %rsi
	movq	-896(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-880(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-888(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -904(%rbp)
	movq	-904(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -912(%rbp)
	movq	-912(%rbp), %rax
	movq	-872(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -920(%rbp)
	movq	-920(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -928(%rbp)
	movq	-928(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -936(%rbp)
	movq	-936(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -944(%rbp)
	movq	-944(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_merge3072