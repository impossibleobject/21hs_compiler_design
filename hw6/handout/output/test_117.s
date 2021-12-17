	.data
	.globl	lfsr_iterations
lfsr_iterations:
	.quad	5
	.data
	.globl	lfsr_length
lfsr_length:
	.quad	4
	.data
	.globl	lfsr_init_values
lfsr_init_values:
	.quad	_global_arr5180
	.data
	.globl	_global_arr5180
_global_arr5180:
	.quad	4
	.quad	1
	.quad	0
	.quad	1
	.quad	0
	.data
	.globl	_str_arr5158
_str_arr5158:
	.asciz	"T"
	.data
	.globl	_str_arr5160
_str_arr5160:
	.asciz	"F"
	.data
	.globl	_str_arr5123
_str_arr5123:
	.asciz	" "
	.text
	.globl	xor
xor:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$88, %rsp
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, -16(%rbp)
	movq	%rdi, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%rsi, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	$0, %rax
	sete	-40(%rbp)
	andq	$1, -40(%rbp)
	movq	-24(%rbp), %rax
	andq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpq	$0, %rax
	sete	-64(%rbp)
	andq	$1, -64(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	andq	-72(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-48(%rbp), %rax
	orq	-80(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	string_of_bool
string_of_bool:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	movq	%rdi, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	_then5164
	jmp	_else5163
	.text
_else5163:
	leaq	_str_arr5160(%rip), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_merge5162:
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then5164:
	leaq	_str_arr5158(%rip), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	print_lfsr
print_lfsr:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$112, %rsp
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, -16(%rbp)
	subq	$8, %rsp
	movq	%rsp, -24(%rbp)
	movq	%rdi, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%rsi, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond5142
	.text
_body5141:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-32(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	string_of_bool
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	callq	print_string
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond5142
	.text
_cond5142:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-96(%rbp), %rax
	cmpq	-104(%rbp), %rax
	setl	-112(%rbp)
	andq	$1, -112(%rbp)
	cmpq	$0, -112(%rbp)
	jne	_body5141
	jmp	_post5140
	.text
_post5140:
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$616, %rsp
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
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
	leaq	lfsr_length(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	oat_alloc_array
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
	subq	$8, %rsp
	movq	%rsp, -80(%rbp)
	movq	-56(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, -88(%rbp)
	movq	-72(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond5024
	.text
_body5023:
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-104(%rbp), %rsi
	movq	-112(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-96(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-104(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -120(%rbp)
	movq	$0, %rax
	movq	-120(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond5024
	.text
_body5044:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	-152(%rbp), %rsi
	movq	-160(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-144(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-152(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -168(%rbp)
	leaq	lfsr_init_values(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -184(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-184(%rbp), %rsi
	movq	-192(%rbp), %rdi
	callq	oat_assert_array_length
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
	movq	-168(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -216(%rbp)
	movq	-216(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond5045
	.text
_body5067:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -232(%rbp)
	leaq	lfsr_length(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -240(%rbp)
	movq	-240(%rbp), %rax
	subq	$2, %rax
	movq	%rax, -248(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, -256(%rbp)
	movq	-248(%rbp), %rsi
	movq	-256(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-232(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-248(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -264(%rbp)
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -272(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -280(%rbp)
	leaq	lfsr_length(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -288(%rbp)
	movq	-288(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -296(%rbp)
	movq	-280(%rbp), %rax
	movq	%rax, -304(%rbp)
	movq	-296(%rbp), %rsi
	movq	-304(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-280(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-296(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -312(%rbp)
	movq	-312(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -320(%rbp)
	movq	-272(%rbp), %rsi
	movq	-320(%rbp), %rdi
	callq	xor
	movq	%rax, -328(%rbp)
	movq	-328(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	leaq	lfsr_length(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -336(%rbp)
	movq	-336(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -344(%rbp)
	movq	-344(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond5094
	.text
_body5093:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -352(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -360(%rbp)
	movq	-352(%rbp), %rax
	movq	%rax, -368(%rbp)
	movq	-360(%rbp), %rsi
	movq	-368(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-352(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-360(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -376(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -384(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -392(%rbp)
	movq	-392(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -400(%rbp)
	movq	-384(%rbp), %rax
	movq	%rax, -408(%rbp)
	movq	-400(%rbp), %rsi
	movq	-408(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-384(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-400(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -416(%rbp)
	movq	-416(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -424(%rbp)
	movq	-424(%rbp), %rax
	movq	-376(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -432(%rbp)
	movq	-432(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -440(%rbp)
	movq	-440(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond5094
	.text
_cond5024:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -448(%rbp)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -456(%rbp)
	movq	-448(%rbp), %rax
	cmpq	-456(%rbp), %rax
	setl	-464(%rbp)
	andq	$1, -464(%rbp)
	cmpq	$0, -464(%rbp)
	jne	_body5023
	jmp	_post5022
	.text
_cond5045:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -472(%rbp)
	leaq	lfsr_length(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -480(%rbp)
	movq	-472(%rbp), %rax
	cmpq	-480(%rbp), %rax
	setl	-488(%rbp)
	andq	$1, -488(%rbp)
	cmpq	$0, -488(%rbp)
	jne	_body5044
	jmp	_post5043
	.text
_cond5068:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -496(%rbp)
	leaq	lfsr_iterations(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -504(%rbp)
	movq	-496(%rbp), %rax
	cmpq	-504(%rbp), %rax
	setl	-512(%rbp)
	andq	$1, -512(%rbp)
	cmpq	$0, -512(%rbp)
	jne	_body5067
	jmp	_post5066
	.text
_cond5094:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -520(%rbp)
	movq	-520(%rbp), %rax
	cmpq	$0, %rax
	setg	-528(%rbp)
	andq	$1, -528(%rbp)
	cmpq	$0, -528(%rbp)
	jne	_body5093
	jmp	_post5092
	.text
_post5022:
	movq	-72(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond5045
	.text
_post5043:
	movq	$0, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond5068
	.text
_post5066:
	leaq	lfsr_length(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -536(%rbp)
	leaq	lfsr_init_values(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -544(%rbp)
	movq	-536(%rbp), %rsi
	movq	-544(%rbp), %rdi
	callq	print_lfsr
	leaq	_str_arr5123(%rip), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, -552(%rbp)
	movq	-552(%rbp), %rdi
	callq	print_string
	leaq	lfsr_length(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -560(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -568(%rbp)
	movq	-560(%rbp), %rsi
	movq	-568(%rbp), %rdi
	callq	print_lfsr
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_post5092:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -576(%rbp)
	movq	-576(%rbp), %rax
	movq	%rax, -584(%rbp)
	movq	$0, %rsi
	movq	-584(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-576(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -592(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -600(%rbp)
	movq	-600(%rbp), %rax
	movq	-592(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -608(%rbp)
	movq	-608(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -616(%rbp)
	movq	-616(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond5068