	.data
	.globl	_str_arr2201
_str_arr2201:
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
	subq	$8, %rsp
	movq	%rsp, %r9 
	leaq	_str_arr2201(%rip), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %r8 
	movq	%r8 , (%rdi)
	movq	(%rdi), %r8 
	pushq	%r9 
	pushq	%r8 
	pushq	%rsi
	pushq	%rdx
	movq	%r8 , %rdi
	callq	array_of_string
	popq	%rdx
	popq	%rsi
	popq	%r8 
	popq	%r9 
	movq	%rax, %rdi
	movq	%rdi, (%rsi)
	movq	$0, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	%r9 , %rcx
	movq	%rax, (%rcx)
	jmp	_cond2217
	.text
_body2216:
	movq	(%rdx), %rdi
	movq	(%rsi), %r8 
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
	movq	%rdi, %r10
	addq	%r8 , %r10
	movq	%r10, (%rdx)
	movq	(%r9 ), %rdi
	movq	%rdi, %r8 
	addq	$1, %r8 
	movq	%r8 , (%r9 )
	jmp	_cond2217
	.text
_cond2217:
	movq	(%r9 ), %rdi
	cmpq	$5, %rdi
	setl	%r8b
	andq	$1, %r8 
	cmpq	$0, %r8 
	jne	_body2216
	jmp	_post2215
	.text
_post2215:
	movq	(%rdx), %rdi
	movq	%rdi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	