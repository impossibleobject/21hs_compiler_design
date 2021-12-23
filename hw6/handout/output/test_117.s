	.text
	.globl	gcd
gcd:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %r10
	subq	$8, %rsp
	movq	%rsp, %r9 
	subq	$8, %rsp
	movq	%rsp, %r8 
	movq	%rdi, (%r10)
	movq	%rsi, (%r9 )
	jmp	_cond6239
	.text
_body6238:
	movq	(%r9 ), %rsi
	movq	%rsi, (%r8 )
	movq	(%r9 ), %rdx
	movq	(%r10), %rdi
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rdx
	movq	%rdx, %rsi
	callq	mod
	popq	%rdx
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	movq	%rax, %rsi
	movq	%rsi, (%r9 )
	movq	(%r8 ), %rsi
	movq	%rsi, (%r10)
	jmp	_cond6239
	.text
_cond6239:
	movq	(%r9 ), %rdi
	cmpq	$0, %rdi
	setne	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_body6238
	jmp	_post6237
	.text
_post6237:
	movq	(%r10), %rsi
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
	movq	%rsp, %r10
	subq	$8, %rsp
	movq	%rsp, %r9 
	subq	$8, %rsp
	movq	%rsp, %r8 
	movq	%rdi, (%r10)
	movq	%rsi, (%r9 )
	movq	(%r10), %rsi
	movq	%rsi, (%r8 )
	jmp	_cond6223
	.text
_body6222:
	movq	(%r8 ), %rdx
	movq	(%r9 ), %rdi
	movq	%rdx, %rsi
	subq	%rdi, %rsi
	movq	%rsi, (%r8 )
	jmp	_cond6223
	.text
_cond6223:
	movq	(%r8 ), %rdx
	movq	(%r9 ), %rsi
	movq	%rdx, %rdi
	subq	%rsi, %rdi
	cmpq	$0, %rdi
	setge	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_body6222
	jmp	_post6221
	.text
_post6221:
	movq	(%r8 ), %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %r8 
	subq	$8, %rsp
	movq	%rsp, %rsi
	movq	$64, %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	movq	$48, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	(%rsi), %rdx
	movq	(%r8 ), %rdi
	pushq	%rdi
	pushq	%rdx
	movq	%rdx, %rsi
	callq	gcd
	popq	%rdx
	popq	%rdi
	movq	%rax, %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	