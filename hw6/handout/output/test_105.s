	.data
	.globl	_str_arr2878
_str_arr2878:
	.asciz	" "
	.text
	.globl	bubble_sort
bubble_sort:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	subq	$8, %rsp
	movq	%rsp, %rdx
	subq	$8, %rsp
	movq	%rsp, %r8 
	subq	$8, %rsp
	movq	%rsp, %r9 
	subq	$8, %rsp
	movq	%rsp, %r10
	subq	$8, %rsp
	movq	%rsp, %r11
	movq	%rdi, (%rdx)
	movq	%rsi, (%r8 )
	movq	$0, %rax
	movq	%r9 , %rcx
	movq	%rax, (%rcx)
	movq	(%r8 ), %rsi
	movq	%rsi, %rdi
	subq	$1, %rdi
	movq	%rdi, (%r10)
	jmp	_cond2903
	.text
_body2902:
	movq	$1, %rax
	movq	%r11, %rcx
	movq	%rax, (%rcx)
	jmp	_cond2911
	.text
_body2910:
	movq	(%rdx), %rsi
	movq	(%r11), %rdi
	movq	%rdi, %r8 
	subq	$1, %r8 
	movq	%rsi, %rax
	movq	%rax, %rdi
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%r8 , %rsi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rsi, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%r8 , %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rdi
	movq	(%rdi), %rsi
	movq	(%rdx), %r8 
	movq	(%r10), %rdi
	movq	%r8 , %rax
	movq	%rax, -8(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%rdi, %rsi
	movq	-8(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%r8 , %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rdi, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r8 
	cmpq	%r8 , %rsi
	setg	%dil
	andq	$1, %rdi
	cmpq	$0, %rdi
	jne	_then2956
	jmp	_else2955
	.text
_cond2903:
	movq	(%r10), %rsi
	cmpq	$0, %rsi
	setg	%r8b
	andq	$1, %r8 
	cmpq	$0, %r8 
	jne	_body2902
	jmp	_post2901
	.text
_cond2911:
	movq	(%r11), %rsi
	movq	(%r10), %r8 
	cmpq	%r8 , %rsi
	setle	%dil
	andq	$1, %rdi
	cmpq	$0, %rdi
	jne	_body2910
	jmp	_post2909
	.text
_else2955:
	jmp	_merge2954
	.text
_merge2954:
	movq	(%r11), %rsi
	movq	%rsi, %r8 
	addq	$1, %r8 
	movq	%r8 , (%r11)
	jmp	_cond2911
	.text
_post2901:
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_post2909:
	movq	(%r10), %rsi
	movq	%rsi, %rdi
	subq	$1, %rdi
	movq	%rdi, (%r10)
	jmp	_cond2903
	.text
_then2956:
	movq	(%rdx), %rsi
	movq	(%r11), %r8 
	movq	%r8 , %rdi
	subq	$1, %rdi
	movq	%rsi, %rax
	movq	%rax, %r8 
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%rdi, %rsi
	movq	%r8 , %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rsi, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rdi, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %r8 
	movq	(%r8 ), %rsi
	movq	%rsi, (%r9 )
	movq	(%rdx), %rsi
	movq	(%r11), %rdi
	movq	%rdi, %r8 
	subq	$1, %r8 
	movq	%rsi, %rax
	movq	%rax, %rdi
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%r8 , %rsi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rsi, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%r8 , %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rdi
	movq	(%rdx), %rsi
	movq	(%r10), %r8 
	movq	%rsi, %rax
	movq	%rax, -24(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%r8 , %rsi
	movq	-24(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rsi, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%r8 , %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	%rsi, (%rdi)
	movq	(%rdx), %rsi
	movq	(%r10), %rdi
	movq	%rsi, %rax
	movq	%rax, %r8 
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%rdi, %rsi
	movq	%r8 , %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rsi, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rdi, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %r8 
	movq	(%r9 ), %rsi
	movq	%rsi, (%r8 )
	jmp	_merge2954
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	subq	$8, %rsp
	movq	%rsp, %rdx
	subq	$8, %rsp
	movq	%rsp, %rsi
	pushq	%rsi
	pushq	%rdx
	movq	$8, %rdi
	callq	oat_alloc_array
	popq	%rdx
	popq	%rsi
	movq	%rax, %rdi
	movq	%rdi, %rax
	movq	%rax, %r8 
	subq	$8, %rsp
	movq	%rsp, %r9 
	movq	$8, %rax
	movq	%r9 , %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, %rdi
	movq	%r8 , (%rdi)
	movq	$0, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	jmp	_cond2821
	.text
_body2820:
	movq	(%rdi), %r10
	movq	(%rdx), %r11
	movq	%r10, %rax
	movq	%rax, -8(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%r11, %rsi
	movq	-8(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%r10, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%r11, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -16(%rbp)
	movq	$0, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	(%rdx), %r10
	movq	%r10, %r11
	addq	$1, %r11
	movq	%r11, (%rdx)
	jmp	_cond2821
	.text
_cond2821:
	movq	(%rdx), %r10
	movq	(%r9 ), %r11
	cmpq	%r11, %r10
	setl	-24(%rbp)
	andq	$1, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	_body2820
	jmp	_post2819
	.text
_post2819:
	movq	%r8 , (%rsi)
	movq	(%rsi), %rdx
	movq	%rdx, %rax
	movq	%rax, %r8 
	pushq	%r8 
	pushq	%rsi
	pushq	%rdx
	movq	$0, %rsi
	movq	%r8 , %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%r8 
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %r9 
	movq	$121, %rax
	movq	%r9 , %rcx
	movq	%rax, (%rcx)
	movq	(%rsi), %rdx
	movq	%rdx, %rax
	movq	%rax, %rdi
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	$1, %rsi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, %r8 
	movq	$125, %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	movq	(%rsi), %r9 
	movq	%r9 , %rax
	movq	%rax, %rdx
	pushq	%r9 
	pushq	%rsi
	pushq	%rdx
	movq	$2, %rsi
	movq	%rdx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%r9 
	movq	%r9 , %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$16, %rax
	movq	%rax, %rdi
	movq	$120, %rax
	movq	%rdi, %rcx
	movq	%rax, (%rcx)
	movq	(%rsi), %r8 
	movq	%r8 , %rax
	movq	%rax, %r9 
	pushq	%r9 
	pushq	%r8 
	pushq	%rsi
	movq	$3, %rsi
	movq	%r9 , %rdi
	callq	oat_assert_array_length
	popq	%rsi
	popq	%r8 
	popq	%r9 
	movq	%r8 , %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$24, %rax
	movq	%rax, %rdx
	movq	$111, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	(%rsi), %rdi
	movq	%rdi, %rax
	movq	%rax, %r8 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	movq	$4, %rsi
	movq	%r8 , %rdi
	callq	oat_assert_array_length
	popq	%rsi
	popq	%rdi
	popq	%r8 
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$32, %rax
	movq	%rax, %r9 
	movq	$116, %rax
	movq	%r9 , %rcx
	movq	%rax, (%rcx)
	movq	(%rsi), %r10
	movq	%r10, %rax
	movq	%rax, %r11
	pushq	%r11
	pushq	%r10
	pushq	%rsi
	movq	$5, %rsi
	movq	%r11, %rdi
	callq	oat_assert_array_length
	popq	%rsi
	popq	%r10
	popq	%r11
	movq	%r10, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$40, %rax
	movq	%rax, %rdx
	movq	$110, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	(%rsi), %rdi
	movq	%rdi, %rax
	movq	%rax, %r8 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	movq	$6, %rsi
	movq	%r8 , %rdi
	callq	oat_assert_array_length
	popq	%rsi
	popq	%rdi
	popq	%r8 
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$48, %rax
	movq	%rax, %r9 
	movq	$117, %rax
	movq	%r9 , %rcx
	movq	%rax, (%rcx)
	movq	(%rsi), %r10
	movq	%r10, %rax
	movq	%rax, %r11
	pushq	%r11
	pushq	%r10
	pushq	%rsi
	movq	$7, %rsi
	movq	%r11, %rdi
	callq	oat_assert_array_length
	popq	%rsi
	popq	%r10
	popq	%r11
	movq	%r10, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$56, %rax
	movq	%rax, %rdx
	movq	$119, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	(%rsi), %rdi
	pushq	%rdi
	pushq	%rsi
	callq	string_of_array
	popq	%rsi
	popq	%rdi
	movq	%rax, %r8 
	pushq	%r8 
	pushq	%rsi
	movq	%r8 , %rdi
	callq	print_string
	popq	%rsi
	popq	%r8 
	leaq	_str_arr2878(%rip), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %r9 
	pushq	%r9 
	pushq	%rsi
	movq	%r9 , %rdi
	callq	print_string
	popq	%rsi
	popq	%r9 
	movq	(%rsi), %r10
	pushq	%r10
	pushq	%rsi
	movq	$8, %rsi
	movq	%r10, %rdi
	callq	bubble_sort
	popq	%rsi
	popq	%r10
	movq	(%rsi), %r11
	pushq	%r11
	movq	%r11, %rdi
	callq	string_of_array
	popq	%r11
	movq	%rax, %rsi
	pushq	%rsi
	movq	%rsi, %rdi
	callq	print_string
	popq	%rsi
	movq	$-1, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	