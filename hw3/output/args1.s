	.data
	.globl	toofew
toofew:
	.asciz	"argc < 3"
	.data
	.globl	toomany
toomany:
	.asciz	"argc > 3"
	.text
	.globl	main
main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$152, %rsp
	movq	%rdi, %r9 
	movq	%r9 , -8(%rbp)
	movq	%rsi, %r9 
	movq	%r9 , -16(%rbp)
	movq	-8(%rbp), %r10
	movq	$0, -24(%rbp)
	cmpq	$3, %r10
	setl	-24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$1, %rax
	je	main.few
	jmp	main.else
	.text
main.few:
	leaq	toofew(%rip), %r11
	movq	$0, %r10
	imulq	$0, %r10
	addq	%r10, %r11
	movq	%r11, %r9 
	movq	%r9 , -40(%rbp)
	movq	-40(%rbp), %rdi
	leaq	ll_puts(%rip), %r10
	callq	*%r10
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
main.else:
	movq	-8(%rbp), %r10
	movq	$0, -64(%rbp)
	cmpq	$3, %r10
	setg	-64(%rbp)
	movq	-64(%rbp), %rax
	cmpq	$1, %rax
	je	main.many
	jmp	main.right
	.text
main.many:
	leaq	toomany(%rip), %r11
	movq	$0, %r10
	imulq	$0, %r10
	addq	%r10, %r11
	movq	%r11, %r9 
	movq	%r9 , -80(%rbp)
	movq	-80(%rbp), %rdi
	leaq	ll_puts(%rip), %r10
	callq	*%r10
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
main.right:
	movq	-16(%rbp), %r11
	movq	%r11, %r9 
	movq	%r9 , -104(%rbp)
	movq	-104(%rbp), %r10
	movq	(%r10), %r9 
	movq	%r9 , -112(%rbp)
	movq	-16(%rbp), %r11
	movq	%r11, %r9 
	movq	%r9 , -120(%rbp)
	movq	-120(%rbp), %r10
	movq	(%r10), %r9 
	movq	%r9 , -128(%rbp)
	movq	-112(%rbp), %rdi
	movq	-128(%rbp), %rsi
	leaq	ll_strcat(%rip), %r10
	callq	*%r10
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rdi
	leaq	ll_puts(%rip), %r10
	callq	*%r10
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	