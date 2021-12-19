	.text
	.globl	fact
fact:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %r9 
	subq	$8, %rsp
	movq	%rsp, %r8 
	movq	%rdi, (%r9 )
	movq	$1, %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	jmp	_cond793
	.text
_body792:
	movq	(%r8 ), %rdx
	movq	(%r9 ), %rdi
	movq	%rdx, %rsi
	imulq	%rdi, %rsi
	movq	%rsi, (%r8 )
	movq	(%r9 ), %rdi
	movq	%rdi, %rsi
	subq	$1, %rsi
	movq	%rsi, (%r9 )
	jmp	_cond793
	.text
_cond793:
	movq	(%r9 ), %rdi
	cmpq	$0, %rdi
	setg	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_body792
	jmp	_post791
	.text
_post791:
	movq	(%r8 ), %rdi
	movq	%rdi, %rax
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
	movq	%rax, %rdi
	pushq	%rdi
	callq	string_of_int
	popq	%rdi
	movq	%rax, %rsi
	pushq	%rsi
	movq	%rsi, %rdi
	callq	print_string
	popq	%rsi
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	