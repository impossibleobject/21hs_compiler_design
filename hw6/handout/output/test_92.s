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
	movq	%rsp, %rdx
	subq	$8, %rsp
	movq	%rsp, %rsi
	subq	$8, %rsp
	movq	%rsp, %rdi
	leaq	str(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %r8 
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
	movq	%rax, %r9 
	movq	%r9 , (%rdx)
	movq	$0, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	%rdi, %rcx
	movq	%rax, (%rcx)
	jmp	_cond2178
	.text
_body2177:
	movq	(%rsi), %r8 
	movq	(%rdx), %r9 
	movq	(%rdi), %r10
	movq	%r9 , %rax
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
	movq	%r9 , %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%r10, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %r11
	movq	(%r11), %r9 
	movq	%r8 , %r10
	addq	%r9 , %r10
	movq	%r10, (%rsi)
	movq	(%rdi), %r8 
	movq	%r8 , %r9 
	addq	$1, %r9 
	movq	%r9 , (%rdi)
	jmp	_cond2178
	.text
_cond2178:
	movq	(%rdi), %r8 
	cmpq	$5, %r8 
	setl	%r10b
	andq	$1, %r10
	cmpq	$0, %r10
	jne	_body2177
	jmp	_post2176
	.text
_post2176:
	movq	(%rsi), %rdx
	pushq	%rsi
	pushq	%rdx
	movq	%rdx, %rdi
	callq	print_int
	popq	%rdx
	popq	%rsi
	movq	(%rsi), %rdi
	movq	%rdi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	