	.text
	.globl	gcd
gcd:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rdx
	subq	$8, %rsp
	movq	%rsp, %r8 
	subq	$8, %rsp
	movq	%rsp, %r9 
	movq	%rdi, (%rdx)
	movq	%rsi, (%r8 )
	jmp	_cond6239
	.text
_body6238:
	movq	(%r8 ), %rsi
	movq	%rsi, (%r9 )
	movq	(%r8 ), %rsi
	movq	(%rdx), %rdi
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	callq	mod
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	movq	%rax, %r10
	movq	%r10, (%r8 )
	movq	(%r9 ), %rsi
	movq	%rsi, (%rdx)
	jmp	_cond6239
	.text
_cond6239:
	movq	(%r8 ), %rsi
	cmpq	$0, %rsi
	setne	%dil
	andq	$1, %rdi
	cmpq	$0, %rdi
	jne	_body6238
	jmp	_post6237
	.text
_post6237:
	movq	(%rdx), %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	mod
mod:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rdx
	subq	$8, %rsp
	movq	%rsp, %r8 
	subq	$8, %rsp
	movq	%rsp, %r9 
	movq	%rdi, (%rdx)
	movq	%rsi, (%r8 )
	movq	(%rdx), %rsi
	movq	%rsi, (%r9 )
	jmp	_cond6223
	.text
_body6222:
	movq	(%r9 ), %rdx
	movq	(%r8 ), %rsi
	movq	%rdx, %rdi
	subq	%rsi, %rdi
	movq	%rdi, (%r9 )
	jmp	_cond6223
	.text
_cond6223:
	movq	(%r9 ), %rdx
	movq	(%r8 ), %rsi
	movq	%rdx, %rdi
	subq	%rsi, %rdi
	cmpq	$0, %rdi
	setge	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	_body6222
	jmp	_post6221
	.text
_post6221:
	movq	(%r9 ), %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rdx
	subq	$8, %rsp
	movq	%rsp, %rsi
	movq	$64, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	$48, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	(%rsi), %rdi
	movq	(%rdx), %rsi
	pushq	%rdi
	pushq	%rsi
	pushq	%rdi
	movq	%rsi, %rdi
	popq	%rsi
	callq	gcd
	popq	%rsi
	popq	%rdi
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	