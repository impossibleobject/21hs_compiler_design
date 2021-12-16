	.data
	.globl	arr1
arr1:
	.quad	_global_arr5367
	.data
	.globl	_global_arr5367
_global_arr5367:
	.quad	4
	.quad	1
	.quad	2
	.quad	3
	.quad	4
	.data
	.globl	arr2
arr2:
	.quad	_global_arr5366
	.data
	.globl	_global_arr5366
_global_arr5366:
	.quad	4
	.quad	1
	.quad	2
	.quad	3
	.quad	5
	.text
	.globl	arrcheck
arrcheck:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	subq	$8, %rsp
	movq	%rsp, %r8 
	subq	$8, %rsp
	movq	%rsp, %r9 
	subq	$8, %rsp
	movq	%rsp, %r10
	subq	$8, %rsp
	movq	%rsp, %r11
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	movq	%rdi, (%r8 )
	movq	%rsi, (%r9 )
	movq	%rdx, (%r10)
	movq	$0, %rax
	movq	%r11, %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond5344
	.text
_body5343:
	movq	(%r8 ), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	%rdx, %rax
	movq	%rax, %rdi
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rsi, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rdi
	movq	(%rdi), %rdx
	movq	(%r9 ), %rsi
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	%rsi, %rax
	movq	%rax, -16(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%rdi, %rsi
	movq	-16(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rsi, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rdi, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	cmpq	%rsi, %rdx
	setne	%dil
	andq	$1, %rdi
	cmpq	$0, %rdi
	jne	_then5361
	jmp	_else5360
	.text
_cond5344:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	(%r10), %rsi
	cmpq	%rsi, %rdx
	setl	%dil
	andq	$1, %rdi
	cmpq	$0, %rdi
	jne	_body5343
	jmp	_post5342
	.text
_else5360:
	jmp	_merge5359
	.text
_merge5359:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond5344
	.text
_post5342:
	movq	(%r11), %r8 
	movq	%r8 , %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then5361:
	movq	$1, %rax
	movq	%r11, %rcx
	movq	%rax, (%rcx)
	jmp	_merge5359
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rdx
	movq	$1, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	leaq	arr2(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	leaq	arr1(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	$4, %rdx
	callq	arrcheck
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax, %r8 
	cmpq	$1, %r8 
	sete	%r9b
	andq	$1, %r9 
	cmpq	$0, %r9 
	jne	_then5324
	jmp	_else5323
	.text
_else5323:
	jmp	_merge5322
	.text
_merge5322:
	movq	(%rdx), %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then5324:
	movq	$0, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	jmp	_merge5322