	.data
	.globl	_str_arr1711
_str_arr1711:
	.asciz	"abc"
	.data
	.globl	_str_arr1715
_str_arr1715:
	.asciz	"def"
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	subq	$8, %rsp
	movq	%rsp, %r11
	pushq	%r11
	movq	$2, %rdi
	callq	oat_alloc_array
	popq	%r11
	movq	%rax, %r10
	movq	%r10, %rax
	movq	%rax, -8(%rbp)
	leaq	_str_arr1711(%rip), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %r10
	movq	-8(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -16(%rbp)
	movq	%r10, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	leaq	_str_arr1715(%rip), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %r10
	movq	-8(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, -24(%rbp)
	movq	%r10, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	%r11, %rcx
	movq	%rax, (%rcx)
	movq	(%r11), %r10
	movq	%r10, %rax
	movq	%rax, %r11
	pushq	%r11
	pushq	%r10
	movq	$0, %rsi
	movq	%r11, %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	%r10, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %r11
	movq	(%r11), %r10
	pushq	%r10
	movq	%r10, %rdi
	callq	print_string
	popq	%r10
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	