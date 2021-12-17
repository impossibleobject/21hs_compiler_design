	.text
	.globl	quick_sort
quick_sort:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$152, %rsp
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
	jne	_then9255
	jmp	_else9254
	.text
_else9254:
	jmp	_merge9253
	.text
_merge9253:
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then9255:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-64(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-80(%rbp), %rdi
	callq	partition
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -104(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-104(%rbp), %rdx
	movq	-112(%rbp), %rsi
	movq	-120(%rbp), %rdi
	callq	quick_sort
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -144(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)
	movq	-128(%rbp), %rdx
	movq	-144(%rbp), %rsi
	movq	-152(%rbp), %rdi
	callq	quick_sort
	jmp	_merge9253
	.text
	.globl	partition
partition:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$704, %rsp
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
	movq	%rdi, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%rsi, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%rdx, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-16(%rbp), %rax
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
	movq	-104(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond9120
	.text
_body9119:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond9138
	.text
_body9137:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond9138
	.text
_body9154:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond9155
	.text
_cond9120:
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	cmpq	$0, %rax
	sete	-192(%rbp)
	andq	$1, -192(%rbp)
	cmpq	$0, -192(%rbp)
	jne	_body9119
	jmp	_post9118
	.text
_cond9138:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -200(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -208(%rbp)
	movq	-200(%rbp), %rax
	movq	%rax, -216(%rbp)
	movq	-208(%rbp), %rsi
	movq	-216(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-200(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-208(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -232(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -240(%rbp)
	movq	-232(%rbp), %rax
	cmpq	-240(%rbp), %rax
	setle	-248(%rbp)
	andq	$1, -248(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -256(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -264(%rbp)
	movq	-256(%rbp), %rax
	cmpq	-264(%rbp), %rax
	setle	-272(%rbp)
	andq	$1, -272(%rbp)
	movq	-248(%rbp), %rax
	andq	-272(%rbp), %rax
	movq	%rax, -280(%rbp)
	cmpq	$0, -280(%rbp)
	jne	_body9137
	jmp	_post9136
	.text
_cond9155:
	movq	-8(%rbp), %rax
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
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -328(%rbp)
	movq	-320(%rbp), %rax
	cmpq	-328(%rbp), %rax
	setg	-336(%rbp)
	andq	$1, -336(%rbp)
	cmpq	$0, -336(%rbp)
	jne	_body9154
	jmp	_post9153
	.text
_else9164:
	jmp	_merge9163
	.text
_else9195:
	jmp	_merge9194
	.text
_merge9163:
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -344(%rbp)
	movq	-344(%rbp), %rax
	cmpq	$0, %rax
	sete	-352(%rbp)
	andq	$1, -352(%rbp)
	cmpq	$0, -352(%rbp)
	jne	_then9196
	jmp	_else9195
	.text
_merge9194:
	jmp	_cond9120
	.text
_post9118:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -360(%rbp)
	movq	-16(%rbp), %rax
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
	movq	-384(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -392(%rbp)
	movq	-392(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -400(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -408(%rbp)
	movq	-400(%rbp), %rax
	movq	%rax, -416(%rbp)
	movq	-408(%rbp), %rsi
	movq	-416(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-400(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-408(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -424(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -432(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -440(%rbp)
	movq	-432(%rbp), %rax
	movq	%rax, -448(%rbp)
	movq	-440(%rbp), %rsi
	movq	-448(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-432(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-440(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -456(%rbp)
	movq	-456(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -464(%rbp)
	movq	-464(%rbp), %rax
	movq	-424(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -472(%rbp)
	movq	-48(%rbp), %rax
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
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -504(%rbp)
	movq	-504(%rbp), %rax
	movq	-496(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -512(%rbp)
	movq	-512(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_post9136:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -520(%rbp)
	movq	-520(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -528(%rbp)
	movq	-528(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond9155
	.text
_post9153:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -536(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -544(%rbp)
	movq	-536(%rbp), %rax
	cmpq	-544(%rbp), %rax
	setge	-552(%rbp)
	andq	$1, -552(%rbp)
	cmpq	$0, -552(%rbp)
	jne	_then9165
	jmp	_else9164
	.text
_then9165:
	movq	$1, %rax
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_merge9163
	.text
_then9196:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -560(%rbp)
	movq	-40(%rbp), %rax
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
	movq	-592(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -600(%rbp)
	movq	-40(%rbp), %rax
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
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -632(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -640(%rbp)
	movq	-632(%rbp), %rax
	movq	%rax, -648(%rbp)
	movq	-640(%rbp), %rsi
	movq	-648(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-632(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-640(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -656(%rbp)
	movq	-656(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -664(%rbp)
	movq	-664(%rbp), %rax
	movq	-624(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -672(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -680(%rbp)
	movq	-672(%rbp), %rax
	movq	%rax, -688(%rbp)
	movq	-680(%rbp), %rsi
	movq	-688(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-672(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-680(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -696(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -704(%rbp)
	movq	-704(%rbp), %rax
	movq	-696(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_merge9194
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$136, %rsp
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	movq	$9, %rdi
	callq	oat_alloc_array
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -32(%rbp)
	movq	$107, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, -40(%rbp)
	movq	$112, %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$16, %rax
	movq	%rax, -48(%rbp)
	movq	$121, %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$24, %rax
	movq	%rax, -56(%rbp)
	movq	$102, %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$32, %rax
	movq	%rax, -64(%rbp)
	movq	$123, %rax
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$40, %rax
	movq	%rax, -72(%rbp)
	movq	$115, %rax
	movq	-72(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$48, %rax
	movq	%rax, -80(%rbp)
	movq	$104, %rax
	movq	-80(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$56, %rax
	movq	%rax, -88(%rbp)
	movq	$111, %rax
	movq	-88(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$64, %rax
	movq	%rax, -96(%rbp)
	movq	$109, %rax
	movq	-96(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rdi
	callq	string_of_array
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rdi
	callq	print_string
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	$8, %rdx
	movq	$0, %rsi
	movq	-120(%rbp), %rdi
	callq	quick_sort
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rdi
	callq	string_of_array
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rdi
	callq	print_string
	movq	$255, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	