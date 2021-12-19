	.text
	.globl	binary_gcd
binary_gcd:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %r10
	subq	$8, %rsp
	movq	%rsp, %r8 
	movq	%rdi, (%r10)
	movq	%rsi, (%r8 )
	movq	(%r10), %rdx
	movq	(%r8 ), %rdi
	cmpq	%rdi, %rdx
	sete	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
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
	movq	(%r8 ), %rdi
	movq	%rdi, %rax
	movq	$1, %rcx
	shrq	%cl, %rax
	movq	%rax, %rdx
	movq	(%r10), %rdi
	movq	%rdi, %rax
	movq	$1, %rcx
	shrq	%cl, %rax
	movq	%rax, %rsi
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	callq	binary_gcd
	popq	%rdx
	popq	%rsi
	movq	%rax, %rdi
	movq	%rdi, %rax
	movq	$1, %rcx
	shlq	%cl, %rax
	movq	%rax, %rsi
	movq	%rsi, %rax
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
	movq	(%r10), %rdi
	cmpq	$0, %rdi
	sete	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_then4947
	jmp	_else4946
	.text
_merge4945:
	movq	(%r8 ), %rdi
	cmpq	$0, %rdi
	sete	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_then4953
	jmp	_else4952
	.text
_merge4951:
	movq	(%r10), %rdi
	movq	%rdi, %rsi
	xorq	$-1, %rsi
	movq	%rsi, %rdi
	andq	$1, %rdi
	cmpq	$1, %rdi
	sete	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_then4976
	jmp	_else4975
	.text
_merge4971:
	jmp	_merge4974
	.text
_merge4974:
	movq	(%r8 ), %rdi
	movq	%rdi, %rsi
	xorq	$-1, %rsi
	movq	%rsi, %rdi
	andq	$1, %rdi
	cmpq	$1, %rdi
	sete	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_then4987
	jmp	_else4986
	.text
_merge4985:
	movq	(%r10), %rdx
	movq	(%r8 ), %rdi
	cmpq	%rdi, %rdx
	setg	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_then4999
	jmp	_else4998
	.text
_merge4997:
	movq	(%r10), %r9 
	movq	(%r8 ), %rdx
	movq	(%r10), %rsi
	movq	%rdx, %rdi
	subq	%rsi, %rdi
	movq	%rdi, %rax
	movq	$1, %rcx
	shrq	%cl, %rax
	movq	%rax, %rsi
	pushq	%r9 
	pushq	%rsi
	movq	%rsi, %rdi
	movq	%r9 , %rsi
	callq	binary_gcd
	popq	%rsi
	popq	%r9 
	movq	%rax, %rdi
	movq	%rdi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4941:
	movq	(%r10), %rdi
	movq	%rdi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4947:
	movq	(%r8 ), %rdi
	movq	%rdi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4953:
	movq	(%r10), %rdi
	movq	%rdi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4973:
	movq	(%r8 ), %rdx
	movq	(%r10), %rdi
	movq	%rdi, %rax
	movq	$1, %rcx
	shrq	%cl, %rax
	movq	%rax, %rsi
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	movq	%rdx, %rsi
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
	movq	(%r8 ), %rdi
	movq	%rdi, %rax
	movq	$1, %rcx
	shrq	%cl, %rax
	movq	%rax, %rdx
	movq	(%r10), %rsi
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	callq	binary_gcd
	popq	%rdx
	popq	%rsi
	movq	%rax, %rdi
	movq	%rdi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4999:
	movq	(%r8 ), %r9 
	movq	(%r10), %rdx
	movq	(%r8 ), %rsi
	movq	%rdx, %rdi
	subq	%rsi, %rdi
	movq	%rdi, %rax
	movq	$1, %rcx
	shrq	%cl, %rax
	movq	%rax, %rsi
	pushq	%r9 
	pushq	%rsi
	movq	%rsi, %rdi
	movq	%r9 , %rsi
	callq	binary_gcd
	popq	%rsi
	popq	%r9 
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
	movq	%rsp, %r8 
	subq	$8, %rsp
	movq	%rsp, %rsi
	movq	$21, %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	movq	$15, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	(%rsi), %rdx
	movq	(%r8 ), %rdi
	pushq	%rdi
	pushq	%rdx
	movq	%rdx, %rsi
	callq	binary_gcd
	popq	%rdx
	popq	%rdi
	movq	%rax, %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	