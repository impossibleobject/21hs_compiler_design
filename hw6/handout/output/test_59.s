	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %r8 
	subq	$8, %rsp
	movq	%rsp, %rdx
	movq	$0, %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	jmp	_cond40
	.text
_body39:
	movq	(%r8 ), %rdi
	movq	%rdi, %rsi
	addq	$2, %rsi
	movq	%rsi, (%r8 )
	movq	(%rdx), %rdi
	movq	%rdi, %rsi
	addq	$1, %rsi
	movq	%rsi, (%rdx)
	jmp	_cond40
	.text
_cond40:
	movq	(%rdx), %rdi
	cmpq	$3, %rdi
	setl	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_body39
	jmp	_post38
	.text
_post38:
	movq	(%r8 ), %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	