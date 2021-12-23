	.data
	.globl	_str_arr3485
_str_arr3485:
	.asciz	" "
	.data
	.globl	_str_arr3491
_str_arr3491:
	.asciz	" "
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %r9 
	subq	$8, %rsp
	movq	%rsp, %r8 
	pushq	%r9 
	pushq	%r8 
	movq	$10, %rdi
	callq	oat_alloc_array
	popq	%r8 
	popq	%r9 
	movq	%rax, %rdi
	movq	%rdi, %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rsi
	movq	$126, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, %rsi
	movq	$125, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$16, %rax
	movq	%rax, %rsi
	movq	$124, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$24, %rax
	movq	%rax, %rsi
	movq	$123, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$32, %rax
	movq	%rax, %rsi
	movq	$122, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$40, %rax
	movq	%rax, %rsi
	movq	$121, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$48, %rax
	movq	%rax, %rsi
	movq	$120, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$56, %rax
	movq	%rax, %rsi
	movq	$119, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$64, %rax
	movq	%rax, %rsi
	movq	$118, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$72, %rax
	movq	%rax, %rsi
	movq	$117, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	%rdx, (%r9 )
	movq	$0, %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	movq	(%r9 ), %rdi
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	callq	string_of_array
	popq	%rdi
	popq	%r8 
	popq	%r9 
	movq	%rax, %rsi
	pushq	%r9 
	pushq	%r8 
	pushq	%rsi
	movq	%rsi, %rdi
	callq	print_string
	popq	%rsi
	popq	%r8 
	popq	%r9 
	movq	(%r9 ), %rsi
	pushq	%r9 
	pushq	%r8 
	pushq	%rsi
	movq	$9, %rdx
	movq	%rsi, %rdi
	movq	$0, %rsi
	callq	oat_mergesort
	popq	%rsi
	popq	%r8 
	popq	%r9 
	leaq	_str_arr3485(%rip), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %rsi
	pushq	%r9 
	pushq	%r8 
	pushq	%rsi
	movq	%rsi, %rdi
	callq	print_string
	popq	%rsi
	popq	%r8 
	popq	%r9 
	movq	(%r9 ), %rdi
	pushq	%r8 
	pushq	%rdi
	callq	string_of_array
	popq	%rdi
	popq	%r8 
	movq	%rax, %rsi
	pushq	%r8 
	pushq	%rsi
	movq	%rsi, %rdi
	callq	print_string
	popq	%rsi
	popq	%r8 
	leaq	_str_arr3491(%rip), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %rsi
	pushq	%r8 
	pushq	%rsi
	movq	%rsi, %rdi
	callq	print_string
	popq	%rsi
	popq	%r8 
	movq	(%r8 ), %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	oat_mergesort
oat_mergesort:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, -16(%rbp)
	subq	$8, %rsp
	movq	%rsp, %r11
	subq	$8, %rsp
	movq	%rsp, %r10
	movq	%rdi, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%rsi, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%rdx, (%r11)
	movq	$0, %rax
	movq	%r10, %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	(%r11), %rdi
	cmpq	%rdi, %rdx
	setl	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_then3447
	jmp	_else3446
	.text
_else3446:
	jmp	_merge3445
	.text
_merge3445:
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then3447:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	(%r11), %rsi
	movq	%rdx, %rdi
	addq	%rsi, %rdi
	movq	%rdi, %rax
	movq	$1, %rcx
	shrq	%cl, %rax
	movq	%rax, %rsi
	movq	%rsi, (%r10)
	movq	(%r10), %r8 
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	pushq	%r11
	pushq	%r10
	pushq	%r8 
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	movq	%r8 , %rdx
	callq	oat_mergesort
	popq	%rdx
	popq	%rsi
	popq	%r8 
	popq	%r10
	popq	%r11
	movq	(%r11), %r8 
	movq	(%r10), %rdi
	movq	%rdi, %rdx
	addq	$1, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	pushq	%r11
	pushq	%r10
	pushq	%r8 
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	movq	%r8 , %rdx
	callq	oat_mergesort
	popq	%rdx
	popq	%rsi
	popq	%r8 
	popq	%r10
	popq	%r11
	movq	(%r10), %r9 
	movq	(%r11), %r8 
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	pushq	%r9 
	pushq	%r8 
	pushq	%rsi
	pushq	%rdx
	movq	%r9 , %rcx
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	movq	%r8 , %rdx
	callq	merge
	popq	%rdx
	popq	%rsi
	popq	%r8 
	popq	%r9 
	jmp	_merge3445
	.text
	.globl	merge
