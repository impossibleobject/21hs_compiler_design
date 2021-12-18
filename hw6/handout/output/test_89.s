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
	subq	$112, %rsp
	subq	$8, %rsp
	movq	%rsp, %r11
	subq	$8, %rsp
	movq	%rsp, %r10
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	leaq	str(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	pushq	%r11
	pushq	%r10
	movq	-16(%rbp), %rdi
	callq	array_of_string
	popq	%r10
	popq	%r11
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%r11, %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	%r10, %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond2178
	.text
_body2177:
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
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
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rax
	addq	-72(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%r10, %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond2178
	.text
_cond2178:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	cmpq	$5, %rax
	setl	-112(%rbp)
	andq	$1, -112(%rbp)
	cmpq	$0, -112(%rbp)
	jne	_body2177
	jmp	_post2176
	.text
_post2176:
	movq	(%r10), %r11
	pushq	%r11
	pushq	%r10
	movq	%r11, %rdi
	callq	print_int
	popq	%r10
	popq	%r11
	movq	(%r10), %r11
	movq	%r11, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	