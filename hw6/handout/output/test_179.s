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
	subq	$632, %rsp
	movq	%rcx, -8(%rbp)
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
	subq	$8, %rsp
	movq	%rsp, -104(%rbp)
	subq	$8, %rsp
	movq	%rsp, -112(%rbp)
	subq	$8, %rsp
	movq	%rsp, -120(%rbp)
	movq	%rdi, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%rsi, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%rdx, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	cmpq	$0, %rax
	setl	-136(%rbp)
	andq	$1, -136(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	cmpq	$0, %rax
	setl	-152(%rbp)
	andq	$1, -152(%rbp)
	movq	-136(%rbp), %rax
	orq	-152(%rbp), %rax
	movq	%rax, -160(%rbp)
	cmpq	$0, -160(%rbp)
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
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_merge8686:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rdi
	callq	array_of_string
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rdi
	callq	array_of_string
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -208(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -216(%rbp)
	movq	-208(%rbp), %rax
	movq	%rax, -224(%rbp)
	movq	-216(%rbp), %rsi
	movq	-224(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-208(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-216(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -232(%rbp)
	movq	-232(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -240(%rbp)
	movq	-240(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -248(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -256(%rbp)
	movq	-248(%rbp), %rax
	movq	%rax, -264(%rbp)
	movq	-256(%rbp), %rsi
	movq	-264(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-248(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-256(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -272(%rbp)
	movq	-272(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -280(%rbp)
	movq	-280(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -288(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -296(%rbp)
	movq	-288(%rbp), %rax
	cmpq	-296(%rbp), %rax
	sete	-304(%rbp)
	andq	$1, -304(%rbp)
	cmpq	$0, -304(%rbp)
	jne	_then8745
	jmp	_else8744
	.text
_merge8743:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -312(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -320(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -328(%rbp)
	movq	-328(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -336(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -344(%rbp)
	movq	-312(%rbp), %rcx
	movq	-320(%rbp), %rdx
	movq	-336(%rbp), %rsi
	movq	-344(%rbp), %rdi
	callq	lcs
	movq	%rax, -352(%rbp)
	movq	-352(%rbp), %rax
	movq	-96(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -360(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -368(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -376(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -384(%rbp)
	movq	-384(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -392(%rbp)
	movq	-360(%rbp), %rcx
	movq	-368(%rbp), %rdx
	movq	-376(%rbp), %rsi
	movq	-392(%rbp), %rdi
	callq	lcs
	movq	%rax, -400(%rbp)
	movq	-400(%rbp), %rax
	movq	-104(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -408(%rbp)
	movq	-408(%rbp), %rdi
	callq	length_of_string
	movq	%rax, -416(%rbp)
	movq	-416(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -424(%rbp)
	movq	-424(%rbp), %rdi
	callq	length_of_string
	movq	%rax, -432(%rbp)
	movq	-432(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -440(%rbp)
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -448(%rbp)
	movq	-440(%rbp), %rax
	cmpq	-448(%rbp), %rax
	setl	-456(%rbp)
	andq	$1, -456(%rbp)
	cmpq	$0, -456(%rbp)
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
	movq	%rax, -464(%rbp)
	movq	-464(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then8745:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -472(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -480(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -488(%rbp)
	movq	-488(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -496(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -504(%rbp)
	movq	-504(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -512(%rbp)
	movq	-472(%rbp), %rcx
	movq	-480(%rbp), %rdx
	movq	-496(%rbp), %rsi
	movq	-512(%rbp), %rdi
	callq	lcs
	movq	%rax, -520(%rbp)
	movq	-520(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	%rax, (%rcx)
	leaq	buf(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -528(%rbp)
	movq	-528(%rbp), %rax
	movq	%rax, -536(%rbp)
	movq	$0, %rsi
	movq	-536(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-528(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -544(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -552(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -560(%rbp)
	movq	-552(%rbp), %rax
	movq	%rax, -568(%rbp)
	movq	-560(%rbp), %rsi
	movq	-568(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-552(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-560(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -576(%rbp)
	movq	-576(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -584(%rbp)
	movq	-584(%rbp), %rax
	movq	-544(%rbp), %rcx
	movq	%rax, (%rcx)
	leaq	buf(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -592(%rbp)
	movq	-592(%rbp), %rdi
	callq	string_of_array
	movq	%rax, -600(%rbp)
	movq	-600(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -608(%rbp)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -616(%rbp)
	movq	-608(%rbp), %rsi
	movq	-616(%rbp), %rdi
	callq	string_cat
	movq	%rax, -624(%rbp)
	movq	-624(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then8777:
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -632(%rbp)
	movq	-632(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$56, %rsp
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, -16(%rbp)
	leaq	_str_arr8655(%rip), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	leaq	_str_arr8659(%rip), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	$6, %rsi
	movq	$5, %rdi
	callq	lcs
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	print_string
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	