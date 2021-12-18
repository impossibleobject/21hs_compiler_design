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
	subq	$48, %rsp
	subq	$8, %rsp
	movq	%rsp, %r11
	subq	$8, %rsp
	movq	%rsp, %r10
	movq	%rdi, (%r11)
	movq	%rsi, (%r10)
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, %rax
	sete	-24(%rbp)
	andq	$1, -24(%rbp)
	movq	-8(%rbp), %rax
	andq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, %rax
	sete	%r11b
	andq	$1, %r11
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	%r11, %r10
	andq	-48(%rbp), %r10
	movq	-32(%rbp), %r11
	orq	%r10, %r11
	movq	%r11, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	string_of_bool
string_of_bool:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	subq	$8, %rsp
	movq	%rsp, %r11
	movq	%rdi, (%r11)
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	_then5164
	jmp	_else5163
	.text
_else5163:
	leaq	_str_arr5160(%rip), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %r11
	movq	%r11, %rax
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
	movq	%rax, %r11
	movq	%r11, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	print_lfsr
print_lfsr:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$96, %rsp
	subq	$8, %rsp
	movq	%rsp, %r11
	subq	$8, %rsp
	movq	%rsp, %r10
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	movq	%rdi, (%r11)
	movq	%rsi, (%r10)
	movq	$0, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond5142
	.text
