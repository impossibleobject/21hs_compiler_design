	.text
	.globl	binary_gcd
binary_gcd:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$248, %rsp
	subq	$8, %rsp
	movq	%rsp, %r11
	subq	$8, %rsp
	movq	%rsp, %r10
	movq	%rdi, (%r11)
	movq	%rsi, (%r10)
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	sete	-24(%rbp)
	andq	$1, -24(%rbp)
	cmpq	$0, -24(%rbp)
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
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	$1, %rcx
	shrq	%cl, %rax
	movq	%rax, %r10
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	$1, %rcx
	shrq	%cl, %rax
	movq	%rax, %r11
	pushq	%r11
	pushq	%r10
	movq	%r10, %rsi
	movq	%r11, %rdi
	callq	binary_gcd
	popq	%r10
	popq	%r11
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	$1, %rcx
	shlq	%cl, %rax
	movq	%rax, %r11
	movq	%r11, %rax
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
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpq	$0, %rax
	sete	-64(%rbp)
	andq	$1, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	_then4947
	jmp	_else4946
	.text
_merge4945:
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	cmpq	$0, %rax
	sete	-80(%rbp)
	andq	$1, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	_then4953
	jmp	_else4952
	.text
_merge4951:
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	xorq	$-1, %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	andq	$1, %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	cmpq	$1, %rax
	sete	-112(%rbp)
	andq	$1, -112(%rbp)
	cmpq	$0, -112(%rbp)
	jne	_then4976
	jmp	_else4975
	.text
_merge4971:
	jmp	_merge4974
	.text
_merge4974:
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	xorq	$-1, %rax
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	andq	$1, %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	cmpq	$1, %rax
	sete	-144(%rbp)
	andq	$1, -144(%rbp)
	cmpq	$0, -144(%rbp)
	jne	_then4987
	jmp	_else4986
	.text
_merge4985:
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)
	movq	-152(%rbp), %rax
	cmpq	-160(%rbp), %rax
	setg	-168(%rbp)
	andq	$1, -168(%rbp)
	cmpq	$0, -168(%rbp)
	jne	_then4999
	jmp	_else4998
	.text
_merge4997:
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -184(%rbp)
	movq	(%r11), %r10
	movq	-184(%rbp), %r11
	subq	%r10, %r11
	movq	%r11, %rax
	movq	$1, %rcx
	shrq	%cl, %rax
	movq	%rax, %r10
	pushq	%r10
	movq	-176(%rbp), %rsi
	movq	%r10, %rdi
	callq	binary_gcd
	popq	%r10
	movq	%rax, %r11
	movq	%r11, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4941:
	movq	(%r11), %r10
	movq	%r10, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4947:
	movq	(%r10), %r11
	movq	%r11, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4953:
	movq	(%r11), %r10
	movq	%r10, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4973:
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -192(%rbp)
	movq	(%r11), %r10
	movq	%r10, %rax
	movq	$1, %rcx
	shrq	%cl, %rax
	movq	%rax, %r11
	pushq	%r11
	movq	-192(%rbp), %rsi
	movq	%r11, %rdi
	callq	binary_gcd
	popq	%r11
	movq	%rax, %r10
	movq	%r10, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4976:
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rax
	andq	$1, %rax
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rax
	cmpq	$1, %rax
	sete	-216(%rbp)
	andq	$1, -216(%rbp)
	cmpq	$0, -216(%rbp)
	jne	_then4973
	jmp	_else4972
	.text
_then4987:
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rax
	movq	$1, %rcx
	shrq	%cl, %rax
	movq	%rax, %r10
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -232(%rbp)
	pushq	%r10
	movq	%r10, %rsi
	movq	-232(%rbp), %rdi
	callq	binary_gcd
	popq	%r10
	movq	%rax, %r11
	movq	%r11, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4999:
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -240(%rbp)
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -248(%rbp)
	movq	(%r10), %r11
	movq	-248(%rbp), %r10
	subq	%r11, %r10
	movq	%r10, %rax
	movq	$1, %rcx
	shrq	%cl, %rax
	movq	%rax, %r11
	pushq	%r11
	movq	-240(%rbp), %rsi
	movq	%r11, %rdi
	callq	binary_gcd
	popq	%r11
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
	movq	$21, %rax
	movq	%r11, %rcx
	movq	%rax, (%rcx)
	movq	$15, %rax
	movq	%r10, %rcx
	movq	%rax, (%rcx)
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	(%r11), %r10
	pushq	%r10
	movq	-8(%rbp), %rsi
	movq	%r10, %rdi
	callq	binary_gcd
	popq	%r10
	movq	%rax, %r11
	movq	%r11, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	