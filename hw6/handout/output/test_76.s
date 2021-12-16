	.text
	.globl	fact
fact:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rdx
	subq	$8, %rsp
	movq	%rsp, %rsi
	movq	%rdi, (%rdx)
	movq	$1, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	jmp	_cond793
	.text
_body792:
	movq	(%rsi), %rdi
	movq	(%rdx), %r8 
	movq	%rdi, %r9 
	imulq	%r8 , %r9 
	movq	%r9 , (%rsi)
	movq	(%rdx), %r10
	movq	%r10, %rdi
	subq	$1, %rdi
	movq	%rdi, (%rdx)
	jmp	_cond793
	.text
_cond793:
	movq	(%rdx), %r8 
	cmpq	$0, %r8 
	setg	%r9b
	andq	$1, %r9 
	cmpq	$0, %r9 
	jne	_body792
	jmp	_post791
	.text
_post791:
	movq	(%rsi), %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	$5, %rdi
	callq	fact
	movq	%rax, %rdx
	pushq	%rdx
	movq	%rdx, %rdi
	callq	string_of_int
	popq	%rdx
	movq	%rax, %rsi
	pushq	%rsi
	movq	%rsi, %rdi
	callq	print_string
	popq	%rsi
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	