	.text
	.globl	gcd
gcd:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	subq	$8, %rsp
	movq	%rsp, %r11
	subq	$8, %rsp
	movq	%rsp, %r10
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	movq	%rdi, (%r11)
	movq	%rsi, (%r10)
	jmp	_cond6239
	.text
_body6238:
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	pushq	%r11
	pushq	%r10
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdi
	callq	mod
	popq	%r10
	popq	%r11
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%r10, %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%r11, %rcx
	movq	%rax, (%rcx)
	jmp	_cond6239
	.text
_cond6239:
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpq	$0, %rax
	setne	-64(%rbp)
	andq	$1, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	_body6238
	jmp	_post6237
	.text
_post6237:
	movq	(%r11), %r10
	movq	%r10, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	mod
mod:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	subq	$8, %rsp
	movq	%rsp, %r11
	subq	$8, %rsp
	movq	%rsp, %r10
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	movq	%rdi, (%r11)
	movq	%rsi, (%r10)
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond6223
	.text
_body6222:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	%r11, %rax
	subq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond6223
	.text
_cond6223:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	%r11, %rax
	subq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpq	$0, %rax
	setge	%r11b
	andq	$1, %r11
	cmpq	$0, %r11
	jne	_body6222
	jmp	_post6221
	.text
_post6221:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r10
	movq	%r10, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
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
	movq	$64, %rax
	movq	%r11, %rcx
	movq	%rax, (%rcx)
	movq	$48, %rax
	movq	%r10, %rcx
	movq	%rax, (%rcx)
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	(%r11), %r10
	pushq	%r10
	movq	-8(%rbp), %rsi
	movq	%r10, %rdi
	callq	gcd
	popq	%r10
	movq	%rax, %r11
	movq	%r11, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	