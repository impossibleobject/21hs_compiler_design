	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %r9 
	subq	$8, %rsp
	movq	%rsp, %r8 
	movq	$0, %rax
	movq	%r9 , %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	jmp	_cond15
	.text
_body14:
	movq	(%r9 ), %rsi
	movq	(%r8 ), %rdi
	movq	%rsi, %rdx
	addq	%rdi, %rdx
	movq	(%r8 ), %rdi
	movq	%rdx, %rsi
	imulq	%rdi, %rsi
	movq	%rsi, (%r9 )
	movq	(%r8 ), %rdi
	movq	%rdi, %rsi
	addq	$1, %rsi
	movq	%rsi, (%r8 )
	jmp	_cond15
	.text
_cond15:
	movq	(%r8 ), %rdi
	cmpq	$10, %rdi
	setl	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_body14
	jmp	_post13
	.text
_post13:
	movq	(%r9 ), %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	