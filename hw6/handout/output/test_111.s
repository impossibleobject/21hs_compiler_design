	.text
	.globl	fibR
fibR:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$72, %rsp
	subq	$8, %rsp
	movq	%rsp, %r11
	movq	%rdi, (%r11)
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, %rax
	sete	-16(%rbp)
	andq	$1, -16(%rbp)
	cmpq	$0, -16(%rbp)
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
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$1, %rax
	sete	-32(%rbp)
	andq	$1, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	_then4740
	jmp	_else4739
	.text
_merge4738:
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -48(%rbp)
	pushq	%r11
	movq	-48(%rbp), %rdi
	callq	fibR
	popq	%r11
	movq	%rax, -56(%rbp)
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %r11
	subq	$2, %r11
	pushq	%r11
	movq	%r11, %rdi
	callq	fibR
	popq	%r11
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %r11
	addq	-72(%rbp), %r11
	movq	%r11, %rax
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
	subq	$152, %rsp
	subq	$8, %rsp
	movq	%rsp, %r11
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, -16(%rbp)
	subq	$8, %rsp
	movq	%rsp, -24(%rbp)
	movq	%rdi, (%r11)
	movq	$0, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$1, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	$0, %rax
	sete	-40(%rbp)
	andq	$1, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	_then4700
	jmp	_else4699
	.text
_body4711:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	addq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%r11, %rcx
	movq	%rax, (%rcx)
	jmp	_cond4712
	.text
_cond4712:
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	subq	$2, %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	cmpq	$0, %rax
	setg	-120(%rbp)
	andq	$1, -120(%rbp)
	cmpq	$0, -120(%rbp)
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
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	cmpq	$1, %rax
	sete	-136(%rbp)
	andq	$1, -136(%rbp)
	cmpq	$0, -136(%rbp)
	jne	_then4706
	jmp	_else4705
	.text
_merge4704:
	jmp	_cond4712
	.text
_post4710:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	%r11, %rax
	addq	-144(%rbp), %rax
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4700:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	%r11, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4706:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	%r11, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	subq	$8, %rsp
	movq	%rsp, %r11
	movq	$1, %rax
	movq	%r11, %rcx
	movq	%rax, (%rcx)
	pushq	%r11
	movq	$12, %rdi
	callq	fibR
	popq	%r11
	movq	%rax, %r10
	cmpq	$144, %r10
	sete	-8(%rbp)
	andq	$1, -8(%rbp)
	pushq	%r11
	movq	$12, %rdi
	callq	fibI
	popq	%r11
	movq	%rax, %r10
	cmpq	$144, %r10
	sete	-16(%rbp)
	andq	$1, -16(%rbp)
	movq	-8(%rbp), %r10
	andq	-16(%rbp), %r10
	cmpq	$0, %r10
	jne	_then4686
	jmp	_else4685
	.text
_else4685:
	jmp	_merge4684
	.text
_merge4684:
	movq	(%r11), %r10
	movq	%r10, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4686:
	movq	$0, %rax
	movq	%r11, %rcx
	movq	%rax, (%rcx)
	jmp	_merge4684