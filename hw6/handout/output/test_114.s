	.text
	.globl	fibR
fibR:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rdx
	movq	%rdi, (%rdx)
	movq	(%rdx), %rsi
	cmpq	$0, %rsi
	sete	%dil
	andq	$1, %rdi
	cmpq	$0, %rdi
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
	movq	(%rdx), %r8 
	cmpq	$1, %r8 
	sete	%r9b
	andq	$1, %r9 
	cmpq	$0, %r9 
	jne	_then4740
	jmp	_else4739
	.text
_merge4738:
	movq	(%rdx), %r10
	movq	%r10, %rsi
	subq	$1, %rsi
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	callq	fibR
	popq	%rdx
	popq	%rsi
	movq	%rax, %rdi
	movq	(%rdx), %r8 
	movq	%r8 , %rdx
	subq	$2, %rdx
	pushq	%rdi
	pushq	%rdx
	movq	%rdx, %rdi
	callq	fibR
	popq	%rdx
	popq	%rdi
	movq	%rax, %r9 
	movq	%rdi, %r10
	addq	%r9 , %r10
	movq	%r10, %rax
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
	subq	$8, %rsp
	movq	%rsp, %rdx
	subq	$8, %rsp
	movq	%rsp, %rsi
	subq	$8, %rsp
	movq	%rsp, %r8 
	subq	$8, %rsp
	movq	%rsp, %r9 
	movq	%rdi, (%rdx)
	movq	$0, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	$1, %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	movq	(%rdx), %rdi
	cmpq	$0, %rdi
	sete	%r10b
	andq	$1, %r10
	cmpq	$0, %r10
	jne	_then4700
	jmp	_else4699
	.text
_body4711:
	movq	(%r8 ), %rdi
	movq	%rdi, (%r9 )
	movq	(%r8 ), %r10
	movq	(%rsi), %r11
	movq	%r10, %rdi
	addq	%r11, %rdi
	movq	%rdi, (%r8 )
	movq	(%r9 ), %r10
	movq	%r10, (%rsi)
	movq	(%rdx), %r11
	movq	%r11, %rdi
	subq	$1, %rdi
	movq	%rdi, (%rdx)
	jmp	_cond4712
	.text
_cond4712:
	movq	(%rdx), %r10
	movq	%r10, %r11
	subq	$2, %r11
	cmpq	$0, %r11
	setg	%dil
	andq	$1, %rdi
	cmpq	$0, %rdi
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
	movq	(%rdx), %r10
	cmpq	$1, %r10
	sete	%r11b
	andq	$1, %r11
	cmpq	$0, %r11
	jne	_then4706
	jmp	_else4705
	.text
_merge4704:
	jmp	_cond4712
	.text
_post4710:
	movq	(%rsi), %rdx
	movq	(%r8 ), %rsi
	movq	%rdx, %r8 
	addq	%rsi, %r8 
	movq	%r8 , %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4700:
	movq	(%rsi), %r9 
	movq	%r9 , %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4706:
	movq	(%r8 ), %rdx
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
	movq	$1, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	pushq	%rdx
	movq	$12, %rdi
	callq	fibR
	popq	%rdx
	movq	%rax, %rsi
	cmpq	$144, %rsi
	sete	%dil
	andq	$1, %rdi
	pushq	%rdi
	pushq	%rdx
	movq	$12, %rdi
	callq	fibI
	popq	%rdx
	popq	%rdi
	movq	%rax, %r8 
	cmpq	$144, %r8 
	sete	%r9b
	andq	$1, %r9 
	movq	%rdi, %rsi
	andq	%r9 , %rsi
	cmpq	$0, %rsi
	jne	_then4686
	jmp	_else4685
	.text
_else4685:
	jmp	_merge4684
	.text
_merge4684:
	movq	(%rdx), %rdi
	movq	%rdi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4686:
	movq	$0, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	jmp	_merge4684