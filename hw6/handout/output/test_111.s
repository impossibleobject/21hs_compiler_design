	.data
	.globl	_str_arr4230
_str_arr4230:
	.asciz	"\n"
	.text
	.globl	xor
xor:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rdx
	subq	$8, %rsp
	movq	%rsp, %r8 
	movq	%rdi, (%rdx)
	movq	%rsi, (%r8 )
	movq	(%rdx), %rsi
	movq	(%r8 ), %rdi
	movq	%rsi, %r9 
	andq	%rdi, %r9 
	movq	%r9 , %rsi
	xorq	$-1, %rsi
	movq	(%rdx), %rdi
	movq	(%r8 ), %rdx
	movq	%rdi, %r8 
	orq	%rdx, %r8 
	movq	%rsi, %r9 
	andq	%r8 , %r9 
	movq	%r9 , %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	xor_shift_plus
xor_shift_plus:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rdx
	subq	$8, %rsp
	movq	%rsp, %rsi
	subq	$8, %rsp
	movq	%rsp, %r8 
	movq	%rdi, (%rdx)
	movq	(%rdx), %rdi
	movq	%rdi, %rax
	movq	%rax, %r9 
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	$0, %rsi
	movq	%r9 , %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %r10
	movq	(%r10), %rdi
	movq	%rdi, (%rsi)
	movq	(%rdx), %r9 
	movq	%r9 , %rax
	movq	%rax, %r10
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rsi
	pushq	%rdx
	movq	$1, %rsi
	movq	%r10, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%r8 
	popq	%r9 
	popq	%r10
	movq	%r9 , %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, %r11
	movq	(%r11), %rdi
	movq	%rdi, (%r8 )
	movq	(%rdx), %r9 
	movq	%r9 , %rax
	movq	%rax, %r10
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rsi
	pushq	%rdx
	movq	$0, %rsi
	movq	%r10, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%r8 
	popq	%r9 
	popq	%r10
	movq	%r9 , %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %r11
	movq	(%r8 ), %rdi
	movq	%rdi, (%r11)
	movq	(%rsi), %r9 
	movq	%r9 , %rax
	movq	$23, %rcx
	shlq	%cl, %rax
	movq	%rax, %r10
	movq	(%rsi), %r11
	pushq	%r11
	pushq	%r10
	pushq	%r8 
	pushq	%rsi
	pushq	%rdx
	movq	%r10, %rsi
	movq	%r11, %rdi
	callq	xor
	popq	%rdx
	popq	%rsi
	popq	%r8 
	popq	%r10
	popq	%r11
	movq	%rax, %rdi
	movq	%rdi, (%rsi)
	movq	(%rsi), %r9 
	movq	%r9 , %rax
	movq	$17, %rcx
	shrq	%cl, %rax
	movq	%rax, %r10
	movq	(%rsi), %r11
	pushq	%r11
	pushq	%r10
	pushq	%r8 
	pushq	%rsi
	pushq	%rdx
	movq	%r10, %rsi
	movq	%r11, %rdi
	callq	xor
	popq	%rdx
	popq	%rsi
	popq	%r8 
	popq	%r10
	popq	%r11
	movq	%rax, %rdi
	movq	%rdi, (%rsi)
	movq	(%r8 ), %r9 
	movq	%r9 , %rax
	movq	$26, %rcx
	shrq	%cl, %rax
	movq	%rax, %r10
	movq	(%r8 ), %r11
	pushq	%r11
	pushq	%r10
	pushq	%r8 
	pushq	%rsi
	pushq	%rdx
	movq	%r10, %rsi
	movq	%r11, %rdi
	callq	xor
	popq	%rdx
	popq	%rsi
	popq	%r8 
	popq	%r10
	popq	%r11
	movq	%rax, %rdi
	movq	(%rsi), %r9 
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%rdi, %rsi
	movq	%r9 , %rdi
	callq	xor
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	movq	%rax, %r10
	movq	%r10, (%rsi)
	movq	(%rdx), %r11
	movq	%r11, %rax
	movq	%rax, %rdx
	pushq	%r11
	pushq	%r8 
	pushq	%rsi
	pushq	%rdx
	movq	$1, %rsi
	movq	%rdx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%r8 
	popq	%r11
	movq	%r11, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, %rdx
	movq	(%rsi), %rdi
	movq	%rdi, (%rdx)
	movq	(%rsi), %rdx
	movq	(%r8 ), %rsi
	movq	%rdx, %r8 
	addq	%rsi, %r8 
	movq	%r8 , %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	subq	$8, %rsp
	movq	%rsp, %rdx
	subq	$8, %rsp
	movq	%rsp, %rsi
	subq	$8, %rsp
	movq	%rsp, %rdi
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	$2, %rdi
	callq	oat_alloc_array
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax, %r8 
	movq	%r8 , %rax
	movq	%rax, %r9 
	subq	$8, %rsp
	movq	%rsp, %r8 
	movq	$2, %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, %r10
	movq	%r9 , (%r10)
	movq	$0, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	jmp	_cond4194
	.text
_body4193:
	movq	(%r10), %r11
	movq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	%r11, %rax
	movq	%rax, -16(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%r11, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -24(%rbp)
	movq	$0, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	(%rdx), %r11
	movq	%r11, %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	jmp	_cond4194
	.text
_body4213:
	movq	(%rsi), %rdx
	movq	(%rdi), %r9 
	movq	%rdx, %rax
	movq	%rax, %r8 
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%r9 , %rsi
	movq	%r8 , %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%r9 , %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %r10
	movq	(%rdi), %rdx
	movq	%rdx, %r9 
	addq	$1, %r9 
	movq	$100, %rdx
	imulq	%r9 , %rdx
	movq	%rdx, (%r10)
	movq	(%rdi), %r8 
	movq	%r8 , %r9 
	addq	$1, %r9 
	movq	%r9 , (%rdi)
	jmp	_cond4214
	.text
_cond4194:
	movq	(%rdx), %r11
	movq	%r8 , %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	cmpq	-40(%rbp), %r11
	setl	-48(%rbp)
	andq	$1, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	_body4193
	jmp	_post4192
	.text
_cond4214:
	movq	(%rdi), %r10
	cmpq	$2, %r10
	setl	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	_body4213
	jmp	_post4212
	.text
_post4192:
	movq	%r9 , (%rsi)
	movq	$0, %rax
	movq	%rdi, %rcx
	movq	%rax, (%rcx)
	jmp	_cond4214
	.text
_post4212:
	movq	(%rsi), %rdi
	pushq	%rdi
	pushq	%rsi
	callq	xor_shift_plus
	popq	%rsi
	popq	%rdi
	movq	%rax, %r8 
	pushq	%r8 
	pushq	%rsi
	movq	%r8 , %rdi
	callq	print_int
	popq	%rsi
	popq	%r8 
	leaq	_str_arr4230(%rip), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %rdi
	pushq	%rdi
	pushq	%rsi
	callq	print_string
	popq	%rsi
	popq	%rdi
	movq	(%rsi), %rdi
	pushq	%rdi
	callq	xor_shift_plus
	popq	%rdi
	movq	%rax, %rsi
	pushq	%rsi
	movq	%rsi, %rdi
	callq	print_int
	popq	%rsi
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	