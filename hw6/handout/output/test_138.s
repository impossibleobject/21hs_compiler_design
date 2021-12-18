	.data
	.globl	_str_arr7211
_str_arr7211:
	.asciz	"ab"
	.text
	.globl	run2
run2:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	subq	$8, %rsp
	movq	%rsp, %r11
	subq	$8, %rsp
	movq	%rsp, %r10
	movq	%rdi, (%r11)
	movq	%rsi, (%r10)
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	pushq	%r11
	pushq	%r10
	movq	-16(%rbp), %rdi
	callq	*-8(%rbp)
	popq	%r10
	popq	%r11
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	(%r10), %r11
	pushq	%r11
	movq	%r11, %rdi
	callq	*-24(%rbp)
	popq	%r11
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	leaq	_str_arr7211(%rip), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %r11
	pushq	%r11
	movq	%r11, %rsi
	leaq	print_string(%rip), %rdi
	callq	run2
	popq	%r11
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	