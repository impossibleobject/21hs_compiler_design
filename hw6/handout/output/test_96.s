	.data
	.globl	_str_arr2339
_str_arr2339:
	.asciz	"Hello world!"
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	leaq	_str_arr2339(%rip), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	print_string
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	