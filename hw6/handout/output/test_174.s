	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	subq	$8, %rsp
	movq	%rsp, %r11
	subq	$8, %rsp
	movq	%rsp, %r10
	movq	$0, %rax
	movq	%r11, %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	%r10, %rcx
	movq	%rax, (%rcx)
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, %rax
	sete	%r11b
	andq	$1, %r11
	cmpq	$0, %r11
	jne	_null8622
	jmp	_notnull8621
	.text
_merge8620:
	movq	(%r10), %r11
	movq	%r11, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_notnull8621:
	movq	$4, %rax
	movq	%r10, %rcx
	movq	%rax, (%rcx)
	jmp	_merge8620
	.text
_null8622:
	movq	$5, %rax
	movq	%r10, %rcx
	movq	%rax, (%rcx)
	jmp	_merge8620