merge:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
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
	movq	%rax, %rdi
	movq	%rdi, %rax
	movq	%rax, %r11
	subq	$8, %rsp
	movq	%rsp, %r10
	movq	$50, %rax
	movq	%r10, %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, %r9 
	movq	%r11, (%r9 )
	movq	$0, %rax
	movq	-72(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond3258
	.text
_body3257:
	movq	(%r9 ), %r8 
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	%r8 , %rax
	movq	%rax, %rsi
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%r8 , %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rdx, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rsi
	movq	$0, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	%rdi, %rsi
	addq	$1, %rsi
	movq	%rsi, %rax
	movq	-72(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond3258
	.text
_body3287:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r8 
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	%r8 , %rax
	movq	%rax, %rsi
	pushq	%r8 
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%r8 
	movq	%r8 , %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rdx, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rdi
	movq	(%rdi), %r9 
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r8 
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	%r8 , %rax
	movq	%rax, %rsi
	pushq	%r9 
	pushq	%r8 
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%r8 
	popq	%r9 
	movq	%r8 , %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rdx, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rsi
	movq	(%rsi), %rdi
	cmpq	%rdi, %r9 
	setl	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_then3340
	jmp	_else3339
	.text
_body3345:
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r8 
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	%r8 , %rax
	movq	%rax, %rsi
	pushq	%r8 
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%r8 
	movq	%r8 , %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rdx, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %r9 
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r8 
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	%r8 , %rax
	movq	%rax, %rsi
	pushq	%r9 
	pushq	%r8 
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%r8 
	popq	%r9 
	movq	%r8 , %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rdx, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rdi
	movq	(%rdi), %rsi
	movq	%rsi, (%r9 )
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	%rdi, %rsi
	addq	$1, %rsi
	movq	%rsi, %rax
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	%rdi, %rsi
	addq	$1, %rsi
	movq	%rsi, %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond3346
	.text
_body3369:
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r8 
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	%r8 , %rax
	movq	%rax, %rsi
	pushq	%r8 
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%r8 
	movq	%r8 , %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rdx, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %r9 
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r8 
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	%r8 , %rax
	movq	%rax, %rsi
	pushq	%r9 
	pushq	%r8 
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%r8 
	popq	%r9 
	movq	%r8 , %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rdx, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rdi
	movq	(%rdi), %rsi
	movq	%rsi, (%r9 )
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	%rdi, %rsi
	addq	$1, %rsi
	movq	%rsi, %rax
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	%rdi, %rsi
	addq	$1, %rsi
	movq	%rsi, %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond3370
	.text
_body3395:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r8 
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	%r8 , %rax
	movq	%rax, %rsi
	pushq	%r8 
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%r8 
	movq	%r8 , %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rdx, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %r9 
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r8 
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	%r8 , %rax
	movq	%rax, %rsi
	pushq	%r9 
	pushq	%r8 
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%r8 
	popq	%r9 
	movq	%r8 , %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rdx, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rdi
	movq	(%rdi), %rsi
	movq	%rsi, (%r9 )
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	%rdi, %rsi
	addq	$1, %rsi
	movq	%rsi, %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond3396
	.text
_cond3258:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	(%r10), %rdi
	cmpq	%rdi, %rdx
	setl	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_body3257
	jmp	_post3256
	.text
_cond3288:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	cmpq	%rdi, %rsi
	setle	%r8b
	andq	$1, %r8 
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	cmpq	%rsi, %rdx
	setle	%dil
	andq	$1, %rdi
	movq	%r8 , %rsi
	andq	%rdi, %rsi
	cmpq	$0, %rsi
	jne	_body3287
	jmp	_post3286
	.text
_cond3346:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	cmpq	%rdi, %rdx
	setle	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_body3345
	jmp	_post3344
	.text
_cond3370:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	cmpq	%rdi, %rdx
	setle	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_body3369
	jmp	_post3368
	.text
_cond3396:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	cmpq	%rdi, %rdx
	setl	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_body3395
	jmp	_post3394
	.text
_else3339:
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r8 
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	%r8 , %rax
	movq	%rax, %rsi
	pushq	%r8 
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%r8 
	movq	%r8 , %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rdx, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %r9 
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r8 
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	%r8 , %rax
	movq	%rax, %rsi
	pushq	%r9 
	pushq	%r8 
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%r8 
	popq	%r9 
	movq	%r8 , %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rdx, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rdi
	movq	(%rdi), %rsi
	movq	%rsi, (%r9 )
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	%rdi, %rsi
	addq	$1, %rsi
	movq	%rsi, %rax
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	%rdi, %rsi
	addq	$1, %rsi
	movq	%rsi, %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_merge3338
	.text
_merge3338:
	jmp	_cond3288
	.text
_post3256:
	movq	%r11, %rax
	movq	-80(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	%rsi, %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	%rdi, %rsi
	addq	$1, %rsi
	movq	%rsi, %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	%rsi, %rax
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond3288
	.text
_post3286:
	jmp	_cond3346
	.text
_post3344:
	jmp	_cond3370
	.text
_post3368:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	%rsi, %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond3396
	.text
_post3394:
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then3340:
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r8 
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	%r8 , %rax
	movq	%rax, %rsi
	pushq	%r8 
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%r8 
	movq	%r8 , %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rdx, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %r9 
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r8 
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	%r8 , %rax
	movq	%rax, %rsi
	pushq	%r9 
	pushq	%r8 
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%r8 
	popq	%r9 
	movq	%r8 , %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rdx, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rdi
	movq	(%rdi), %rsi
	movq	%rsi, (%r9 )
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	%rdi, %rsi
	addq	$1, %rsi
	movq	%rsi, %rax
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	%rdi, %rsi
	addq	$1, %rsi
	movq	%rsi, %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_merge3338