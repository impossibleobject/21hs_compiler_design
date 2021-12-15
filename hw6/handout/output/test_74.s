	.data
	.globl	str
str:
	.quad	_str2194
	.data
	.globl	_str2194
_str2194:
	.asciz	"hello"
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
	leaq	str(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %r9 
	pushq	%r9 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%r9 , %rdi
	callq	array_of_string
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r9 
	movq	%rax, %r8 
	movq	%r8 , (%rdi)
	movq	$0, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	jmp	_cond2178
	.text
_body2177:
	movq	(%rsi), %r9 
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
	movq	(%r11), %r8 
	movq	%r9 , %r10
	addq	%r8 , %r10
	movq	%r10, (%rsi)
	movq	(%rdx), %r9 
	movq	%r9 , %r8 
	addq	$1, %r8 
	movq	%r8 , (%rdx)
	jmp	_cond2178
	.text
_cond2178:
	movq	(%rdx), %r9 
	cmpq	$5, %r9 
	setl	%r8b
	andq	$1, %r8 
	cmpq	$0, %r8 
	jne	_body2177
	jmp	_post2176
	.text
_post2176:
	movq	(%rsi), %rdi
	pushq	%rdi
	pushq	%rsi
	callq	print_int
	popq	%rsi
	popq	%rdi
	movq	(%rsi), %rdi
	movq	%rdi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	