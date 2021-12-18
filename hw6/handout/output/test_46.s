	.text
	.globl	binary_gcd
binary_gcd:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	cmpq	%rsi, %rdi
	sete	%r11b
	andq	$1, %r11
	cmpq	$0, %r11
	jne	ret_u
	jmp	term1
	.text
both_even:
	movq	%rdi, %rax
	movq	$1, %rcx
	shrq	%cl, %rax
	movq	%rax, %r11
	movq	%rsi, %rax
	movq	$1, %rcx
	shrq	%cl, %rax
	movq	%rax, %r10
	pushq	%r11
	pushq	%r10
	movq	%r10, %rsi
	movq	%r11, %rdi
	callq	binary_gcd
	popq	%r10
	popq	%r11
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$1, %rcx
	shlq	%cl, %rax
	movq	%rax, %r11
	movq	%r11, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
gcd:
	movq	$-1, %r11
	xorq	%rdi, %r11
	movq	$1, %r10
	andq	%r11, %r10
	movq	$0, %rax
	cmpq	%r10, %rax
	setne	%r11b
	andq	$1, %r11
	cmpq	$0, %r11
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
	sete	%r11b
	andq	$1, %r11
	cmpq	$0, %r11
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
	movq	%rsi, %r11
	andq	$1, %r11
	movq	$0, %rax
	cmpq	%r11, %rax
	setne	%r10b
	andq	$1, %r10
	cmpq	$0, %r10
	jne	ue_vo
	jmp	both_even
	.text
u_gt:
	movq	%rdi, %r10
	subq	%rsi, %r10
	movq	%r10, %rax
	movq	$1, %rcx
	shrq	%cl, %rax
	movq	%rax, %r11
	pushq	%r11
	pushq	%rsi
	movq	%r11, %rdi
	callq	binary_gcd
	popq	%rsi
	popq	%r11
	movq	%rax, %r10
	movq	%r10, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
u_odd:
	movq	$-1, %r10
	xorq	%rsi, %r10
	movq	$1, %r11
	andq	%r10, %r11
	movq	$0, %rax
	cmpq	%r11, %rax
	setne	%r10b
	andq	$1, %r10
	cmpq	$0, %r10
	jne	v_even
	jmp	v_odd
	.text
ue_vo:
	movq	%rdi, %rax
	movq	$1, %rcx
	shrq	%cl, %rax
	movq	%rax, %r10
	pushq	%r10
	pushq	%rsi
	movq	%r10, %rdi
	callq	binary_gcd
	popq	%rsi
	popq	%r10
	movq	%rax, %r11
	movq	%r11, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
v_even:
	movq	%rsi, %rax
	movq	$1, %rcx
	shrq	%cl, %rax
	movq	%rax, %r11
	pushq	%r11
	pushq	%rdi
	movq	%r11, %rsi
	callq	binary_gcd
	popq	%rdi
	popq	%r11
	movq	%rax, %r10
	movq	%r10, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
v_gt:
	movq	%rsi, %r10
	subq	%rdi, %r10
	movq	%r10, %rax
	movq	$1, %rcx
	shrq	%cl, %rax
	movq	%rax, %r11
	pushq	%r11
	pushq	%rdi
	movq	%rdi, %rsi
	movq	%r11, %rdi
	callq	binary_gcd
	popq	%rdi
	popq	%r11
	movq	%rax, %r10
	movq	%r10, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
v_odd:
	cmpq	%rsi, %rdi
	setg	%r10b
	andq	$1, %r10
	cmpq	$0, %r10
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
	movq	%rax, %r11
	movq	%r11, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	