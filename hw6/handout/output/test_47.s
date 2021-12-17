	.text
	.globl	binary_gcd
binary_gcd:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$208, %rsp
	cmpq	%rsi, %rdi
	sete	-8(%rbp)
	andq	$1, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	ret_u
	jmp	term1
	.text
both_even:
	movq	%rdi, %rax
	movq	$1, %rcx
	shrq	%cl, %rax
	movq	%rax, -16(%rbp)
	movq	%rsi, %rax
	movq	$1, %rcx
	shrq	%cl, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	binary_gcd
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	$1, %rcx
	shlq	%cl, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
gcd:
	movq	$-1, %rax
	xorq	%rdi, %rax
	movq	%rax, -48(%rbp)
	movq	$1, %rax
	andq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	$0, %rax
	cmpq	-56(%rbp), %rax
	setne	-64(%rbp)
	andq	$1, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	u_even
	jmp	u_odd
	.text
ret_u:
	movq	%rdi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
ret_v:
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
term1:
	movq	$0, %rax
	cmpq	%rdi, %rax
	sete	-72(%rbp)
	andq	$1, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	ret_v
	jmp	term2
	.text
term2:
	movq	$0, %rax
	cmpq	%rsi, %rax
	sete	-80(%rbp)
	andq	$1, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	ret_u
	jmp	gcd
	.text
u_even:
	movq	%rsi, %rax
	andq	$1, %rax
	movq	%rax, -88(%rbp)
	movq	$0, %rax
	cmpq	-88(%rbp), %rax
	setne	-96(%rbp)
	andq	$1, -96(%rbp)
	cmpq	$0, -96(%rbp)
	jne	ue_vo
	jmp	both_even
	.text
u_gt:
	movq	%rdi, %rax
	subq	%rsi, %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	$1, %rcx
	shrq	%cl, %rax
	movq	%rax, -112(%rbp)
	pushq	%rsi
	movq	-112(%rbp), %rdi
	callq	binary_gcd
	popq	%rsi
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
u_odd:
	movq	$-1, %rax
	xorq	%rsi, %rax
	movq	%rax, -128(%rbp)
	movq	$1, %rax
	andq	-128(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	$0, %rax
	cmpq	-136(%rbp), %rax
	setne	-144(%rbp)
	andq	$1, -144(%rbp)
	cmpq	$0, -144(%rbp)
	jne	v_even
	jmp	v_odd
	.text
ue_vo:
	movq	%rdi, %rax
	movq	$1, %rcx
	shrq	%cl, %rax
	movq	%rax, -152(%rbp)
	pushq	%rsi
	movq	-152(%rbp), %rdi
	callq	binary_gcd
	popq	%rsi
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
v_even:
	movq	%rsi, %rax
	movq	$1, %rcx
	shrq	%cl, %rax
	movq	%rax, -168(%rbp)
	pushq	%rdi
	movq	-168(%rbp), %rsi
	callq	binary_gcd
	popq	%rdi
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
v_gt:
	movq	%rsi, %rax
	subq	%rdi, %rax
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	movq	$1, %rcx
	shrq	%cl, %rax
	movq	%rax, -192(%rbp)
	pushq	%rdi
	movq	%rdi, %rsi
	movq	-192(%rbp), %rdi
	callq	binary_gcd
	popq	%rdi
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
v_odd:
	cmpq	%rsi, %rdi
	setg	-208(%rbp)
	andq	$1, -208(%rbp)
	cmpq	$0, -208(%rbp)
	jne	u_gt
	jmp	v_gt
	.text
	.globl	main
main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	$15, %rsi
	movq	$21, %rdi
	callq	binary_gcd
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	