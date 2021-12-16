	.text
	.globl	binary_gcd
binary_gcd:
	pushq	%rbp
	movq	%rsp, %rbp
	cmpq	%rsi, %rdi
	sete	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
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
	movq	%rax, %rdi
	pushq	%r8 
	pushq	%rdi
	movq	%rdi, %rsi
	movq	%r8 , %rdi
	callq	binary_gcd
	popq	%rdi
	popq	%r8 
	movq	%rax, %rsi
	movq	%rsi, %rax
	movq	$1, %rcx
	shlq	%cl, %rax
	movq	%rax, %r9 
	movq	%r9 , %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
gcd:
	movq	$-1, %rdx
	xorq	%rdi, %rdx
	movq	$1, %r8 
	andq	%rdx, %r8 
	movq	$0, %rax
	cmpq	%r8 , %rax
	setne	%r9b
	andq	$1, %r9 
	cmpq	$0, %r9 
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
	sete	%r10b
	andq	$1, %r10
	cmpq	$0, %r10
	jne	ret_v
	jmp	term2
	.text
term2:
	movq	$0, %rax
	cmpq	%rsi, %rax
	sete	%r11b
	andq	$1, %r11
	cmpq	$0, %r11
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
	movq	%rdi, %r9 
	subq	%rsi, %r9 
	movq	%r9 , %rax
	movq	$1, %rcx
	shrq	%cl, %rax
	movq	%rax, %rdi
	pushq	%rdi
	pushq	%rsi
	callq	binary_gcd
	popq	%rsi
	popq	%rdi
	movq	%rax, %r10
	movq	%r10, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
u_odd:
	movq	$-1, %r11
	xorq	%rsi, %r11
	movq	$1, %rdx
	andq	%r11, %rdx
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
	movq	%rax, %r9 
	pushq	%r9 
	pushq	%rsi
	movq	%r9 , %rdi
	callq	binary_gcd
	popq	%rsi
	popq	%r9 
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
	movq	%rax, %r10
	pushq	%r10
	pushq	%rdi
	movq	%r10, %rsi
	callq	binary_gcd
	popq	%rdi
	popq	%r10
	movq	%rax, %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
v_gt:
	movq	%rsi, %r11
	subq	%rdi, %r11
	movq	%r11, %rax
	movq	$1, %rcx
	shrq	%cl, %rax
	movq	%rax, %rsi
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
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	