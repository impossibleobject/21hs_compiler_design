	.text
	.globl	fibR
fibR:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %r8 
	movq	%rdi, (%r8 )
	movq	(%r8 ), %rdi
	cmpq	$0, %rdi
	sete	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
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
	movq	(%r8 ), %rdi
	cmpq	$1, %rdi
	sete	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_then4740
	jmp	_else4739
	.text
_merge4738:
	movq	(%r8 ), %rsi
	movq	%rsi, %rdi
	subq	$1, %rdi
	pushq	%r8 
	pushq	%rdi
	callq	fibR
	popq	%rdi
	popq	%r8 
	movq	%rax, %rdx
	movq	(%r8 ), %rdi
	movq	%rdi, %rsi
	subq	$2, %rsi
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	callq	fibR
	popq	%rdx
	popq	%rsi
	movq	%rax, %rdi
	movq	%rdx, %rsi
	addq	%rdi, %rsi
	movq	%rsi, %rax
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
	movq	%rsp, %r11
	subq	$8, %rsp
	movq	%rsp, %r10
	subq	$8, %rsp
	movq	%rsp, %r9 
	subq	$8, %rsp
	movq	%rsp, %r8 
	movq	%rdi, (%r11)
	movq	$0, %rax
	movq	%r10, %rcx
	movq	%rax, (%rcx)
	movq	$1, %rax
	movq	%r9 , %rcx
	movq	%rax, (%rcx)
	movq	(%r11), %rdi
	cmpq	$0, %rdi
	sete	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_then4700
	jmp	_else4699
	.text
_body4711:
	movq	(%r9 ), %rsi
	movq	%rsi, (%r8 )
	movq	(%r9 ), %rdx
	movq	(%r10), %rdi
	movq	%rdx, %rsi
	addq	%rdi, %rsi
	movq	%rsi, (%r9 )
	movq	(%r8 ), %rsi
	movq	%rsi, (%r10)
	movq	(%r11), %rdi
	movq	%rdi, %rsi
	subq	$1, %rsi
	movq	%rsi, (%r11)
	jmp	_cond4712
	.text
_cond4712:
	movq	(%r11), %rsi
	movq	%rsi, %rdi
	subq	$2, %rdi
	cmpq	$0, %rdi
	setg	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
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
	movq	(%r11), %rdi
	cmpq	$1, %rdi
	sete	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_then4706
	jmp	_else4705
	.text
_merge4704:
	jmp	_cond4712
	.text
_post4710:
	movq	(%r10), %rdx
	movq	(%r9 ), %rdi
	movq	%rdx, %rsi
	addq	%rdi, %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4700:
	movq	(%r10), %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4706:
	movq	(%r9 ), %rsi
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
	movq	$1, %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	pushq	%r8 
	movq	$12, %rdi
	callq	fibR
	popq	%r8 
	movq	%rax, %rdi
	cmpq	$144, %rdi
	sete	%dl
	andq	$1, %rdx
	pushq	%r8 
	pushq	%rdx
	movq	$12, %rdi
	callq	fibI
	popq	%rdx
	popq	%r8 
	movq	%rax, %rsi
	cmpq	$144, %rsi
	sete	%dil
	andq	$1, %rdi
	movq	%rdx, %rsi
	andq	%rdi, %rsi
	cmpq	$0, %rsi
	jne	_then4686
	jmp	_else4685
	.text
_else4685:
	jmp	_merge4684
	.text
_merge4684:
	movq	(%r8 ), %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4686:
	movq	$0, %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	jmp	_merge4684