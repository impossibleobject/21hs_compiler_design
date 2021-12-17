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
	subq	$48, %rsp
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	movq	$10000000, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	loop
	.text
body:
	leaq	matr(%rip), %rdx
	leaq	mat2(%rip), %rsi
	leaq	mat1(%rip), %rdi
	callq	matmul
	leaq	matr(%rip), %rsi
	leaq	mat3(%rip), %rdi
	callq	mateq
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	loop
	.text
exit:
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
loop:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, %rax
	sete	-48(%rbp)
	andq	$1, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	exit
	jmp	body
	.text
	.globl	matmul
matmul:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$160, %rsp
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
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	starti
	.text
starti:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	$2, %rax
	setl	-40(%rbp)
	andq	$1, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	theni
	jmp	endi
	.text
startj:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpq	$2, %rax
	setl	-56(%rbp)
	andq	$1, -56(%rbp)
	cmpq	$0, -56(%rbp)
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
	movq	-32(%rbp), %rax
	imulq	$16, %rax
	addq	%rcx, %rax
	movq	%rax, %rcx
	movq	-48(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -64(%rbp)
	movq	%rdi, %rax
	addq	$0, %rax
	movq	%rax, %rcx
	movq	-32(%rbp), %rax
	imulq	$16, %rax
	addq	%rcx, %rax
	addq	$0, %rax
	movq	%rax, -72(%rbp)
	movq	%rsi, %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %rcx
	movq	-48(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -80(%rbp)
	movq	%rdi, %rax
	addq	$0, %rax
	movq	%rax, %rcx
	movq	-32(%rbp), %rax
	imulq	$16, %rax
	addq	%rcx, %rax
	addq	$8, %rax
	movq	%rax, -88(%rbp)
	movq	%rsi, %rax
	addq	$0, %rax
	addq	$16, %rax
	movq	%rax, %rcx
	movq	-48(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -96(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	-104(%rbp), %rax
	imulq	-112(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	-120(%rbp), %rax
	imulq	-128(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-136(%rbp), %rax
	addq	-144(%rbp), %rax
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	startj
	.text
	.globl	mateq
mateq:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$136, %rsp
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
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
endj1:
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	starti1
	.text
starti1:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpq	$2, %rax
	setl	-56(%rbp)
	andq	$1, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	theni1
	jmp	endi1
	.text
startj1:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	cmpq	$2, %rax
	setl	-72(%rbp)
	andq	$1, -72(%rbp)
	cmpq	$0, -72(%rbp)
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
	movq	-48(%rbp), %rax
	imulq	$16, %rax
	addq	%rcx, %rax
	movq	%rax, %rcx
	movq	-64(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -80(%rbp)
	movq	%rsi, %rax
	addq	$0, %rax
	movq	%rax, %rcx
	movq	-48(%rbp), %rax
	imulq	$16, %rax
	addq	%rcx, %rax
	movq	%rax, %rcx
	movq	-64(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-96(%rbp), %rax
	xorq	-104(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-112(%rbp), %rax
	orq	-120(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	startj1