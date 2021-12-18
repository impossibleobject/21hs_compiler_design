	.data
	.globl	_str_arr2878
_str_arr2878:
	.asciz	" "
	.text
	.globl	bubble_sort
bubble_sort:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$264, %rsp
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
	movq	%rdi, (%r11)
	movq	%rsi, (%r10)
	movq	$0, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %r10
	subq	$1, %r10
	movq	%r10, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond2903
	.text
_body2902:
	movq	$1, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond2911
	.text
_body2910:
	movq	(%r11), %r10
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -48(%rbp)
	movq	%r10, %rax
	movq	%rax, -56(%rbp)
	pushq	%r11
	pushq	%r10
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	%r10, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-48(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r10
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -88(%rbp)
	pushq	%r11
	pushq	%r10
	movq	-80(%rbp), %rsi
	movq	-88(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
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
	cmpq	-104(%rbp), %r10
	setg	-112(%rbp)
	andq	$1, -112(%rbp)
	cmpq	$0, -112(%rbp)
	jne	_then2956
	jmp	_else2955
	.text
_cond2903:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r10
	cmpq	$0, %r10
	setg	-120(%rbp)
	andq	$1, -120(%rbp)
	cmpq	$0, -120(%rbp)
	jne	_body2902
	jmp	_post2901
	.text
_cond2911:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r10
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)
	cmpq	-128(%rbp), %r10
	setle	-136(%rbp)
	andq	$1, -136(%rbp)
	cmpq	$0, -136(%rbp)
	jne	_body2910
	jmp	_post2909
	.text
_else2955:
	jmp	_merge2954
	.text
_merge2954:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r10
	movq	%r10, %rax
	addq	$1, %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond2911
	.text
_post2901:
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_post2909:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r10
	movq	%r10, %rax
	subq	$1, %rax
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond2903
	.text
_then2956:
	movq	(%r11), %r10
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -168(%rbp)
	movq	%r10, %rax
	movq	%rax, -176(%rbp)
	pushq	%r11
	pushq	%r10
	movq	-168(%rbp), %rsi
	movq	-176(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	%r10, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-168(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r10
	movq	%r10, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	(%r11), %r10
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -200(%rbp)
	movq	%r10, %rax
	movq	%rax, -208(%rbp)
	pushq	%r11
	pushq	%r10
	movq	-200(%rbp), %rsi
	movq	-208(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	%r10, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-200(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -216(%rbp)
	movq	(%r11), %r10
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	%r10, %rax
	movq	%rax, -232(%rbp)
	pushq	%r11
	pushq	%r10
	movq	-224(%rbp), %rsi
	movq	-232(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	%r10, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-224(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -240(%rbp)
	movq	-240(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r10
	movq	%r10, %rax
	movq	-216(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	(%r11), %r10
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -248(%rbp)
	movq	%r10, %rax
	movq	%rax, -256(%rbp)
	pushq	%r11
	pushq	%r10
	movq	-248(%rbp), %rsi
	movq	-256(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	%r10, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-248(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -264(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r10
	movq	%r10, %rax
	movq	-264(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_merge2954
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$240, %rsp
	subq	$8, %rsp
	movq	%rsp, %r11
	subq	$8, %rsp
	movq	%rsp, %r10
	pushq	%r11
	pushq	%r10
	movq	$8, %rdi
	callq	oat_alloc_array
	popq	%r10
	popq	%r11
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	subq	$8, %rsp
	movq	%rsp, -24(%rbp)
	movq	$8, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	%r11, %rcx
	movq	%rax, (%rcx)
	jmp	_cond2821
	.text
_body2820:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -56(%rbp)
	pushq	%r11
	pushq	%r10
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	-40(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-48(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -64(%rbp)
	movq	$0, %rax
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%r11, %rcx
	movq	%rax, (%rcx)
	jmp	_cond2821
	.text
_cond2821:
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	setl	-104(%rbp)
	andq	$1, -104(%rbp)
	cmpq	$0, -104(%rbp)
	jne	_body2820
	jmp	_post2819
	.text
_post2819:
	movq	-16(%rbp), %rax
	movq	%r10, %rcx
	movq	%rax, (%rcx)
	movq	(%r10), %r11
	movq	%r11, %rax
	movq	%rax, -112(%rbp)
	pushq	%r11
	pushq	%r10
	movq	$0, %rsi
	movq	-112(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	%r11, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -120(%rbp)
	movq	$121, %rax
	movq	-120(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	(%r10), %r11
	movq	%r11, %rax
	movq	%rax, -128(%rbp)
	pushq	%r11
	pushq	%r10
	movq	$1, %rsi
	movq	-128(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	%r11, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, -136(%rbp)
	movq	$125, %rax
	movq	-136(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	(%r10), %r11
	movq	%r11, %rax
	movq	%rax, -144(%rbp)
	pushq	%r11
	pushq	%r10
	movq	$2, %rsi
	movq	-144(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	%r11, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$16, %rax
	movq	%rax, -152(%rbp)
	movq	$120, %rax
	movq	-152(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	(%r10), %r11
	movq	%r11, %rax
	movq	%rax, -160(%rbp)
	pushq	%r11
	pushq	%r10
	movq	$3, %rsi
	movq	-160(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	%r11, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$24, %rax
	movq	%rax, -168(%rbp)
	movq	$111, %rax
	movq	-168(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	(%r10), %r11
	movq	%r11, %rax
	movq	%rax, -176(%rbp)
	pushq	%r11
	pushq	%r10
	movq	$4, %rsi
	movq	-176(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	%r11, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$32, %rax
	movq	%rax, -184(%rbp)
	movq	$116, %rax
	movq	-184(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	(%r10), %r11
	movq	%r11, %rax
	movq	%rax, -192(%rbp)
	pushq	%r11
	pushq	%r10
	movq	$5, %rsi
	movq	-192(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	%r11, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$40, %rax
	movq	%rax, -200(%rbp)
	movq	$110, %rax
	movq	-200(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	(%r10), %r11
	movq	%r11, %rax
	movq	%rax, -208(%rbp)
	pushq	%r11
	pushq	%r10
	movq	$6, %rsi
	movq	-208(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	%r11, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$48, %rax
	movq	%rax, -216(%rbp)
	movq	$117, %rax
	movq	-216(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	(%r10), %r11
	movq	%r11, %rax
	movq	%rax, -224(%rbp)
	pushq	%r11
	pushq	%r10
	movq	$7, %rsi
	movq	-224(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	%r11, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$56, %rax
	movq	%rax, -232(%rbp)
	movq	$119, %rax
	movq	-232(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	(%r10), %r11
	pushq	%r11
	pushq	%r10
	movq	%r11, %rdi
	callq	string_of_array
	popq	%r10
	popq	%r11
	movq	%rax, -240(%rbp)
	pushq	%r10
	movq	-240(%rbp), %rdi
	callq	print_string
	popq	%r10
	leaq	_str_arr2878(%rip), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %r11
	pushq	%r11
	pushq	%r10
	movq	%r11, %rdi
	callq	print_string
	popq	%r10
	popq	%r11
	movq	(%r10), %r11
	pushq	%r11
	pushq	%r10
	movq	$8, %rsi
	movq	%r11, %rdi
	callq	bubble_sort
	popq	%r10
	popq	%r11
	movq	(%r10), %r11
	pushq	%r11
	movq	%r11, %rdi
	callq	string_of_array
	popq	%r11
	movq	%rax, %r10
	pushq	%r10
	movq	%r10, %rdi
	callq	print_string
	popq	%r10
	movq	$-1, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	