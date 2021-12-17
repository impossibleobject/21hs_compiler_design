	.data
	.globl	_str_arr754
_str_arr754:
	.asciz	"abc"
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	leaq	_str_arr754(%rip), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	print_string
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	