	.text
	.globl	min_heapify
min_heapify:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$536, %rsp
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
	movq	%rdi, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%rsi, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%rdx, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	imulq	$2, %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
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
	jne	_then8544
	jmp	_else8543
	.text
_else8540:
	jmp	_merge8539
	.text
_else8543:
	jmp	_merge8542
	.text
_else8564:
	jmp	_merge8563
	.text
_else8567:
	jmp	_merge8566
	.text
_else8603:
	jmp	_merge8602
	.text
_merge8539:
	jmp	_merge8542
	.text
_merge8542:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	-128(%rbp), %rax
	cmpq	-136(%rbp), %rax
	setl	-144(%rbp)
	andq	$1, -144(%rbp)
	cmpq	$0, -144(%rbp)
	jne	_then8568
	jmp	_else8567
	.text
_merge8563:
	jmp	_merge8566
	.text
_merge8566:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)
	movq	-152(%rbp), %rax
	cmpq	-160(%rbp), %rax
	setne	-168(%rbp)
	andq	$1, -168(%rbp)
	cmpq	$0, -168(%rbp)
	jne	_then8604
	jmp	_else8603
	.text
_merge8602:
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then8541:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_merge8539
	.text
_then8544:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -184(%rbp)
	movq	-32(%rbp), %rax
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
	movq	-208(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -216(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -232(%rbp)
	movq	-224(%rbp), %rax
	movq	%rax, -240(%rbp)
	movq	-232(%rbp), %rsi
	movq	-240(%rbp), %rdi
	callq	oat_assert_array_length
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
	movq	-216(%rbp), %rax
	cmpq	-256(%rbp), %rax
	setg	-264(%rbp)
	andq	$1, -264(%rbp)
	cmpq	$0, -264(%rbp)
	jne	_then8541
	jmp	_else8540
	.text
_then8565:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -272(%rbp)
	movq	-272(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_merge8563
	.text
_then8568:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -280(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -288(%rbp)
	movq	-280(%rbp), %rax
	movq	%rax, -296(%rbp)
	movq	-288(%rbp), %rsi
	movq	-296(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-280(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-288(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -304(%rbp)
	movq	-304(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -312(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -320(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -328(%rbp)
	movq	-320(%rbp), %rax
	movq	%rax, -336(%rbp)
	movq	-328(%rbp), %rsi
	movq	-336(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-320(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-328(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -344(%rbp)
	movq	-344(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -352(%rbp)
	movq	-312(%rbp), %rax
	cmpq	-352(%rbp), %rax
	setg	-360(%rbp)
	andq	$1, -360(%rbp)
	cmpq	$0, -360(%rbp)
	jne	_then8565
	jmp	_else8564
	.text
_then8604:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -368(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -376(%rbp)
	movq	-368(%rbp), %rax
	movq	%rax, -384(%rbp)
	movq	-376(%rbp), %rsi
	movq	-384(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-368(%rbp), %rax
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
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -408(%rbp)
	movq	-16(%rbp), %rax
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
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -440(%rbp)
	movq	-56(%rbp), %rax
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
	movq	-464(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -472(%rbp)
	movq	-472(%rbp), %rax
	movq	-432(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -480(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -488(%rbp)
	movq	-480(%rbp), %rax
	movq	%rax, -496(%rbp)
	movq	-488(%rbp), %rsi
	movq	-496(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-480(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-488(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -504(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -512(%rbp)
	movq	-512(%rbp), %rax
	movq	-504(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -520(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -528(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -536(%rbp)
	movq	-520(%rbp), %rdx
	movq	-528(%rbp), %rsi
	movq	-536(%rbp), %rdi
	callq	min_heapify
	jmp	_merge8602
	.text
	.globl	make_min_heap
make_min_heap:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$88, %rsp
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, -16(%rbp)
	subq	$8, %rsp
	movq	%rsp, -24(%rbp)
	movq	%rdi, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%rsi, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond8491
	.text
_body8490:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rdi
	callq	min_heapify
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond8491
	.text
_cond8491:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	cmpq	$1, %rax
	setge	-88(%rbp)
	andq	$1, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	_body8490
	jmp	_post8489
	.text
_post8489:
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$376, %rsp
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, -16(%rbp)
	subq	$8, %rsp
	movq	%rsp, -24(%rbp)
	subq	$8, %rsp
	movq	%rsp, -32(%rbp)
	movq	$11, %rdi
	callq	oat_alloc_array
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -56(%rbp)
	movq	$0, %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-48(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, -64(%rbp)
	movq	$9, %rax
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-48(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$16, %rax
	movq	%rax, -72(%rbp)
	movq	$1, %rax
	movq	-72(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-48(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$24, %rax
	movq	%rax, -80(%rbp)
	movq	$2, %rax
	movq	-80(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-48(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$32, %rax
	movq	%rax, -88(%rbp)
	movq	$8, %rax
	movq	-88(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-48(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$40, %rax
	movq	%rax, -96(%rbp)
	movq	$10, %rax
	movq	-96(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-48(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$48, %rax
	movq	%rax, -104(%rbp)
	movq	$7, %rax
	movq	-104(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-48(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$56, %rax
	movq	%rax, -112(%rbp)
	movq	$3, %rax
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-48(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$64, %rax
	movq	%rax, -120(%rbp)
	movq	$6, %rax
	movq	-120(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-48(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$72, %rax
	movq	%rax, -128(%rbp)
	movq	$4, %rax
	movq	-128(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-48(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$80, %rax
	movq	%rax, -136(%rbp)
	movq	$5, %rax
	movq	-136(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-48(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$11, %rdi
	callq	oat_alloc_array
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -160(%rbp)
	movq	$0, %rax
	movq	-160(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-152(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, -168(%rbp)
	movq	$1, %rax
	movq	-168(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-152(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$16, %rax
	movq	%rax, -176(%rbp)
	movq	$4, %rax
	movq	-176(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-152(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$24, %rax
	movq	%rax, -184(%rbp)
	movq	$2, %rax
	movq	-184(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-152(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$32, %rax
	movq	%rax, -192(%rbp)
	movq	$8, %rax
	movq	-192(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-152(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$40, %rax
	movq	%rax, -200(%rbp)
	movq	$5, %rax
	movq	-200(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-152(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$48, %rax
	movq	%rax, -208(%rbp)
	movq	$7, %rax
	movq	-208(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-152(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$56, %rax
	movq	%rax, -216(%rbp)
	movq	$3, %rax
	movq	-216(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-152(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$64, %rax
	movq	%rax, -224(%rbp)
	movq	$6, %rax
	movq	-224(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-152(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$72, %rax
	movq	%rax, -232(%rbp)
	movq	$9, %rax
	movq	-232(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-152(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$80, %rax
	movq	%rax, -240(%rbp)
	movq	$10, %rax
	movq	-240(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-152(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -248(%rbp)
	movq	$10, %rsi
	movq	-248(%rbp), %rdi
	callq	make_min_heap
	movq	$0, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond8456
	.text
_body8455:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -256(%rbp)
	movq	-32(%rbp), %rax
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
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -288(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -296(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -304(%rbp)
	movq	-296(%rbp), %rax
	movq	%rax, -312(%rbp)
	movq	-304(%rbp), %rsi
	movq	-312(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-296(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-304(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -320(%rbp)
	movq	-320(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -328(%rbp)
	movq	-288(%rbp), %rax
	cmpq	-328(%rbp), %rax
	setne	-336(%rbp)
	andq	$1, -336(%rbp)
	cmpq	$0, -336(%rbp)
	jne	_then8473
	jmp	_else8472
	.text
_cond8456:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -344(%rbp)
	movq	-344(%rbp), %rax
	cmpq	$11, %rax
	setl	-352(%rbp)
	andq	$1, -352(%rbp)
	cmpq	$0, -352(%rbp)
	jne	_body8455
	jmp	_post8454
	.text
_else8472:
	jmp	_merge8471
	.text
_merge8471:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -360(%rbp)
	movq	-360(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -368(%rbp)
	movq	-368(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond8456
	.text
_post8454:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -376(%rbp)
	movq	-376(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then8473:
	movq	$1, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_merge8471