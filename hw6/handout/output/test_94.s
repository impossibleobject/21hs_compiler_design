	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	subq	$8, %rsp
	movq	%rsp, %r9 
	subq	$8, %rsp
	movq	%rsp, %r8 
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, %r11
	subq	$8, %rsp
	movq	%rsp, %r10
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	movq	$5, %rdi
	callq	oat_alloc_array
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rax, %rdi
	movq	%rdi, %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %rsi
	movq	$111, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, %rsi
	movq	$112, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$16, %rax
	movq	%rax, %rsi
	movq	$113, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$24, %rax
	movq	%rax, %rsi
	movq	$114, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$32, %rax
	movq	%rax, %rsi
	movq	$115, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	%rdx, (%r9 )
	movq	(%r9 ), %rdi
	pushq	%r11
	pushq	%r10
	pushq	%r8 
	pushq	%rdi
	callq	string_of_array
	popq	%rdi
	popq	%r8 
	popq	%r10
	popq	%r11
	movq	%rax, %rsi
	movq	%rsi, (%r8 )
	movq	(%r8 ), %rdi
	pushq	%r11
	pushq	%r10
	pushq	%rdi
	callq	array_of_string
	popq	%rdi
	popq	%r10
	popq	%r11
	movq	%rax, %rsi
	movq	%rsi, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	%r11, %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	%r10, %rcx
	movq	%rax, (%rcx)
	jmp	_cond2267
	.text
_body2266:
	movq	(%r11), %r9 
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r8 
	movq	(%r10), %rdx
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
	movq	(%rsi), %rdi
	movq	%r9 , %rsi
	addq	%rdi, %rsi
	movq	%rsi, (%r11)
	movq	(%r10), %rdi
	movq	%rdi, %rsi
	addq	$1, %rsi
	movq	%rsi, (%r10)
	jmp	_cond2267
	.text
_cond2267:
	movq	(%r10), %rdi
	cmpq	$5, %rdi
	setl	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_body2266
	jmp	_post2265
	.text
_post2265:
	movq	(%r11), %rsi
	pushq	%r11
	pushq	%rsi
	movq	%rsi, %rdi
	callq	print_int
	popq	%rsi
	popq	%r11
	movq	(%r11), %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	