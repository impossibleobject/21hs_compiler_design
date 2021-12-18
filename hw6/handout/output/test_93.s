	.data
	.globl	_str_arr2339
_str_arr2339:
	.asciz	"Hello world!"
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %r11
	leaq	_str_arr2339(%rip), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %r10
	movq	%r10, (%r11)
	movq	(%r11), %r10
	pushq	%r10
	movq	%r10, %rdi
	callq	print_string
	popq	%r10
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	