_body5141:
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	pushq	%r11
	pushq	%r10
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	-16(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	pushq	%r11
	pushq	%r10
	movq	-48(%rbp), %rdi
	callq	string_of_bool
	popq	%r10
	popq	%r11
	movq	%rax, -56(%rbp)
	pushq	%r11
	pushq	%r10
	movq	-56(%rbp), %rdi
	callq	print_string
	popq	%r10
	popq	%r11
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond5142
	.text
_cond5142:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	cmpq	-88(%rbp), %rax
	setl	-96(%rbp)
	andq	$1, -96(%rbp)
	cmpq	$0, -96(%rbp)
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
	subq	$440, %rsp
	subq	$8, %rsp
	movq	%rsp, %r11
	subq	$8, %rsp
	movq	%rsp, %r10
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, -16(%rbp)
	subq	$8, %rsp
	movq	%rsp, -24(%rbp)
	subq	$8, %rsp
	movq	%rsp, -32(%rbp)
	leaq	lfsr_length(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	pushq	%r11
	pushq	%r10
	movq	-40(%rbp), %rdi
	callq	oat_alloc_array
	popq	%r10
	popq	%r11
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
	subq	$8, %rsp
	movq	%rsp, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, -72(%rbp)
	movq	-56(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	%r11, %rcx
	movq	%rax, (%rcx)
	jmp	_cond5024
	.text
_body5023:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -96(%rbp)
	pushq	%r11
	pushq	%r10
	movq	-88(%rbp), %rsi
	movq	-96(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	-80(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-88(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -104(%rbp)
	movq	$0, %rax
	movq	-104(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%r11, %rcx
	movq	%rax, (%rcx)
	jmp	_cond5024
	.text
_body5044:
	movq	(%r10), %r11
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	%r11, %rax
	movq	%rax, -136(%rbp)
	pushq	%r11
	pushq	%r10
	movq	-128(%rbp), %rsi
	movq	-136(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	%r11, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-128(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -144(%rbp)
	leaq	lfsr_init_values(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)
	movq	%r11, %rax
	movq	%rax, -160(%rbp)
	pushq	%r11
	pushq	%r10
	movq	-152(%rbp), %rsi
	movq	-160(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	%r11, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-152(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	%r11, %rax
	movq	-144(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	%r11, %rax
	addq	$1, %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond5045
	.text
_body5067:
	movq	(%r10), %r11
	leaq	lfsr_length(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	subq	$2, %rax
	movq	%rax, -192(%rbp)
	movq	%r11, %rax
	movq	%rax, -200(%rbp)
	pushq	%r11
	pushq	%r10
	movq	-192(%rbp), %rsi
	movq	-200(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	%r11, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-192(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -216(%rbp)
	leaq	lfsr_length(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -232(%rbp)
	movq	-216(%rbp), %rax
	movq	%rax, -240(%rbp)
	pushq	%r11
	pushq	%r10
	movq	-232(%rbp), %rsi
	movq	-240(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	-216(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-232(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -248(%rbp)
	movq	-248(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -256(%rbp)
	pushq	%r11
	pushq	%r10
	movq	%r11, %rsi
	movq	-256(%rbp), %rdi
	callq	xor
	popq	%r10
	popq	%r11
	movq	%rax, -264(%rbp)
	movq	-264(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	leaq	lfsr_length(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	%r11, %rax
	subq	$1, %rax
	movq	%rax, -272(%rbp)
	movq	-272(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond5094
	.text
_body5093:
	movq	(%r10), %r11
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -280(%rbp)
	movq	%r11, %rax
	movq	%rax, -288(%rbp)
	pushq	%r11
	pushq	%r10
	movq	-280(%rbp), %rsi
	movq	-288(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	%r11, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-280(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -296(%rbp)
	movq	(%r10), %r11
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -304(%rbp)
	movq	-304(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -312(%rbp)
	movq	%r11, %rax
	movq	%rax, -320(%rbp)
	pushq	%r11
	pushq	%r10
	movq	-312(%rbp), %rsi
	movq	-320(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	%r11, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-312(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -328(%rbp)
	movq	-328(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	%r11, %rax
	movq	-296(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	%r11, %rax
	subq	$1, %rax
	movq	%rax, -336(%rbp)
	movq	-336(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond5094
	.text
_cond5024:
	movq	%r11, %rax
	movq	(%rax), %rax
	movq	%rax, -344(%rbp)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -352(%rbp)
	movq	-344(%rbp), %rax
	cmpq	-352(%rbp), %rax
	setl	-360(%rbp)
	andq	$1, -360(%rbp)
	cmpq	$0, -360(%rbp)
	jne	_body5023
	jmp	_post5022
	.text
_cond5045:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	leaq	lfsr_length(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -368(%rbp)
	cmpq	-368(%rbp), %r11
	setl	-376(%rbp)
	andq	$1, -376(%rbp)
	cmpq	$0, -376(%rbp)
	jne	_body5044
	jmp	_post5043
	.text
_cond5068:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	leaq	lfsr_iterations(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -384(%rbp)
	cmpq	-384(%rbp), %r11
	setl	-392(%rbp)
	andq	$1, -392(%rbp)
	cmpq	$0, -392(%rbp)
	jne	_body5067
	jmp	_post5066
	.text
_cond5094:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	cmpq	$0, %r11
	setg	-400(%rbp)
	andq	$1, -400(%rbp)
	cmpq	$0, -400(%rbp)
	jne	_body5093
	jmp	_post5092
	.text
_post5022:
	movq	-56(%rbp), %rax
	movq	%r10, %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond5045
	.text
_post5043:
	movq	$0, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond5068
	.text
_post5066:
	leaq	lfsr_length(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	leaq	lfsr_init_values(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -408(%rbp)
	pushq	%r11
	pushq	%r10
	movq	%r11, %rsi
	movq	-408(%rbp), %rdi
	callq	print_lfsr
	popq	%r10
	popq	%r11
	leaq	_str_arr5123(%rip), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %r11
	pushq	%r11
	pushq	%r10
	movq	%r11, %rdi
	callq	print_string
	popq	%r10
	popq	%r11
	leaq	lfsr_length(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	%r10, %rax
	movq	(%rax), %rax
	movq	%rax, -416(%rbp)
	pushq	%r11
	movq	%r11, %rsi
	movq	-416(%rbp), %rdi
	callq	print_lfsr
	popq	%r11
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_post5092:
	movq	(%r10), %r11
	movq	%r11, %rax
	movq	%rax, -424(%rbp)
	pushq	%r11
	pushq	%r10
	movq	$0, %rsi
	movq	-424(%rbp), %rdi
	callq	oat_assert_array_length
	popq	%r10
	popq	%r11
	movq	%r11, %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -432(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	%r11, %rax
	movq	-432(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	%r11, %rax
	addq	$1, %rax
	movq	%rax, -440(%rbp)
	movq	-440(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond5068