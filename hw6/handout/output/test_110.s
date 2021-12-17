	.data
	.globl	_str_arr4047
_str_arr4047:
	.asciz	"Correct!"
	.text
	.globl	euclid_division
euclid_division:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$320, %rsp
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, -16(%rbp)
	subq	$8, %rsp
	movq	%rsp, -24(%rbp)
	subq	$8, %rsp
	movq	%rsp, -32(%rbp)
	movq	%rdi, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%rsi, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, %rax
	setl	-48(%rbp)
	andq	$1, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	_then4126
	jmp	_else4125
	.text
_body4141:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rax
	subq	-80(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond4142
	.text
_body4167:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-112(%rbp), %rax
	subq	-120(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond4168
	.text
_cond4142:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-136(%rbp), %rax
	cmpq	-144(%rbp), %rax
	setge	-152(%rbp)
	andq	$1, -152(%rbp)
	cmpq	$0, -152(%rbp)
	jne	_body4141
	jmp	_post4140
	.text
_cond4168:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-160(%rbp), %rax
	cmpq	-168(%rbp), %rax
	setge	-176(%rbp)
	andq	$1, -176(%rbp)
	cmpq	$0, -176(%rbp)
	jne	_body4167
	jmp	_post4166
	.text
_else4125:
	jmp	_merge4124
	.text
_else4158:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -184(%rbp)
	movq	$0, %rax
	subq	-184(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_else4161:
	jmp	_merge4160
	.text
_merge4124:
	movq	$0, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -216(%rbp)
	movq	-216(%rbp), %rax
	cmpq	$0, %rax
	setl	-224(%rbp)
	andq	$1, -224(%rbp)
	cmpq	$0, -224(%rbp)
	jne	_then4162
	jmp	_else4161
	.text
_merge4157:
	jmp	_merge4160
	.text
_merge4160:
	jmp	_cond4168
	.text
_post4140:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -232(%rbp)
	movq	-232(%rbp), %rax
	cmpq	$0, %rax
	sete	-240(%rbp)
	andq	$1, -240(%rbp)
	cmpq	$0, -240(%rbp)
	jne	_then4159
	jmp	_else4158
	.text
_post4166:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -248(%rbp)
	movq	-248(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4126:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -256(%rbp)
	movq	$0, %rax
	subq	-256(%rbp), %rax
	movq	%rax, -264(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -272(%rbp)
	movq	-264(%rbp), %rsi
	movq	-272(%rbp), %rdi
	callq	euclid_division
	movq	%rax, -280(%rbp)
	movq	$0, %rax
	subq	-280(%rbp), %rax
	movq	%rax, -288(%rbp)
	movq	-288(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4159:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -296(%rbp)
	movq	$0, %rax
	subq	-296(%rbp), %rax
	movq	%rax, -304(%rbp)
	movq	-304(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4162:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -312(%rbp)
	movq	$0, %rax
	subq	-312(%rbp), %rax
	movq	%rax, -320(%rbp)
	movq	-320(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond4142
	.text
	.globl	binary_search
binary_search:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$312, %rsp
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
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	cmpq	-64(%rbp), %rax
	setl	-72(%rbp)
	andq	$1, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	_then4070
	jmp	_else4069
	.text
_else4069:
	jmp	_merge4068
	.text
_else4092:
	jmp	_merge4091
	.text
_else4109:
	movq	$1, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_merge4068:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	-88(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	$2, %rsi
	movq	-96(%rbp), %rdi
	callq	euclid_division
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-120(%rbp), %rsi
	movq	-128(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-112(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-120(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)
	movq	-144(%rbp), %rax
	cmpq	-152(%rbp), %rax
	setg	-160(%rbp)
	andq	$1, -160(%rbp)
	cmpq	$0, -160(%rbp)
	jne	_then4093
	jmp	_else4092
	.text
_merge4091:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	-176(%rbp), %rsi
	movq	-184(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-168(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-176(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -200(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -208(%rbp)
	movq	-200(%rbp), %rax
	cmpq	-208(%rbp), %rax
	setl	-216(%rbp)
	andq	$1, -216(%rbp)
	cmpq	$0, -216(%rbp)
	jne	_then4110
	jmp	_else4109
	.text
_merge4108:
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4070:
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4093:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -232(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -240(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -248(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -256(%rbp)
	movq	-232(%rbp), %rcx
	movq	-240(%rbp), %rdx
	movq	-248(%rbp), %rsi
	movq	-256(%rbp), %rdi
	callq	binary_search
	movq	%rax, -264(%rbp)
	movq	-264(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4110:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -272(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -280(%rbp)
	movq	-280(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -288(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -296(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -304(%rbp)
	movq	-272(%rbp), %rcx
	movq	-288(%rbp), %rdx
	movq	-296(%rbp), %rsi
	movq	-304(%rbp), %rdi
	callq	binary_search
	movq	%rax, -312(%rbp)
	movq	-312(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$336, %rsp
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
	movq	$100, %rdi
	callq	oat_alloc_array
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
	subq	$8, %rsp
	movq	%rsp, -64(%rbp)
	movq	$100, %rax
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, -72(%rbp)
	movq	-56(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond3998
	.text
_body3997:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-88(%rbp), %rsi
	movq	-96(%rbp), %rdi
	callq	oat_assert_array_length
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
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond3998
	.text
_body4017:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-136(%rbp), %rsi
	movq	-144(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-128(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-136(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -152(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)
	movq	$2, %rax
	imulq	-160(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	movq	-152(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond4018
	.text
_cond3998:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -200(%rbp)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -208(%rbp)
	movq	-200(%rbp), %rax
	cmpq	-208(%rbp), %rax
	setl	-216(%rbp)
	andq	$1, -216(%rbp)
	cmpq	$0, -216(%rbp)
	jne	_body3997
	jmp	_post3996
	.text
_cond4018:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rax
	cmpq	$100, %rax
	setl	-232(%rbp)
	andq	$1, -232(%rbp)
	cmpq	$0, -232(%rbp)
	jne	_body4017
	jmp	_post4016
	.text
_else4051:
	jmp	_merge4050
	.text
_merge4050:
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_post3996:
	movq	-56(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond4018
	.text
_post4016:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -240(%rbp)
	movq	$99, %rcx
	movq	$0, %rdx
	movq	$80, %rsi
	movq	-240(%rbp), %rdi
	callq	binary_search
	movq	%rax, -248(%rbp)
	movq	-248(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -256(%rbp)
	movq	$99, %rcx
	movq	$0, %rdx
	movq	$81, %rsi
	movq	-256(%rbp), %rdi
	callq	binary_search
	movq	%rax, -264(%rbp)
	movq	-264(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -272(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -280(%rbp)
	movq	-272(%rbp), %rax
	andq	-280(%rbp), %rax
	movq	%rax, -288(%rbp)
	movq	-288(%rbp), %rax
	cmpq	$0, %rax
	sete	-296(%rbp)
	andq	$1, -296(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -304(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -312(%rbp)
	movq	-304(%rbp), %rax
	orq	-312(%rbp), %rax
	movq	%rax, -320(%rbp)
	movq	-296(%rbp), %rax
	andq	-320(%rbp), %rax
	movq	%rax, -328(%rbp)
	cmpq	$0, -328(%rbp)
	jne	_then4052
	jmp	_else4051
	.text
_then4052:
	leaq	_str_arr4047(%rip), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, -336(%rbp)
	movq	-336(%rbp), %rdi
	callq	print_string
	jmp	_merge4050