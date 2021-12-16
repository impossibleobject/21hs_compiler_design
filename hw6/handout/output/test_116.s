	.text
	.globl	binary_gcd
binary_gcd:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rdx
	subq	$8, %rsp
	movq	%rsp, %r8 
	movq	%rdi, (%rdx)
	movq	%rsi, (%r8 )
	movq	(%rdx), %rsi
	movq	(%r8 ), %rdi
	cmpq	%rdi, %rsi
	sete	%r9b
	andq	$1, %r9 
	cmpq	$0, %r9 
	jne	_then4941
	jmp	_else4940
	.text
_else4940:
	jmp	_merge4939
	.text
_else4946:
	jmp	_merge4945
	.text
_else4952:
	jmp	_merge4951
	.text
_else4972:
	movq	(%r8 ), %rsi
	movq	%rsi, %rax
	movq	$1, %rcx
	shrq	%cl, %rax
	movq	%rax, %rdi
	movq	(%rdx), %rsi
	movq	%rsi, %rax
	movq	$1, %rcx
	shrq	%cl, %rax
	movq	%rax, %rdx
	pushq	%rdi
	pushq	%rdx
	movq	%rdi, %rsi
	movq	%rdx, %rdi
	callq	binary_gcd
	popq	%rdx
	popq	%rdi
	movq	%rax, %rsi
	movq	%rsi, %rax
	movq	$1, %rcx
	shlq	%cl, %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_else4975:
	jmp	_merge4974
	.text
_else4986:
	jmp	_merge4985
	.text
_else4998:
	jmp	_merge4997
	.text
_merge4939:
	movq	(%rdx), %rsi
	cmpq	$0, %rsi
	sete	%dil
	andq	$1, %rdi
	cmpq	$0, %rdi
	jne	_then4947
	jmp	_else4946
	.text
_merge4945:
	movq	(%r8 ), %rsi
	cmpq	$0, %rsi
	sete	%dil
	andq	$1, %rdi
	cmpq	$0, %rdi
	jne	_then4953
	jmp	_else4952
	.text
_merge4951:
	movq	(%rdx), %rsi
	movq	%rsi, %rdi
	xorq	$-1, %rdi
	movq	%rdi, %rsi
	andq	$1, %rsi
	cmpq	$1, %rsi
	sete	%dil
	andq	$1, %rdi
	cmpq	$0, %rdi
	jne	_then4976
	jmp	_else4975
	.text
_merge4971:
	jmp	_merge4974
	.text
_merge4974:
	movq	(%r8 ), %rsi
	movq	%rsi, %rdi
	xorq	$-1, %rdi
	movq	%rdi, %rsi
	andq	$1, %rsi
	cmpq	$1, %rsi
	sete	%dil
	andq	$1, %rdi
	cmpq	$0, %rdi
	jne	_then4987
	jmp	_else4986
	.text
_merge4985:
	movq	(%rdx), %rsi
	movq	(%r8 ), %rdi
	cmpq	%rdi, %rsi
	setg	%r9b
	andq	$1, %r9 
	cmpq	$0, %r9 
	jne	_then4999
	jmp	_else4998
	.text
_merge4997:
	movq	(%rdx), %rsi
	movq	(%r8 ), %rdi
	movq	(%rdx), %r8 
	movq	%rdi, %rdx
	subq	%r8 , %rdx
	movq	%rdx, %rax
	movq	$1, %rcx
	shrq	%cl, %rax
	movq	%rax, %rdi
	pushq	%rdi
	pushq	%rsi
	callq	binary_gcd
	popq	%rsi
	popq	%rdi
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4941:
	movq	(%rdx), %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4947:
	movq	(%r8 ), %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4953:
	movq	(%rdx), %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4973:
	movq	(%r8 ), %rsi
	movq	(%rdx), %rdi
	movq	%rdi, %rax
	movq	$1, %rcx
	shrq	%cl, %rax
	movq	%rax, %rdx
	pushq	%rsi
	pushq	%rdx
	movq	%rdx, %rdi
	callq	binary_gcd
	popq	%rdx
	popq	%rsi
	movq	%rax, %rdi
	movq	%rdi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4976:
	movq	(%r8 ), %rsi
	movq	%rsi, %rdi
	andq	$1, %rdi
	cmpq	$1, %rdi
	sete	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_then4973
	jmp	_else4972
	.text
_then4987:
	movq	(%r8 ), %rsi
	movq	%rsi, %rax
	movq	$1, %rcx
	shrq	%cl, %rax
	movq	%rax, %rdi
	movq	(%rdx), %rsi
	pushq	%rdi
	pushq	%rsi
	pushq	%rdi
	movq	%rsi, %rdi
	popq	%rsi
	callq	binary_gcd
	popq	%rsi
	popq	%rdi
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4999:
	movq	(%r8 ), %rsi
	movq	(%rdx), %rdi
	movq	(%r8 ), %rdx
	movq	%rdi, %r8 
	subq	%rdx, %r8 
	movq	%r8 , %rax
	movq	$1, %rcx
	shrq	%cl, %rax
	movq	%rax, %rdx
	pushq	%rsi
	pushq	%rdx
	movq	%rdx, %rdi
	callq	binary_gcd
	popq	%rdx
	popq	%rsi
	movq	%rax, %rdi
	movq	%rdi, %rax
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
	movq	$21, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	$15, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	(%rsi), %rdi
	movq	(%rdx), %rsi
	pushq	%rdi
	pushq	%rsi
	pushq	%rdi
	movq	%rsi, %rdi
	popq	%rsi
	callq	binary_gcd
	popq	%rsi
	popq	%rdi
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	