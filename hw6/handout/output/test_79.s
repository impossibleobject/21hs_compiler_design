	.data
	.globl	_str_arr2376
_str_arr2376:
	.asciz	"1234967890"
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
	leaq	_str_arr2376(%rip), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %r8 
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%r8 , %rdi
	callq	array_of_string
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	movq	%rax, %r10
	movq	%r10, (%rdi)
	movq	$0, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	jmp	_cond2389
	.text
_body2388:
	movq	(%rdi), %r8 
	movq	(%rdx), %r10
	movq	%r8 , %rax
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
	movq	%r8 , %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%r10, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %r11
	movq	(%rdx), %r8 
	movq	%r8 , (%r11)
	movq	(%rdx), %r8 
	movq	%r8 , %r10
	addq	$1, %r10
	movq	%r10, (%rdx)
	jmp	_cond2389
	.text
_body2405:
	movq	(%rsi), %rdx
	movq	(%rdi), %r8 
	movq	(%r9 ), %r10
	movq	%r8 , %rax
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
	movq	%r8 , %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%r10, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %r11
	movq	(%r11), %r8 
	movq	%rdx, %r10
	addq	%r8 , %r10
	movq	%r10, (%rsi)
	movq	(%r9 ), %rdx
	movq	%rdx, %r8 
	addq	$1, %r8 
	movq	%r8 , (%r9 )
	jmp	_cond2406
	.text
_cond2389:
	movq	(%rdx), %r8 
	cmpq	$10, %r8 
	setl	%r10b
	andq	$1, %r10
	cmpq	$0, %r10
	jne	_body2388
	jmp	_post2387
	.text
_cond2406:
	movq	(%r9 ), %rdx
	cmpq	$10, %rdx
	setl	%r8b
	andq	$1, %r8 
	cmpq	$0, %r8 
	jne	_body2405
	jmp	_post2404
	.text
_post2387:
	movq	$0, %rax
	movq	%r9 , %rcx
	movq	%rax, (%rcx)
	jmp	_cond2406
	.text
_post2404:
	movq	(%rsi), %rdi
	movq	%rdi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	