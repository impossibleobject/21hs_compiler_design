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
	movq	(%rdx), %r8 
	movq	%r8 , %rax
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
	movq	%rax, %r9 
	movq	%r9 , %rax
	movq	$1, %rcx
	shlq	%cl, %rax
	movq	%rax, %r10
	movq	%r10, %rax
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
	movq	(%rdx), %r11
	cmpq	$0, %r11
	sete	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_then4947
	jmp	_else4946
	.text
_merge4945:
	movq	(%r8 ), %rdi
	cmpq	$0, %rdi
	sete	%r9b
	andq	$1, %r9 
	cmpq	$0, %r9 
	jne	_then4953
	jmp	_else4952
	.text
_merge4951:
	movq	(%rdx), %r10
	movq	%r10, %r11
	xorq	$-1, %r11
	movq	%r11, %rsi
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
	movq	(%r8 ), %r9 
	movq	%r9 , %r10
	xorq	$-1, %r10
	movq	%r10, %r11
	andq	$1, %r11
	cmpq	$1, %r11
	sete	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_then4987
	jmp	_else4986
	.text
_merge4985:
	movq	(%rdx), %rdi
	movq	(%r8 ), %r9 
	cmpq	%r9 , %rdi
	setg	%r10b
	andq	$1, %r10
	cmpq	$0, %r10
	jne	_then4999
	jmp	_else4998
	.text
_merge4997:
	movq	(%rdx), %r11
	movq	(%r8 ), %rsi
	movq	(%rdx), %r8 
	movq	%rsi, %rdx
	subq	%r8 , %rdx
	movq	%rdx, %rax
	movq	$1, %rcx
	shrq	%cl, %rax
	movq	%rax, %r8 
	pushq	%r11
	pushq	%r8 
	movq	%r11, %rsi
	movq	%r8 , %rdi
	callq	binary_gcd
	popq	%r8 
	popq	%r11
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4941:
	movq	(%rdx), %r8 
	movq	%r8 , %rax
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
	movq	(%rdx), %rdi
	movq	%rdi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4973:
	movq	(%r8 ), %r9 
	movq	(%rdx), %r8 
	movq	%r8 , %rax
	movq	$1, %rcx
	shrq	%cl, %rax
	movq	%rax, %rdx
	pushq	%r9 
	pushq	%rdx
	movq	%r9 , %rsi
	movq	%rdx, %rdi
	callq	binary_gcd
	popq	%rdx
	popq	%r9 
	movq	%rax, %r10
	movq	%r10, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4976:
	movq	(%r8 ), %r11
	movq	%r11, %rsi
	andq	$1, %rsi
	cmpq	$1, %rsi
	sete	%dil
	andq	$1, %rdi
	cmpq	$0, %rdi
	jne	_then4973
	jmp	_else4972
	.text
_then4987:
	movq	(%r8 ), %r9 
	movq	%r9 , %rax
	movq	$1, %rcx
	shrq	%cl, %rax
	movq	%rax, %r8 
	movq	(%rdx), %r10
	pushq	%r10
	pushq	%r8 
	movq	%r8 , %rsi
	movq	%r10, %rdi
	callq	binary_gcd
	popq	%r8 
	popq	%r10
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4999:
	movq	(%r8 ), %r11
	movq	(%rdx), %rsi
	movq	(%r8 ), %rdx
	movq	%rsi, %rdi
	subq	%rdx, %rdi
	movq	%rdi, %rax
	movq	$1, %rcx
	shrq	%cl, %rax
	movq	%rax, %r8 
	pushq	%r11
	pushq	%r8 
	movq	%r11, %rsi
	movq	%r8 , %rdi
	callq	binary_gcd
	popq	%r8 
	popq	%r11
	movq	%rax, %r9 
	movq	%r9 , %rax
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
	movq	(%rdx), %r8 
	pushq	%r8 
	pushq	%rdi
	movq	%rdi, %rsi
	movq	%r8 , %rdi
	callq	binary_gcd
	popq	%rdi
	popq	%r8 
	movq	%rax, %r9 
	movq	%r9 , %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	