	.data
	.globl	_str_arr7889
_str_arr7889:
	.asciz	"\n"
	.text
	.globl	min
min:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$184, %rsp
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
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	pushq	%r11
	pushq	%r10
	movq	$0, %rsi
	movq	-32(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	-24(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond8126
	.text
_body8125:
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -72(%rbp)
	pushq	%r11
	pushq	%r10
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	-56(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-64(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	setl	-104(%rbp)
	andq	$1, -104(%rbp)
	cmpq	$0, -104(%rbp)
	jne	_then8144
	jmp	_else8143
	.text
_cond8126:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-112(%rbp), %rax
	cmpq	-120(%rbp), %rax
	setl	-128(%rbp)
	andq	$1, -128(%rbp)
	cmpq	$0, -128(%rbp)
	jne	_body8125
	jmp	_post8124
	.text
_else8143:
	jmp	_merge8142
	.text
_merge8142:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond8126
	.text
_post8124:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	%r11, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then8144:
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -168(%rbp)
	pushq	%r11
	pushq	%r10
	movq	-160(%rbp), %rsi
	movq	-168(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
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
	movq	-184(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_merge8142
	.text
	.globl	max
max:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$184, %rsp
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
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	pushq	%r11
	pushq	%r10
	movq	$0, %rsi
	movq	-32(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	-24(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond8083
	.text
_body8082:
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -72(%rbp)
	pushq	%r11
	pushq	%r10
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	-56(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-64(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	setg	-104(%rbp)
	andq	$1, -104(%rbp)
	cmpq	$0, -104(%rbp)
	jne	_then8101
	jmp	_else8100
	.text
_cond8083:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-112(%rbp), %rax
	cmpq	-120(%rbp), %rax
	setl	-128(%rbp)
	andq	$1, -128(%rbp)
	cmpq	$0, -128(%rbp)
	jne	_body8082
	jmp	_post8081
	.text
_else8100:
	jmp	_merge8099
	.text
_merge8099:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond8083
	.text
_post8081:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	%r11, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then8101:
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -168(%rbp)
	pushq	%r11
	pushq	%r10
	movq	-160(%rbp), %rsi
	movq	-168(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
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
	movq	-184(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_merge8099
	.text
	.globl	count_sort
count_sort:
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
	subq	$8, %rsp
	movq	%rsp, -48(%rbp)
	subq	$8, %rsp
	movq	%rsp, -56(%rbp)
	subq	$8, %rsp
	movq	%rsp, -64(%rbp)
	subq	$8, %rsp
	movq	%rsp, -72(%rbp)
	movq	%rdi, (%r11)
	movq	%rsi, (%r10)
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	pushq	%r11
	pushq	%r10
	movq	-80(%rbp), %rsi
	movq	-88(%rbp), %rdi
	callq	min
	popq	%r10
	popq	%r11
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)
	pushq	%r11
	pushq	%r10
	movq	-104(%rbp), %rsi
	movq	-112(%rbp), %rdi
	callq	max
	popq	%r10
	popq	%r11
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	-128(%rbp), %rax
	subq	-136(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -152(%rbp)
	pushq	%r11
	pushq	%r10
	movq	-152(%rbp), %rdi
	callq	oat_alloc_array
	popq	%r10
	popq	%r11
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -168(%rbp)
	subq	$8, %rsp
	movq	%rsp, -176(%rbp)
	movq	-152(%rbp), %rax
	movq	-176(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, -184(%rbp)
	movq	-168(%rbp), %rax
	movq	-184(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond7931
	.text
_body7930:
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -192(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -200(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, -208(%rbp)
	pushq	%r11
	pushq	%r10
	movq	-200(%rbp), %rsi
	movq	-208(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	-192(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-200(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -216(%rbp)
	movq	$0, %rax
	movq	-216(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -232(%rbp)
	movq	-232(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond7931
	.text
_body7951:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -240(%rbp)
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -248(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -256(%rbp)
	movq	-248(%rbp), %rax
	movq	%rax, -264(%rbp)
	pushq	%r11
	pushq	%r10
	movq	-256(%rbp), %rsi
	movq	-264(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	-248(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-256(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -272(%rbp)
	movq	-272(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -280(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -288(%rbp)
	movq	-280(%rbp), %rax
	subq	-288(%rbp), %rax
	movq	%rax, -296(%rbp)
	movq	-240(%rbp), %rax
	movq	%rax, -304(%rbp)
	pushq	%r11
	pushq	%r10
	movq	-296(%rbp), %rsi
	movq	-304(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	-240(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-296(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -312(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -320(%rbp)
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -328(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -336(%rbp)
	movq	-328(%rbp), %rax
	movq	%rax, -344(%rbp)
	pushq	%r11
	pushq	%r10
	movq	-336(%rbp), %rsi
	movq	-344(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	-328(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-336(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -352(%rbp)
	movq	-352(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -360(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -368(%rbp)
	movq	-360(%rbp), %rax
	subq	-368(%rbp), %rax
	movq	%rax, -376(%rbp)
	movq	-320(%rbp), %rax
	movq	%rax, -384(%rbp)
	pushq	%r11
	pushq	%r10
	movq	-376(%rbp), %rsi
	movq	-384(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	-320(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-376(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -392(%rbp)
	movq	-392(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -400(%rbp)
	movq	-400(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -408(%rbp)
	movq	-408(%rbp), %rax
	movq	-312(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -416(%rbp)
	movq	-416(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -424(%rbp)
	movq	-424(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond7952
	.text
_body7999:
	movq	-632(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -432(%rbp)
	movq	-64(%rbp), %rax
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
	movq	$0, %rax
	movq	-456(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -464(%rbp)
	movq	-464(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -472(%rbp)
	movq	-472(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond8000
	.text
_body8018:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r10
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -480(%rbp)
	movq	%r10, %rax
	subq	-480(%rbp), %rax
	movq	%rax, -488(%rbp)
	movq	%r11, %rax
	movq	%rax, -496(%rbp)
	pushq	%r11
	movq	-488(%rbp), %rsi
	movq	-496(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r11
	movq	%r11, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-488(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -504(%rbp)
	movq	-504(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	cmpq	$0, %r11
	setg	%r10b
	andq	$1, %r10
	cmpq	$0, %r10
	jne	_then8061
	jmp	_else8060
	.text
_cond7931:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -512(%rbp)
	movq	-176(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -520(%rbp)
	movq	-512(%rbp), %rax
	cmpq	-520(%rbp), %rax
	setl	-528(%rbp)
	andq	$1, -528(%rbp)
	cmpq	$0, -528(%rbp)
	jne	_body7930
	jmp	_post7929
	.text
_cond7952:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -536(%rbp)
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -544(%rbp)
	movq	-536(%rbp), %rax
	cmpq	-544(%rbp), %rax
	setl	-552(%rbp)
	andq	$1, -552(%rbp)
	cmpq	$0, -552(%rbp)
	jne	_body7951
	jmp	_post7950
	.text
_cond8000:
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -560(%rbp)
	movq	-624(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -568(%rbp)
	movq	-560(%rbp), %rax
	cmpq	-568(%rbp), %rax
	setl	-576(%rbp)
	andq	$1, -576(%rbp)
	cmpq	$0, -576(%rbp)
	jne	_body7999
	jmp	_post7998
	.text
_cond8019:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r10
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	cmpq	%r11, %r10
	setle	-584(%rbp)
	andq	$1, -584(%rbp)
	cmpq	$0, -584(%rbp)
	jne	_body8018
	jmp	_post8017
	.text
_else8060:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	%r11, %r10
	addq	$1, %r10
	movq	%r10, %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_merge8059
	.text
_merge8059:
	jmp	_cond8019
	.text
_post7929:
	movq	-168(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond7952
	.text
_post7950:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -592(%rbp)
	movq	-592(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -600(%rbp)
	movq	-600(%rbp), %rdi
	callq	oat_alloc_array
	movq	%rax, -608(%rbp)
	movq	-608(%rbp), %rax
	movq	%rax, -616(%rbp)
	subq	$8, %rsp
	movq	%rsp, -624(%rbp)
	movq	-600(%rbp), %rax
	movq	-624(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, -632(%rbp)
	movq	-616(%rbp), %rax
	movq	-632(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond8000
	.text
_post7998:
	movq	-616(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond8019
	.text
_post8017:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r10
	movq	%r10, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then8061:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r10
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	%r10, %rax
	movq	%rax, -640(%rbp)
	pushq	%r11
	pushq	%r10
	movq	%r11, %rsi
	movq	-640(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	%r10, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%r11, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -648(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r10
	movq	%r10, %rax
	movq	-648(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r10
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -656(%rbp)
	movq	%r10, %rax
	subq	-656(%rbp), %rax
	movq	%rax, -664(%rbp)
	movq	%r11, %rax
	movq	%rax, -672(%rbp)
	pushq	%r11
	movq	-664(%rbp), %rsi
	movq	-672(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r11
	movq	%r11, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-664(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -680(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -688(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -696(%rbp)
	movq	-688(%rbp), %rax
	subq	-696(%rbp), %rax
	movq	%rax, -704(%rbp)
	movq	%r11, %rax
	movq	%rax, -712(%rbp)
	pushq	%r11
	movq	-704(%rbp), %rsi
	movq	-712(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r11
	movq	%r11, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-704(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -720(%rbp)
	movq	-720(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -728(%rbp)
	movq	-728(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -736(%rbp)
	movq	-736(%rbp), %rax
	movq	-680(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r10
	movq	%r10, %r11
	addq	$1, %r11
	movq	%r11, %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_merge8059
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$128, %rsp
	subq	$8, %rsp
	movq	%rsp, %r11
	subq	$8, %rsp
	movq	%rsp, %r10
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	pushq	%r11
	pushq	%r10
	movq	$9, %rdi
	callq	oat_alloc_array
	popq	%r10
	popq	%r11
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -32(%rbp)
	movq	$65, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, -40(%rbp)
	movq	$70, %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$16, %rax
	movq	%rax, -48(%rbp)
	movq	$72, %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$24, %rax
	movq	%rax, -56(%rbp)
	movq	$90, %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$32, %rax
	movq	%rax, -64(%rbp)
	movq	$65, %rax
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$40, %rax
	movq	%rax, -72(%rbp)
	movq	$65, %rax
	movq	-72(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$48, %rax
	movq	%rax, -80(%rbp)
	movq	$69, %rax
	movq	-80(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$56, %rax
	movq	%rax, -88(%rbp)
	movq	$89, %rax
	movq	-88(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$64, %rax
	movq	%rax, -96(%rbp)
	movq	$67, %rax
	movq	-96(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movq	%r11, %rcx
	movq	%rax, (%rcx)
	movq	$9, %rax
	movq	%r10, %rcx
	movq	%rax, (%rcx)
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	pushq	%r11
	pushq	%r10
	movq	-104(%rbp), %rdi
	callq	string_of_array
	popq	%r10
	popq	%r11
	movq	%rax, -112(%rbp)
	pushq	%r11
	pushq	%r10
	movq	-112(%rbp), %rdi
	callq	print_string
	popq	%r10
	popq	%r11
	leaq	_str_arr7889(%rip), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, -120(%rbp)
	pushq	%r11
	pushq	%r10
	movq	-120(%rbp), %rdi
	callq	print_string
	popq	%r10
	popq	%r11
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	(%r11), %r10
	pushq	%r10
	movq	-128(%rbp), %rsi
	movq	%r10, %rdi
	callq	count_sort
	popq	%r10
	movq	%rax, %r11
	movq	%r11, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	pushq	%r11
	movq	%r11, %rdi
	callq	string_of_array
	popq	%r11
	movq	%rax, %r10
	pushq	%r10
	movq	%r10, %rdi
	callq	print_string
	popq	%r10
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	