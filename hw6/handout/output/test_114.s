	.text
	.globl	fibR
fibR:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$96, %rsp
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	movq	%rdi, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, %rax
	sete	-24(%rbp)
	andq	$1, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	_then4735
	jmp	_else4734
	.text
_else4734:
	jmp	_merge4733
	.text
_else4739:
	jmp	_merge4738
	.text
_merge4733:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	$1, %rax
	sete	-40(%rbp)
	andq	$1, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	_then4740
	jmp	_else4739
	.text
_merge4738:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	fibR
	movq	%rax, -64(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	subq	$2, %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	callq	fibR
	movq	%rax, -88(%rbp)
	movq	-64(%rbp), %rax
	addq	-88(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4735:
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4740:
	movq	$1, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	fibI
fibI:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$184, %rsp
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, -16(%rbp)
	subq	$8, %rsp
	movq	%rsp, -24(%rbp)
	subq	$8, %rsp
	movq	%rsp, -32(%rbp)
	movq	%rdi, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$1, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, %rax
	sete	-48(%rbp)
	andq	$1, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	_then4700
	jmp	_else4699
	.text
_body4711:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	addq	-72(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond4712
	.text
_cond4712:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	subq	$2, %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	cmpq	$0, %rax
	setg	-128(%rbp)
	andq	$1, -128(%rbp)
	cmpq	$0, -128(%rbp)
	jne	_body4711
	jmp	_post4710
	.text
_else4699:
	jmp	_merge4698
	.text
_else4705:
	jmp	_merge4704
	.text
_merge4698:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	cmpq	$1, %rax
	sete	-144(%rbp)
	andq	$1, -144(%rbp)
	cmpq	$0, -144(%rbp)
	jne	_then4706
	jmp	_else4705
	.text
_merge4704:
	jmp	_cond4712
	.text
_post4710:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)
	movq	-152(%rbp), %rax
	addq	-160(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4700:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4706:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$56, %rsp
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	movq	$1, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$12, %rdi
	callq	fibR
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$144, %rax
	sete	-24(%rbp)
	andq	$1, -24(%rbp)
	movq	$12, %rdi
	callq	fibI
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	$144, %rax
	sete	-40(%rbp)
	andq	$1, -40(%rbp)
	movq	-24(%rbp), %rax
	andq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	_then4686
	jmp	_else4685
	.text
_else4685:
	jmp	_merge4684
	.text
_merge4684:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4686:
	movq	$0, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_merge4684