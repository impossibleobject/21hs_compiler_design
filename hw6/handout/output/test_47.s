	.text
	.globl	binary_gcd
binary_gcd:
	pushq	%rbp
	movq	%rsp, %rbp
	cmpq	%rsi, %rdi
	sete	%r8b
	andq	$1, %r8 
	cmpq	$0, %r8 
	jne	ret_u
	jmp	term1
	.text
both_even:
	movq	%rdi, %rax
	movq	$1, %rcx
	shrq	%cl, %rax
	movq	%rax, %r8 
	movq	%rsi, %rax
	movq	$1, %rcx
	shrq	%cl, %rax
	movq	%rax, %rdx
	pushq	%r8 
	pushq	%rdx
	movq	%rdx, %rsi
	movq	%r8 , %rdi
	callq	binary_gcd
	popq	%rdx
	popq	%r8 
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
gcd:
	movq	$-1, %r8 
	xorq	%rdi, %r8 
	movq	$1, %rdx
	andq	%r8 , %rdx
	movq	$0, %rax
	cmpq	%rdx, %rax
	setne	%r8b
	andq	$1, %r8 
	cmpq	$0, %r8 
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
	sete	%r8b
	andq	$1, %r8 
	cmpq	$0, %r8 
	jne	ret_v
	jmp	term2
	.text
term2:
	movq	$0, %rax
	cmpq	%rsi, %rax
	sete	%r8b
	andq	$1, %r8 
	cmpq	$0, %r8 
	jne	ret_u
	jmp	gcd
	.text
u_even:
	movq	%rsi, %rdx
	andq	$1, %rdx
	movq	$0, %rax
	cmpq	%rdx, %rax
	setne	%r8b
	andq	$1, %r8 
	cmpq	$0, %r8 
	jne	ue_vo
	jmp	both_even
	.text
u_gt:
	movq	%rdi, %r8 
	subq	%rsi, %r8 
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
u_odd:
	movq	$-1, %r8 
	xorq	%rsi, %r8 
	movq	$1, %rdx
	andq	%r8 , %rdx
	movq	$0, %rax
	cmpq	%rdx, %rax
	setne	%r8b
	andq	$1, %r8 
	cmpq	$0, %r8 
	jne	v_even
	jmp	v_odd
	.text
ue_vo:
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
v_even:
	movq	%rsi, %rax
	movq	$1, %rcx
	shrq	%cl, %rax
	movq	%rax, %rdx
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
	.text
v_gt:
	movq	%rsi, %r8 
	subq	%rdi, %r8 
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
	movq	%rax, %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
v_odd:
	cmpq	%rsi, %rdi
	setg	%r8b
	andq	$1, %r8 
	cmpq	$0, %r8 
	jne	u_gt
	jmp	v_gt
	.text
	.globl	main
main:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	$15, %rsi
	movq	$21, %rdi
	callq	binary_gcd
	movq	%rax, %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	