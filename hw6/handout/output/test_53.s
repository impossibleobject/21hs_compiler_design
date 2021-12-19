	.data
	.globl	mat1
mat1:
	.quad	1
	.quad	2
	.quad	3
	.quad	4
	.data
	.globl	mat2
mat2:
	.quad	5
	.quad	6
	.quad	7
	.quad	8
	.data
	.globl	mat3
mat3:
	.quad	19
	.quad	22
	.quad	43
	.quad	50
	.data
	.globl	matr
matr:
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.text
	.globl	main
main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rdx
	movq	$10000000, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	jmp	loop
	.text
body:
	pushq	%rdx
	leaq	matr(%rip), %rdx
	leaq	mat2(%rip), %rsi
	leaq	mat1(%rip), %rdi
	callq	matmul
	popq	%rdx
	pushq	%rdx
	leaq	matr(%rip), %rsi
	leaq	mat3(%rip), %rdi
	callq	mateq
	popq	%rdx
	movq	%rax, %rdi
	movq	(%rdx), %rdi
	movq	%rdi, %rsi
	subq	$1, %rsi
	movq	%rsi, (%rdx)
	jmp	loop
	.text
exit:
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
loop:
	movq	(%rdx), %rdi
	cmpq	$0, %rdi
	sete	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	exit
	jmp	body
	.text
	.globl	matmul
matmul:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, -16(%rbp)
	movq	$0, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	starti
	.text
endi:
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
endj:
	movq	-24(%rbp), %r9 
	addq	$1, %r9 
	movq	%r9 , %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	starti
	.text
starti:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$2, %rax
	setl	%r9b
	andq	$1, %r9 
	cmpq	$0, %r9 
	jne	theni
	jmp	endi
	.text
startj:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	$2, %rax
	setl	%r9b
	andq	$1, %r9 
	cmpq	$0, %r9 
	jne	thenj
	jmp	endj
	.text
theni:
	movq	$0, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	startj
	.text
thenj:
	movq	%rdx, %rax
	addq	$0, %rax
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	imulq	$16, %rax
	addq	%rcx, %rax
	movq	%rax, %rcx
	movq	-32(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -40(%rbp)
	movq	%rdi, %rax
	addq	$0, %rax
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	imulq	$16, %rax
	addq	%rcx, %rax
	addq	$0, %rax
	movq	%rax, %r8 
	movq	%rsi, %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %rcx
	movq	-32(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %r11
	movq	%rdi, %rax
	addq	$0, %rax
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	imulq	$16, %rax
	addq	%rcx, %rax
	addq	$8, %rax
	movq	%rax, %r9 
	movq	%rsi, %rax
	addq	$0, %rax
	addq	$16, %rax
	movq	%rax, %rcx
	movq	-32(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %r10
	movq	%r8 , %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	(%r11), %r8 
	movq	(%r9 ), %r11
	movq	(%r10), %r9 
	movq	-48(%rbp), %r10
	imulq	%r8 , %r10
	movq	%r11, %r8 
	imulq	%r9 , %r8 
	movq	%r10, %r9 
	addq	%r8 , %r9 
	movq	%r9 , %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %r9 
	addq	$1, %r9 
	movq	%r9 , %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	startj
	.text
	.globl	mateq
mateq:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	movq	$0, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, -16(%rbp)
	subq	$8, %rsp
	movq	%rsp, -24(%rbp)
	movq	$0, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	starti1
	.text
endi1:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	%rdi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
endj1:
	movq	%r11, %r8 
	addq	$1, %r8 
	movq	%r8 , %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	starti1
	.text
starti1:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	cmpq	$2, %r11
	setl	%r8b
	andq	$1, %r8 
	cmpq	$0, %r8 
	jne	theni1
	jmp	endi1
	.text
startj1:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r10
	cmpq	$2, %r10
	setl	%r8b
	andq	$1, %r8 
	cmpq	$0, %r8 
	jne	thenj1
	jmp	endj1
	.text
theni1:
	movq	$0, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	startj1
	.text
thenj1:
	movq	%rdi, %rax
	addq	$0, %rax
	movq	%rax, %rcx
	movq	%r11, %rax
	imulq	$16, %rax
	addq	%rcx, %rax
	movq	%rax, %rcx
	movq	%r10, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rdx
	movq	%rsi, %rax
	addq	$0, %rax
	movq	%rax, %rcx
	movq	%r11, %rax
	imulq	$16, %rax
	addq	%rcx, %rax
	movq	%rax, %rcx
	movq	%r10, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %r9 
	movq	(%rdx), %r8 
	movq	(%r9 ), %rdx
	movq	%r8 , %r9 
	xorq	%rdx, %r9 
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	%r9 , %r8 
	orq	%rdx, %r8 
	movq	%r8 , %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%r10, %r8 
	addq	$1, %r8 
	movq	%r8 , %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	startj1