	.data
	.globl	buf
buf:
	.quad	_global_arr8778
	.data
	.globl	_global_arr8778
_global_arr8778:
	.quad	1
	.quad	0
	.data
	.globl	_str_arr8684
_str_arr8684:
	.asciz	""
	.data
	.globl	_str_arr8655
_str_arr8655:
	.asciz	"TOMATO"
	.data
	.globl	_str_arr8659
_str_arr8659:
	.asciz	"ORATING"
	.text
	.globl	lcs
lcs:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$392, %rsp
	movq	%rcx, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, %r11
	subq	$8, %rsp
	movq	%rsp, %r10
	subq	$8, %rsp
	movq	%rsp, %r9 
	subq	$8, %rsp
	movq	%rsp, -16(%rbp)
	subq	$8, %rsp
	movq	%rsp, -24(%rbp)
	subq	$8, %rsp
	movq	%rsp, -32(%rbp)
	subq	$8, %rsp
	movq	%rsp, -40(%rbp)
	subq	$8, %rsp
	movq	%rsp, -48(%rbp)
	subq	$8, %rsp
	movq	%rsp, -56(%rbp)
	subq	$8, %rsp
	movq	%rsp, -64(%rbp)
	subq	$8, %rsp
	movq	%rsp, -72(%rbp)
	subq	$8, %rsp
	movq	%rsp, -80(%rbp)
	subq	$8, %rsp
	movq	%rsp, -88(%rbp)
	subq	$8, %rsp
	movq	%rsp, -96(%rbp)
	movq	%rdi, (%r11)
	movq	%rsi, (%r10)
	movq	%rdx, (%r9 )
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	cmpq	$0, %rax
	setl	-112(%rbp)
	andq	$1, -112(%rbp)
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	cmpq	$0, %rax
	setl	-128(%rbp)
	andq	$1, -128(%rbp)
	movq	-112(%rbp), %rax
	orq	-128(%rbp), %rax
	movq	%rax, -136(%rbp)
	cmpq	$0, -136(%rbp)
	jne	_then8688
	jmp	_else8687
	.text
_else8687:
	jmp	_merge8686
	.text
_else8744:
	jmp	_merge8743
	.text
_else8776:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r8 
	movq	%r8 , %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_merge8686:
	movq	%r9 , %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	movq	-144(%rbp), %rdi
	callq	array_of_string
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	movq	-160(%rbp), %rdi
	callq	array_of_string
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -184(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	movq	-184(%rbp), %rsi
	movq	-192(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	-176(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-184(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -216(%rbp)
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-216(%rbp), %rax
	movq	%rax, -232(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	movq	-224(%rbp), %rsi
	movq	-232(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	-216(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-224(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -240(%rbp)
	movq	-240(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -248(%rbp)
	movq	-248(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -256(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -264(%rbp)
	movq	-256(%rbp), %rax
	cmpq	-264(%rbp), %rax
	sete	-272(%rbp)
	andq	$1, -272(%rbp)
	cmpq	$0, -272(%rbp)
	jne	_then8745
	jmp	_else8744
	.text
_merge8743:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -280(%rbp)
	movq	%r9 , %rax
	movq	(%rax), %rax
	movq	%rax, -288(%rbp)
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -296(%rbp)
	movq	-296(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -304(%rbp)
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -312(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	movq	-280(%rbp), %rcx
	movq	-288(%rbp), %rdx
	movq	-304(%rbp), %rsi
	movq	-312(%rbp), %rdi
	callq	lcs
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rax, -320(%rbp)
	movq	-320(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -328(%rbp)
	movq	%r9 , %rax
	movq	(%rax), %rax
	movq	%rax, -336(%rbp)
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -344(%rbp)
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -352(%rbp)
	movq	-352(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -360(%rbp)
	movq	-328(%rbp), %rcx
	movq	-336(%rbp), %rdx
	movq	-344(%rbp), %rsi
	movq	-360(%rbp), %rdi
	callq	lcs
	movq	%rax, -368(%rbp)
	movq	-368(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r9 
	pushq	%r9 
	movq	%r9 , %rdi
	callq	length_of_string
	popq	%r9 
	movq	%rax, %r8 
	movq	%r8 , %rax
	movq	-88(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r10
	pushq	%r10
	movq	%r10, %rdi
	callq	length_of_string
	popq	%r10
	movq	%rax, %r9 
	movq	%r9 , %rax
	movq	-96(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r10
	cmpq	%r10, %r11
	setl	%r9b
	andq	$1, %r9 
	cmpq	$0, %r9 
	jne	_then8777
	jmp	_else8776
	.text
_merge8775:
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then8688:
	leaq	_str_arr8684(%rip), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %r10
	movq	%r10, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then8745:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r8 
	movq	%r9 , %rax
	movq	(%rax), %rax
	movq	%rax, -376(%rbp)
	movq	(%r10), %r9 
	movq	%r9 , %r10
	subq	$1, %r10
	movq	(%r11), %r9 
	movq	%r9 , %rax
	subq	$1, %rax
	movq	%rax, -384(%rbp)
	pushq	%r11
	pushq	%r10
	pushq	%r8 
	movq	%r8 , %rcx
	movq	-376(%rbp), %rdx
	movq	%r10, %rsi
	movq	-384(%rbp), %rdi
	callq	lcs
	popq	%r8 
	popq	%r10
	popq	%r11
	movq	%rax, -392(%rbp)
	movq	-392(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	leaq	buf(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %r10
	movq	%r10, %rax
	movq	%rax, %r8 
	pushq	%r11
	pushq	%r10
	pushq	%r8 
	movq	$0, %rsi
	movq	%r8 , %rdi
	callq	oat_assert_array_length
	popq	%r8 
	popq	%r10
	popq	%r11
	movq	%r10, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %r8 
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r10
	movq	(%r11), %r9 
	movq	%r10, %rax
	movq	%rax, %r11
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	movq	%r9 , %rsi
	movq	%r11, %rdi
	callq	oat_assert_array_length
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%r10, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%r9 , %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %r11
	movq	(%r11), %r10
	movq	%r10, (%r8 )
	leaq	buf(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	pushq	%r11
	movq	%r11, %rdi
	callq	string_of_array
	popq	%r11
	movq	%rax, %r8 
	movq	%r8 , %rax
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r10
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r9 
	pushq	%r10
	pushq	%r9 
	movq	%r10, %rsi
	movq	%r9 , %rdi
	callq	string_cat
	popq	%r9 
	popq	%r10
	movq	%rax, %r8 
	movq	%r8 , %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then8777:
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r10
	movq	%r10, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	subq	$8, %rsp
	movq	%rsp, %r11
	subq	$8, %rsp
	movq	%rsp, %r10
	leaq	_str_arr8655(%rip), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%r11, %rcx
	movq	%rax, (%rcx)
	leaq	_str_arr8659(%rip), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%r10, %rcx
	movq	%rax, (%rcx)
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	(%r11), %r10
	pushq	%r10
	movq	-24(%rbp), %rcx
	movq	%r10, %rdx
	movq	$6, %rsi
	movq	$5, %rdi
	callq	lcs
	popq	%r10
	movq	%rax, %r11
	pushq	%r11
	movq	%r11, %rdi
	callq	print_string
	popq	%r11
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	