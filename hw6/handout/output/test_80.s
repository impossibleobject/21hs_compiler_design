	.text
	.globl	f
f:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	subq	$8, %rsp
	movq	%rsp, %r11
	movq	%rdi, (%r11)
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %r11
	pushq	%r11
	movq	$1, %rsi
	movq	%r11, %rdi
	callq	oat_assert_array_length
	popq	%r11
	movq	-8(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, %r11
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	g
g:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$216, %rsp
	subq	$8, %rsp
	movq	%rsp, %r11
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, -16(%rbp)
	subq	$8, %rsp
	movq	%rsp, -24(%rbp)
	movq	%rdi, (%r11)
	pushq	%r11
	movq	$3, %rdi
	callq	oat_alloc_array
	popq	%r11
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	subq	$8, %rsp
	movq	%rsp, -48(%rbp)
	movq	$3, %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond1332
	.text
_body1331:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -80(%rbp)
	pushq	%r11
	movq	-72(%rbp), %rsi
	movq	-80(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r11
	movq	-64(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-72(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -88(%rbp)
	movq	$0, %rax
	movq	-88(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond1332
	.text
_body1351:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -128(%rbp)
	pushq	%r11
	movq	-120(%rbp), %rsi
	movq	-128(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r11
	movq	-112(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-120(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -136(%rbp)
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	movq	-136(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond1352
	.text
_cond1332:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-168(%rbp), %rax
	cmpq	-176(%rbp), %rax
	setl	-184(%rbp)
	andq	$1, -184(%rbp)
	cmpq	$0, -184(%rbp)
	jne	_body1331
	jmp	_post1330
	.text
_cond1352:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	cmpq	$3, %rax
	setl	-200(%rbp)
	andq	$1, -200(%rbp)
	cmpq	$0, -200(%rbp)
	jne	_body1351
	jmp	_post1350
	.text
_post1330:
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond1352
	.text
_post1350:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	%r11, %rax
	movq	%rax, -208(%rbp)
	pushq	%r11
	movq	$1, %rsi
	movq	-208(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r11
	movq	%r11, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, -216(%rbp)
	movq	-216(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	%r11, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$568, %rsp
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
	pushq	%r11
	pushq	%r10
	movq	$3, %rdi
	callq	oat_alloc_array
	popq	%r10
	popq	%r11
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
	subq	$8, %rsp
	movq	%rsp, -80(%rbp)
	movq	$3, %rax
	movq	-80(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, -88(%rbp)
	movq	-72(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	%r11, %rcx
	movq	%rax, (%rcx)
	jmp	_cond1184
	.text
_body1183:
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -112(%rbp)
	pushq	%r11
	pushq	%r10
	movq	-104(%rbp), %rsi
	movq	-112(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	-96(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-104(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -120(%rbp)
	movq	$0, %rax
	movq	-120(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movq	%r11, %rcx
	movq	%rax, (%rcx)
	jmp	_cond1184
	.text
_body1203:
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -160(%rbp)
	pushq	%r10
	movq	-152(%rbp), %rsi
	movq	-160(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r10
	movq	-144(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-152(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -168(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond1204
	.text
_body1225:
	movq	-504(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -200(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -208(%rbp)
	movq	-200(%rbp), %rax
	movq	%rax, -216(%rbp)
	pushq	%r10
	movq	-208(%rbp), %rsi
	movq	-216(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r10
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
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -232(%rbp)
	movq	-232(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -240(%rbp)
	movq	-240(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond1226
	.text
_body1245:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -248(%rbp)
	movq	%r11, %rax
	movq	%rax, -256(%rbp)
	pushq	%r11
	pushq	%r10
	movq	-248(%rbp), %rsi
	movq	-256(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	%r11, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-248(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -264(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -272(%rbp)
	movq	%r11, %rax
	imulq	-272(%rbp), %rax
	movq	%rax, -280(%rbp)
	movq	-280(%rbp), %rax
	movq	-264(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	%r11, %rax
	addq	$1, %rax
	movq	%rax, -288(%rbp)
	movq	-288(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond1246
	.text
_body1269:
	movq	-520(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -296(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -304(%rbp)
	movq	-296(%rbp), %rax
	movq	%rax, -312(%rbp)
	pushq	%r11
	pushq	%r10
	movq	-304(%rbp), %rsi
	movq	-312(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	-296(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-304(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -320(%rbp)
	movq	$0, %rax
	movq	-320(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -328(%rbp)
	movq	-328(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -336(%rbp)
	movq	-336(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond1270
	.text
_body1289:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -344(%rbp)
	movq	%r11, %rax
	movq	%rax, -352(%rbp)
	pushq	%r11
	pushq	%r10
	movq	-344(%rbp), %rsi
	movq	-352(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	%r11, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-344(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -360(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	$2, %rax
	imulq	%r11, %rax
	movq	%rax, -368(%rbp)
	movq	-368(%rbp), %rax
	movq	-360(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	%r11, %rax
	addq	$1, %rax
	movq	%rax, -376(%rbp)
	movq	-376(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond1290
	.text
_cond1184:
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -384(%rbp)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -392(%rbp)
	movq	-384(%rbp), %rax
	cmpq	-392(%rbp), %rax
	setl	-400(%rbp)
	andq	$1, -400(%rbp)
	cmpq	$0, -400(%rbp)
	jne	_body1183
	jmp	_post1182
	.text
_cond1204:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -408(%rbp)
	movq	-408(%rbp), %rax
	cmpq	$3, %rax
	setl	-416(%rbp)
	andq	$1, -416(%rbp)
	cmpq	$0, -416(%rbp)
	jne	_body1203
	jmp	_post1202
	.text
_cond1226:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -424(%rbp)
	movq	-496(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -432(%rbp)
	movq	-424(%rbp), %rax
	cmpq	-432(%rbp), %rax
	setl	-440(%rbp)
	andq	$1, -440(%rbp)
	cmpq	$0, -440(%rbp)
	jne	_body1225
	jmp	_post1224
	.text
_cond1246:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	cmpq	$4, %r11
	setl	-448(%rbp)
	andq	$1, -448(%rbp)
	cmpq	$0, -448(%rbp)
	jne	_body1245
	jmp	_post1244
	.text
_cond1270:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -456(%rbp)
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -464(%rbp)
	movq	-456(%rbp), %rax
	cmpq	-464(%rbp), %rax
	setl	-472(%rbp)
	andq	$1, -472(%rbp)
	cmpq	$0, -472(%rbp)
	jne	_body1269
	jmp	_post1268
	.text
_cond1290:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	cmpq	$3, %r11
	setl	-480(%rbp)
	andq	$1, -480(%rbp)
	cmpq	$0, -480(%rbp)
	jne	_body1289
	jmp	_post1288
	.text
_post1182:
	movq	-72(%rbp), %rax
	movq	%r10, %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond1204
	.text
_post1202:
	pushq	%r10
	movq	$4, %rdi
	callq	oat_alloc_array
	popq	%r10
	movq	%rax, %r11
	movq	%r11, %rax
	movq	%rax, -488(%rbp)
	subq	$8, %rsp
	movq	%rsp, -496(%rbp)
	movq	$4, %rax
	movq	-496(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, -504(%rbp)
	movq	-488(%rbp), %rax
	movq	-504(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond1226
	.text
_post1224:
	movq	-488(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond1246
	.text
_post1244:
	pushq	%r10
	movq	$3, %rdi
	callq	oat_alloc_array
	popq	%r10
	movq	%rax, %r11
	movq	%r11, %rax
	movq	%rax, -512(%rbp)
	subq	$8, %rsp
	movq	%rsp, %r11
	movq	$3, %rax
	movq	%r11, %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, -520(%rbp)
	movq	-512(%rbp), %rax
	movq	-520(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond1270
	.text
_post1268:
	movq	-512(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond1290
	.text
_post1288:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	%r11, %rax
	movq	%rax, -528(%rbp)
	pushq	%r11
	pushq	%r10
	movq	$3, %rsi
	movq	-528(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	%r11, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$24, %rax
	movq	%rax, -536(%rbp)
	movq	-536(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -544(%rbp)
	movq	-544(%rbp), %rax
	movq	%rax, %r10
	pushq	%r11
	pushq	%r10
	movq	$1, %rsi
	movq	%r10, %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	-544(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, %r10
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -552(%rbp)
	movq	%r11, %r10
	addq	-552(%rbp), %r10
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	pushq	%r11
	pushq	%r10
	movq	%r11, %rdi
	callq	f
	popq	%r10
	popq	%r11
	movq	%rax, -560(%rbp)
	movq	%r10, %r11
	addq	-560(%rbp), %r11
	pushq	%r11
	movq	$4, %rdi
	callq	g
	popq	%r11
	movq	%rax, %r10
	movq	%r11, %rax
	addq	%r10, %rax
	movq	%rax, -568(%rbp)
	movq	-568(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	