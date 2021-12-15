	.data
	.globl	i
i:
	.quad	42
	.text
	.globl	f
f:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rdi
	movq	%rdi, (%rdi)
	movq	(%rdi), %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	g
g:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rdi
	movq	%rdi, (%rdi)
	movq	(%rdi), %rsi
	movq	%rsi, %rax
	movq	%rax, %rdi
	pushq	%rdi
	pushq	%rsi
	movq	$2, %rsi
	callq	oat_assert_array_length
	popq	%rsi
	popq	%rdi
	movq	%rsi, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$16, %rax
	movq	%rax, %rdi
	movq	(%rdi), %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
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
	pushq	%r9 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	$2, %rdi
	callq	oat_alloc_array
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r9 
	movq	%rax, %r8 
	movq	%r8 , %rax
	movq	%rax, %r10
	pushq	%r10
	pushq	%r9 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	$2, %rdi
	callq	oat_alloc_array
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r9 
	popq	%r10
	movq	%rax, %r8 
	movq	%r8 , %rax
	movq	%rax, %r11
	movq	%r11, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %r8 
	movq	$1, %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	movq	%r11, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, %r8 
	movq	$2, %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	movq	%r10, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %r8 
	movq	%r11, (%r8 )
	pushq	%r10
	pushq	%r9 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	$2, %rdi
	callq	oat_alloc_array
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r9 
	popq	%r10
	movq	%rax, %r8 
	movq	%r8 , %rax
	movq	%rax, %r11
	movq	%r11, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %r8 
	movq	$3, %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	movq	%r11, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, %r8 
	movq	$4, %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	movq	%r10, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, %r8 
	movq	%r11, (%r8 )
	movq	%r10, (%rdi)
	pushq	%r9 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	$4, %rdi
	callq	oat_alloc_array
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r9 
	movq	%rax, %r8 
	movq	%r8 , %rax
	movq	%rax, %r10
	movq	%r10, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %r8 
	movq	$1, %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	movq	%r10, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, %r8 
	movq	$2, %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	movq	%r10, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$16, %rax
	movq	%rax, %r8 
	movq	$3, %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	movq	%r10, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$24, %rax
	movq	%rax, %r8 
	movq	$4, %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	movq	%r10, (%rsi)
	movq	$0, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	%r9 , %rcx
	movq	%rax, (%rcx)
	jmp	_cond848
	.text
_body847:
	movq	(%rdx), %r8 
	movq	%r8 , %r10
	addq	$1, %r10
	movq	%r10, (%rdx)
	movq	(%r9 ), %r8 
	movq	%r8 , %r10
	addq	$1, %r10
	movq	%r10, (%r9 )
	jmp	_cond848
	.text
_cond848:
	movq	(%r9 ), %r8 
	cmpq	$100, %r8 
	setl	%r10b
	andq	$1, %r10
	cmpq	$0, %r10
	jne	_body847
	jmp	_post846
	.text
_post846:
	movq	(%rsi), %r9 
	pushq	%r9 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%r9 , %rdi
	callq	g
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r9 
	movq	%rax, %r8 
	leaq	i(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %r9 
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%r9 , %rdi
	callq	f
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	movq	%rax, %r10
	movq	%r8 , %r9 
	addq	%r10, %r9 
	movq	(%rsi), %r8 
	movq	%r8 , %rax
	movq	%rax, %rsi
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	movq	$3, %rsi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	movq	%r8 , %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$24, %rax
	movq	%rax, %rsi
	movq	(%rsi), %r8 
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rdx
	movq	%r8 , %rdi
	callq	f
	popq	%rdx
	popq	%rdi
	popq	%r8 
	popq	%r9 
	movq	%rax, %rsi
	movq	%r9 , %r8 
	addq	%rsi, %r8 
	movq	(%rdi), %rsi
	movq	%rsi, %rax
	movq	%rax, %rdi
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	$1, %rsi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	movq	%rsi, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, %rdi
	movq	(%rdi), %rsi
	movq	%rsi, %rax
	movq	%rax, %rdi
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	$1, %rsi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	movq	%rsi, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, %rdi
	movq	(%rdi), %rsi
	pushq	%r8 
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	callq	f
	popq	%rdx
	popq	%rsi
	popq	%r8 
	movq	%rax, %rdi
	movq	%r8 , %rsi
	addq	%rdi, %rsi
	movq	(%rdx), %rdi
	pushq	%rdi
	pushq	%rsi
	callq	f
	popq	%rsi
	popq	%rdi
	movq	%rax, %rdx
	movq	%rsi, %rdi
	addq	%rdx, %rdi
	movq	%rdi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	