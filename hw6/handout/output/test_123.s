	.data
	.globl	white
white:
	.quad	_global_struct6723
	.data
	.globl	_global_struct6723
_global_struct6723:
	.quad	255
	.quad	254
	.quad	253
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	$24, %rdi
	callq	oat_malloc
	movq	%rax, %r11
	movq	%r11, %rax
	movq	%rax, %r10
	movq	%r10, %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %r11
	movq	$3, %rax
	movq	%r11, %rcx
	movq	%rax, (%rcx)
	movq	%r10, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %r11
	movq	$5, %rax
	movq	%r11, %rcx
	movq	%rax, (%rcx)
	movq	%r10, %rax
	addq	$0, %rax
	addq	$16, %rax
	movq	%rax, %r11
	movq	$7, %rax
	movq	%r11, %rcx
	movq	%rax, (%rcx)
	leaq	white(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %r10
	movq	%r10, %rax
	addq	$0, %rax
	addq	$16, %rax
	movq	%rax, %r11
	movq	(%r11), %r10
	movq	%r10, %r11
	addq	$1, %r11
	movq	%r11, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	