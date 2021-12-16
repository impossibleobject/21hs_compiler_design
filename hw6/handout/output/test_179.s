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
	subq	$104, %rsp
	movq	%rcx, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, %r8 
	subq	$8, %rsp
	movq	%rsp, %r9 
	subq	$8, %rsp
	movq	%rsp, %r10
	subq	$8, %rsp
	movq	%rsp, %r11
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
	movq	%rdi, (%r8 )
	movq	%rsi, (%r9 )
	movq	%rdx, (%r10)
	movq	-8(%rbp), %rax
	movq	%r11, %rcx
	movq	%rax, (%rcx)
	movq	(%r8 ), %rdx
	cmpq	$0, %rdx
	setl	%sil
	andq	$1, %rsi
	movq	(%r9 ), %rdi
	cmpq	$0, %rdi
	setl	%dl
	andq	$1, %rdx
	movq	%rsi, %rdi
	orq	%rdx, %rdi
	cmpq	$0, %rdi
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
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_merge8686:
	movq	(%r10), %rdx
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdx
	movq	%rdx, %rdi
	callq	array_of_string
	popq	%rdx
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rax, %rsi
	movq	%rsi, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	(%r11), %rdi
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	callq	array_of_string
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	(%r8 ), %rdi
	movq	%rsi, %rax
	movq	%rax, %rdx
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%rdi, %rsi
	movq	%rdx, %rdi
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
	movq	%rax, %rdx
	movq	(%rdx), %rsi
	movq	%rsi, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	(%r9 ), %rsi
	movq	%rdi, %rax
	movq	%rax, %rdx
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%rdx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rsi, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rdx
	movq	(%rdx), %rdi
	movq	%rdi, %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	cmpq	%rdi, %rsi
	sete	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	_then8745
	jmp	_else8744
	.text
_merge8743:
	movq	(%r11), %rsi
	movq	(%r10), %rdi
	movq	(%r9 ), %rdx
	movq	%rdx, %rax
	subq	$1, %rax
	movq	%rax, -96(%rbp)
	movq	(%r8 ), %rdx
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rcx
	movq	-96(%rbp), %rsi
	pushq	%rdi
	movq	%rdx, %rdi
	popq	%rdx
	callq	lcs
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	(%r11), %rsi
	movq	(%r10), %r11
	movq	(%r9 ), %r10
	movq	(%r8 ), %r9 
	movq	%r9 , %r8 
	subq	$1, %r8 
	pushq	%r11
	pushq	%r10
	pushq	%r8 
	pushq	%rsi
	movq	%rsi, %rcx
	movq	%r11, %rdx
	movq	%r8 , %rdi
	movq	%r10, %rsi
	callq	lcs
	popq	%rsi
	popq	%r8 
	popq	%r10
	popq	%r11
	movq	%rax, %r9 
	movq	%r9 , %rax
	movq	-72(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r8 
	pushq	%r8 
	movq	%r8 , %rdi
	callq	length_of_string
	popq	%r8 
	movq	%rax, %r10
	movq	%r10, %rax
	movq	-80(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	pushq	%r11
	movq	%r11, %rdi
	callq	length_of_string
	popq	%r11
	movq	%rax, %r8 
	movq	%r8 , %rax
	movq	-88(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r9 
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r10
	cmpq	%r10, %r9 
	setl	%r11b
	andq	$1, %r11
	cmpq	$0, %r11
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
	movq	%rax, %r8 
	movq	%r8 , %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then8745:
	movq	(%r11), %rdi
	movq	(%r10), %r11
	movq	(%r9 ), %r10
	movq	%r10, %r9 
	subq	$1, %r9 
	movq	(%r8 ), %r10
	movq	%r10, %rsi
	subq	$1, %rsi
	pushq	%r11
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	movq	%rdi, %rcx
	movq	%r11, %rdx
	movq	%rsi, %rdi
	movq	%r9 , %rsi
	callq	lcs
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r11
	movq	%rax, %r10
	movq	%r10, %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	leaq	buf(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %r9 
	movq	%r9 , %rax
	movq	%rax, %r11
	pushq	%r11
	pushq	%r9 
	pushq	%r8 
	movq	$0, %rsi
	movq	%r11, %rdi
	callq	oat_assert_array_length
	popq	%r8 
	popq	%r9 
	popq	%r11
	movq	%r9 , %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, %r11
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r9 
	movq	(%r8 ), %r10
	movq	%r9 , %rax
	movq	%rax, %r8 
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	movq	%r10, %rsi
	movq	%r8 , %rdi
	callq	oat_assert_array_length
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%r9 , %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%r10, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %r8 
	movq	(%r8 ), %r9 
	movq	%r9 , (%r11)
	leaq	buf(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %r8 
	pushq	%r8 
	movq	%r8 , %rdi
	callq	string_of_array
	popq	%r8 
	movq	%rax, %r11
	movq	%r11, %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r8 
	pushq	%r8 
	pushq	%rdi
	movq	%rdi, %rsi
	movq	%r8 , %rdi
	callq	string_cat
	popq	%rdi
	popq	%r8 
	movq	%rax, %r9 
	movq	%r9 , %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then8777:
	movq	-72(%rbp), %rax
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
	subq	$8, %rsp
	movq	%rsp, %rdx
	subq	$8, %rsp
	movq	%rsp, %rsi
	leaq	_str_arr8655(%rip), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %rdi
	movq	%rdi, (%rdx)
	leaq	_str_arr8659(%rip), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %r8 
	movq	%r8 , (%rsi)
	movq	(%rsi), %r9 
	movq	(%rdx), %rsi
	pushq	%r9 
	pushq	%rsi
	movq	%r9 , %rcx
	movq	%rsi, %rdx
	movq	$5, %rdi
	movq	$6, %rsi
	callq	lcs
	popq	%rsi
	popq	%r9 
	movq	%rax, %rdx
	pushq	%rdx
	movq	%rdx, %rdi
	callq	print_string
	popq	%rdx
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	