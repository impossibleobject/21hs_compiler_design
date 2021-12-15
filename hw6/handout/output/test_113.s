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
	jne	_then4725
	jmp	_else4724
	.text
_else4724:
	jmp	_merge4723
	.text
_else4729:
	jmp	_merge4728
	.text
_merge4723:
	movq	(%rdx), %rsi
	cmpq	$1, %rsi
	sete	%dil
	andq	$1, %rdi
	cmpq	$0, %rdi
	jne	_then4730
	jmp	_else4729
	.text
_merge4728:
	movq	(%rdx), %rsi
	movq	%rsi, %rdi
	subq	$1, %rdi
	pushq	%rdi
	pushq	%rdx
	callq	fibR
	popq	%rdx
	popq	%rdi
	movq	%rax, %rsi
	movq	(%rdx), %rdi
	movq	%rdi, %rdx
	subq	$2, %rdx
	pushq	%rsi
	pushq	%rdx
	movq	%rdx, %rdi
	callq	fibR
	popq	%rdx
	popq	%rsi
	movq	%rax, %rdi
	movq	%rsi, %rdx
	addq	%rdi, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4725:
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4730:
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
	jne	_then4690
	jmp	_else4689
	.text
_body4701:
	movq	(%r8 ), %rdi
	movq	%rdi, (%r9 )
	movq	(%r8 ), %rdi
	movq	(%rsi), %r10
	movq	%rdi, %r11
	addq	%r10, %r11
	movq	%r11, (%r8 )
	movq	(%r9 ), %rdi
	movq	%rdi, (%rsi)
	movq	(%rdx), %rdi
	movq	%rdi, %r10
	subq	$1, %r10
	movq	%r10, (%rdx)
	jmp	_cond4702
	.text
_cond4702:
	movq	(%rdx), %rdi
	movq	%rdi, %r10
	subq	$2, %r10
	cmpq	$0, %r10
	setg	%dil
	andq	$1, %rdi
	cmpq	$0, %rdi
	jne	_body4701
	jmp	_post4700
	.text
_else4689:
	jmp	_merge4688
	.text
_else4695:
	jmp	_merge4694
	.text
_merge4688:
	movq	(%rdx), %rdi
	cmpq	$1, %rdi
	sete	%r10b
	andq	$1, %r10
	cmpq	$0, %r10
	jne	_then4696
	jmp	_else4695
	.text
_merge4694:
	jmp	_cond4702
	.text
_post4700:
	movq	(%rsi), %rdx
	movq	(%r8 ), %rsi
	movq	%rdx, %rdi
	addq	%rsi, %rdi
	movq	%rdi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4690:
	movq	(%rsi), %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4696:
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
	movq	%rax, %rsi
	cmpq	$144, %rsi
	sete	%r8b
	andq	$1, %r8 
	movq	%rdi, %rsi
	andq	%r8 , %rsi
	cmpq	$0, %rsi
	jne	_then4676
	jmp	_else4675
	.text
_else4675:
	jmp	_merge4674
	.text
_merge4674:
	movq	(%rdx), %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4676:
	movq	$0, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	jmp	_merge4674