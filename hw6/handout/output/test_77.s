	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rdi
	subq	$8, %rsp
	movq	%rsp, %rsi
	subq	$8, %rsp
	movq	%rsp, %rdx
	subq	$8, %rsp
	movq	%rsp, %r9 
	subq	$8, %rsp
	movq	%rsp, %r8 
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	$5, %rdi
	callq	oat_alloc_array
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	movq	%rax, %r10
	movq	%r10, %rax
	movq	%rax, %r11
	movq	%r11, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %r10
	movq	$111, %rax
	movq	%r10, %rcx
	movq	%rax, (%rcx)
	movq	%r11, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, %r10
	movq	$112, %rax
	movq	%r10, %rcx
	movq	%rax, (%rcx)
	movq	%r11, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$16, %rax
	movq	%rax, %r10
	movq	$113, %rax
	movq	%r10, %rcx
	movq	%rax, (%rcx)
	movq	%r11, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$24, %rax
	movq	%rax, %r10
	movq	$114, %rax
	movq	%r10, %rcx
	movq	%rax, (%rcx)
	movq	%r11, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$32, %rax
	movq	%rax, %r10
	movq	$115, %rax
	movq	%r10, %rcx
	movq	%rax, (%rcx)
	movq	%r11, (%rdi)
	movq	(%rdi), %r10
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rsi
	pushq	%rdx
	movq	%r10, %rdi
	callq	string_of_array
	popq	%rdx
	popq	%rsi
	popq	%r8 
	popq	%r9 
	popq	%r10
	movq	%rax, %rdi
	movq	%rdi, (%rsi)
	movq	(%rsi), %rdi
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rdx
	callq	array_of_string
	popq	%rdx
	popq	%rdi
	popq	%r8 
	popq	%r9 
	movq	%rax, %rsi
	movq	%rsi, (%rdx)
	movq	$0, %rax
	movq	%r9 , %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	jmp	_cond2319
	.text
_body2318:
	movq	(%r9 ), %rdi
	movq	(%rdx), %rsi
	movq	(%r8 ), %r10
	movq	%rsi, %rax
	movq	%rax, %r11
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%r10, %rsi
	movq	%r11, %rdi
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
	movq	%r10, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %r11
	movq	(%r11), %rsi
	movq	%rdi, %r10
	addq	%rsi, %r10
	movq	%r10, (%r9 )
	movq	(%r8 ), %rdi
	movq	%rdi, %rsi
	addq	$1, %rsi
	movq	%rsi, (%r8 )
	jmp	_cond2319
	.text
_cond2319:
	movq	(%r8 ), %rdi
	cmpq	$5, %rdi
	setl	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_body2318
	jmp	_post2317
	.text
_post2317:
	movq	(%r9 ), %rdi
	movq	%rdi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	