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
	movq	(%r8 ), %rdi
	movq	(%rdx), %rsi
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%rdi
	movq	%rsi, %rdi
	popq	%rsi
	callq	mod
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	movq	%rax, %r10
	movq	%r10, (%r8 )
	movq	(%r9 ), %rdi
	movq	%rdi, (%rdx)
	jmp	_cond6239
	.text
_cond6239:
	movq	(%r8 ), %r11
	cmpq	$0, %r11
	setne	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_body6238
	jmp	_post6237
	.text
_post6237:
	movq	(%rdx), %r8 
	movq	%r8 , %rax
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
	movq	(%r9 ), %rdi
	movq	(%r8 ), %rdx
	movq	%rdi, %rsi
	subq	%rdx, %rsi
	movq	%rsi, (%r9 )
	jmp	_cond6223
	.text
_cond6223:
	movq	(%r9 ), %rdi
	movq	(%r8 ), %r10
	movq	%rdi, %r11
	subq	%r10, %r11
	cmpq	$0, %r11
	setge	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	_body6222
	jmp	_post6221
	.text
_post6221:
	movq	(%r9 ), %r8 
	movq	%r8 , %rax
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
	movq	(%rdx), %r8 
	pushq	%r8 
	pushq	%rdi
	movq	%rdi, %rsi
	movq	%r8 , %rdi
	callq	gcd
	popq	%rdi
	popq	%r8 
	movq	%rax, %r9 
	movq	%r9 , %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	