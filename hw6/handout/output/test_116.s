	.text
	.globl	binary_gcd
binary_gcd:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$416, %rsp
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, -16(%rbp)
	movq	%rdi, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%rsi, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	sete	-40(%rbp)
	andq	$1, -40(%rbp)
	cmpq	$0, -40(%rbp)
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
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	$1, %rcx
	shrq	%cl, %rax
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	$1, %rcx
	shrq	%cl, %rax
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rsi
	movq	-72(%rbp), %rdi
	callq	binary_gcd
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	$1, %rcx
	shlq	%cl, %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
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
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	cmpq	$0, %rax
	sete	-104(%rbp)
	andq	$1, -104(%rbp)
	cmpq	$0, -104(%rbp)
	jne	_then4947
	jmp	_else4946
	.text
_merge4945:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	cmpq	$0, %rax
	sete	-120(%rbp)
	andq	$1, -120(%rbp)
	cmpq	$0, -120(%rbp)
	jne	_then4953
	jmp	_else4952
	.text
_merge4951:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	xorq	$-1, %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	andq	$1, %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	cmpq	$1, %rax
	sete	-152(%rbp)
	andq	$1, -152(%rbp)
	cmpq	$0, -152(%rbp)
	jne	_then4976
	jmp	_else4975
	.text
_merge4971:
	jmp	_merge4974
	.text
_merge4974:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	xorq	$-1, %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	andq	$1, %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	cmpq	$1, %rax
	sete	-184(%rbp)
	andq	$1, -184(%rbp)
	cmpq	$0, -184(%rbp)
	jne	_then4987
	jmp	_else4986
	.text
_merge4985:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -192(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -200(%rbp)
	movq	-192(%rbp), %rax
	cmpq	-200(%rbp), %rax
	setg	-208(%rbp)
	andq	$1, -208(%rbp)
	cmpq	$0, -208(%rbp)
	jne	_then4999
	jmp	_else4998
	.text
_merge4997:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -216(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -232(%rbp)
	movq	-224(%rbp), %rax
	subq	-232(%rbp), %rax
	movq	%rax, -240(%rbp)
	movq	-240(%rbp), %rax
	movq	$1, %rcx
	shrq	%cl, %rax
	movq	%rax, -248(%rbp)
	movq	-216(%rbp), %rsi
	movq	-248(%rbp), %rdi
	callq	binary_gcd
	movq	%rax, -256(%rbp)
	movq	-256(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4941:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -264(%rbp)
	movq	-264(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4947:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -272(%rbp)
	movq	-272(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4953:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -280(%rbp)
	movq	-280(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4973:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -288(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -296(%rbp)
	movq	-296(%rbp), %rax
	movq	$1, %rcx
	shrq	%cl, %rax
	movq	%rax, -304(%rbp)
	movq	-288(%rbp), %rsi
	movq	-304(%rbp), %rdi
	callq	binary_gcd
	movq	%rax, -312(%rbp)
	movq	-312(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4976:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -320(%rbp)
	movq	-320(%rbp), %rax
	andq	$1, %rax
	movq	%rax, -328(%rbp)
	movq	-328(%rbp), %rax
	cmpq	$1, %rax
	sete	-336(%rbp)
	andq	$1, -336(%rbp)
	cmpq	$0, -336(%rbp)
	jne	_then4973
	jmp	_else4972
	.text
_then4987:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -344(%rbp)
	movq	-344(%rbp), %rax
	movq	$1, %rcx
	shrq	%cl, %rax
	movq	%rax, -352(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -360(%rbp)
	movq	-352(%rbp), %rsi
	movq	-360(%rbp), %rdi
	callq	binary_gcd
	movq	%rax, -368(%rbp)
	movq	-368(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4999:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -376(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -384(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -392(%rbp)
	movq	-384(%rbp), %rax
	subq	-392(%rbp), %rax
	movq	%rax, -400(%rbp)
	movq	-400(%rbp), %rax
	movq	$1, %rcx
	shrq	%cl, %rax
	movq	%rax, -408(%rbp)
	movq	-376(%rbp), %rsi
	movq	-408(%rbp), %rdi
	callq	binary_gcd
	movq	%rax, -416(%rbp)
	movq	-416(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$40, %rsp
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, -16(%rbp)
	movq	$21, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$15, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdi
	callq	binary_gcd
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	