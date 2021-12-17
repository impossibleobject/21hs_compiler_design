	.data
	.globl	meaning_of_life
meaning_of_life:
	.quad	42
	.data
	.globl	kesha_to_fling
kesha_to_fling:
	.quad	1
	.data
	.globl	professor
professor:
	.quad	_str6194
	.data
	.globl	_str6194
_str6194:
	.asciz	"Zdancewic!"
	.data
	.globl	global_arr
global_arr:
	.quad	_global_arr6193
	.data
	.globl	_global_arr6193
_global_arr6193:
	.quad	7
	.quad	1
	.quad	1
	.quad	2
	.quad	3
	.quad	5
	.quad	8
	.quad	13
	.data
	.globl	null_arr
null_arr:
	.quad	0
	.data
	.globl	ideal_341_midterm_score
ideal_341_midterm_score:
	.quad	_global_arr6192
	.data
	.globl	_global_arr6192
_global_arr6192:
	.quad	1
	.quad	100
	.data
	.globl	actual_341_midterm_score
actual_341_midterm_score:
	.quad	_global_arr6191
	.data
	.globl	_global_arr6191
_global_arr6191:
	.quad	1
	.quad	0
	.data
	.globl	_str_arr6161
_str_arr6161:
	.asciz	"Meaning of Life"
	.data
	.globl	_str_arr5688
_str_arr5688:
	.asciz	"My name is Jeff...\n"
	.data
	.globl	_str_arr5739
_str_arr5739:
	.asciz	"Charizard is the BEST Pokemon ever!!!"
	.text
	.globl	four
four:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$152, %rsp
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	leaq	meaning_of_life(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	leaq	global_arr(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	$5, %rsi
	movq	-32(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-24(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$40, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	leaq	global_arr(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	$4, %rsi
	movq	-64(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-56(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$32, %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-48(%rbp), %rax
	imulq	-80(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-16(%rbp), %rax
	subq	-88(%rbp), %rax
	movq	%rax, -96(%rbp)
	leaq	global_arr(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	$2, %rsi
	movq	-112(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-104(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$16, %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	-96(%rbp), %rax
	addq	-128(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	$0, %rax
	addq	-144(%rbp), %rax
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	asian_brother_of_foo_named_fui
asian_brother_of_foo_named_fui:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	leaq	global_arr(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	dfs
dfs:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$1384, %rsp
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
	movq	%r8 , %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%r9 , %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	cmpq	$0, %rax
	setge	-80(%rbp)
	andq	$1, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	_then5971
	jmp	_else5970
	.text
_else5964:
	jmp	_merge5963
	.text
_else5967:
	jmp	_merge5966
	.text
_else5970:
	jmp	_merge5969
	.text
_else6023:
	jmp	_merge6022
	.text
_else6026:
	jmp	_merge6025
	.text
_else6029:
	jmp	_merge6028
	.text
_else6081:
	jmp	_merge6080
	.text
_else6084:
	jmp	_merge6083
	.text
_else6087:
	jmp	_merge6086
	.text
_else6140:
	jmp	_merge6139
	.text
_else6143:
	jmp	_merge6142
	.text
_else6146:
	jmp	_merge6145
	.text
_merge5963:
	jmp	_merge5966
	.text
_merge5966:
	jmp	_merge5969
	.text
_merge5969:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -96(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-96(%rbp), %rax
	cmpq	-104(%rbp), %rax
	setl	-112(%rbp)
	andq	$1, -112(%rbp)
	cmpq	$0, -112(%rbp)
	jne	_then6030
	jmp	_else6029
	.text
_merge6022:
	jmp	_merge6025
	.text
_merge6025:
	jmp	_merge6028
	.text
_merge6028:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	cmpq	$0, %rax
	setge	-136(%rbp)
	andq	$1, -136(%rbp)
	cmpq	$0, -136(%rbp)
	jne	_then6088
	jmp	_else6087
	.text
_merge6080:
	jmp	_merge6083
	.text
_merge6083:
	jmp	_merge6086
	.text
_merge6086:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -152(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)
	movq	-152(%rbp), %rax
	cmpq	-160(%rbp), %rax
	setl	-168(%rbp)
	andq	$1, -168(%rbp)
	cmpq	$0, -168(%rbp)
	jne	_then6147
	jmp	_else6146
	.text
_merge6139:
	jmp	_merge6142
	.text
_merge6142:
	jmp	_merge6145
	.text
_merge6145:
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then5965:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -192(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -200(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -208(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -216(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-176(%rbp), %r9 
	movq	-192(%rbp), %r8 
	movq	-200(%rbp), %rcx
	movq	-208(%rbp), %rdx
	movq	-216(%rbp), %rsi
	movq	-224(%rbp), %rdi
	callq	dfs
	jmp	_merge5963
	.text
_then5968:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -232(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -240(%rbp)
	movq	-240(%rbp), %rax
	subq	$1, %rax
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
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -280(%rbp)
	movq	-272(%rbp), %rax
	movq	%rax, -288(%rbp)
	movq	-280(%rbp), %rsi
	movq	-288(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-272(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-280(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -296(%rbp)
	movq	$1, %rax
	movq	-296(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -304(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -312(%rbp)
	movq	-312(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -320(%rbp)
	movq	-304(%rbp), %rax
	movq	%rax, -328(%rbp)
	movq	-320(%rbp), %rsi
	movq	-328(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-304(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-320(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -336(%rbp)
	movq	-336(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -344(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -352(%rbp)
	movq	-344(%rbp), %rax
	movq	%rax, -360(%rbp)
	movq	-352(%rbp), %rsi
	movq	-360(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-344(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-352(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -368(%rbp)
	movq	-368(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -376(%rbp)
	movq	-376(%rbp), %rax
	cmpq	$1, %rax
	sete	-384(%rbp)
	andq	$1, -384(%rbp)
	cmpq	$0, -384(%rbp)
	jne	_then5965
	jmp	_else5964
	.text
_then5971:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -392(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -400(%rbp)
	movq	-400(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -408(%rbp)
	movq	-392(%rbp), %rax
	movq	%rax, -416(%rbp)
	movq	-408(%rbp), %rsi
	movq	-416(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-392(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-408(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -424(%rbp)
	movq	-424(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -432(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -440(%rbp)
	movq	-432(%rbp), %rax
	movq	%rax, -448(%rbp)
	movq	-440(%rbp), %rsi
	movq	-448(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-432(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-440(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -456(%rbp)
	movq	-456(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -464(%rbp)
	movq	-464(%rbp), %rax
	cmpq	$1, %rax
	setne	-472(%rbp)
	andq	$1, -472(%rbp)
	cmpq	$0, -472(%rbp)
	jne	_then5968
	jmp	_else5967
	.text
_then6024:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -480(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -488(%rbp)
	movq	-488(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -496(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -504(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -512(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -520(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -528(%rbp)
	movq	-480(%rbp), %r9 
	movq	-496(%rbp), %r8 
	movq	-504(%rbp), %rcx
	movq	-512(%rbp), %rdx
	movq	-520(%rbp), %rsi
	movq	-528(%rbp), %rdi
	callq	dfs
	jmp	_merge6022
	.text
_then6027:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -536(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -544(%rbp)
	movq	-544(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -552(%rbp)
	movq	-536(%rbp), %rax
	movq	%rax, -560(%rbp)
	movq	-552(%rbp), %rsi
	movq	-560(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-536(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-552(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -568(%rbp)
	movq	-568(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -576(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -584(%rbp)
	movq	-576(%rbp), %rax
	movq	%rax, -592(%rbp)
	movq	-584(%rbp), %rsi
	movq	-592(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-576(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-584(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -600(%rbp)
	movq	$1, %rax
	movq	-600(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -608(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -616(%rbp)
	movq	-616(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -624(%rbp)
	movq	-608(%rbp), %rax
	movq	%rax, -632(%rbp)
	movq	-624(%rbp), %rsi
	movq	-632(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-608(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-624(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -640(%rbp)
	movq	-640(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -648(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -656(%rbp)
	movq	-648(%rbp), %rax
	movq	%rax, -664(%rbp)
	movq	-656(%rbp), %rsi
	movq	-664(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-648(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-656(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -672(%rbp)
	movq	-672(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -680(%rbp)
	movq	-680(%rbp), %rax
	cmpq	$1, %rax
	sete	-688(%rbp)
	andq	$1, -688(%rbp)
	cmpq	$0, -688(%rbp)
	jne	_then6024
	jmp	_else6023
	.text
_then6030:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -696(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -704(%rbp)
	movq	-704(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -712(%rbp)
	movq	-696(%rbp), %rax
	movq	%rax, -720(%rbp)
	movq	-712(%rbp), %rsi
	movq	-720(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-696(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-712(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -728(%rbp)
	movq	-728(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -736(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -744(%rbp)
	movq	-736(%rbp), %rax
	movq	%rax, -752(%rbp)
	movq	-744(%rbp), %rsi
	movq	-752(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-736(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-744(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -760(%rbp)
	movq	-760(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -768(%rbp)
	movq	-768(%rbp), %rax
	cmpq	$1, %rax
	setne	-776(%rbp)
	andq	$1, -776(%rbp)
	cmpq	$0, -776(%rbp)
	jne	_then6027
	jmp	_else6026
	.text
_then6082:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -784(%rbp)
	movq	-784(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -792(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -800(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -808(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -816(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -824(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -832(%rbp)
	movq	-792(%rbp), %r9 
	movq	-800(%rbp), %r8 
	movq	-808(%rbp), %rcx
	movq	-816(%rbp), %rdx
	movq	-824(%rbp), %rsi
	movq	-832(%rbp), %rdi
	callq	dfs
	jmp	_merge6080
	.text
_then6085:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -840(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -848(%rbp)
	movq	-840(%rbp), %rax
	movq	%rax, -856(%rbp)
	movq	-848(%rbp), %rsi
	movq	-856(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-840(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-848(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -864(%rbp)
	movq	-864(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -872(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -880(%rbp)
	movq	-880(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -888(%rbp)
	movq	-872(%rbp), %rax
	movq	%rax, -896(%rbp)
	movq	-888(%rbp), %rsi
	movq	-896(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-872(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-888(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -904(%rbp)
	movq	$1, %rax
	movq	-904(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -912(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -920(%rbp)
	movq	-912(%rbp), %rax
	movq	%rax, -928(%rbp)
	movq	-920(%rbp), %rsi
	movq	-928(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-912(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-920(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -936(%rbp)
	movq	-936(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -944(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -952(%rbp)
	movq	-952(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -960(%rbp)
	movq	-944(%rbp), %rax
	movq	%rax, -968(%rbp)
	movq	-960(%rbp), %rsi
	movq	-968(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-944(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-960(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -976(%rbp)
	movq	-976(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -984(%rbp)
	movq	-984(%rbp), %rax
	cmpq	$1, %rax
	sete	-992(%rbp)
	andq	$1, -992(%rbp)
	cmpq	$0, -992(%rbp)
	jne	_then6082
	jmp	_else6081
	.text
_then6088:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1000(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1008(%rbp)
	movq	-1000(%rbp), %rax
	movq	%rax, -1016(%rbp)
	movq	-1008(%rbp), %rsi
	movq	-1016(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-1000(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-1008(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -1024(%rbp)
	movq	-1024(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1032(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1040(%rbp)
	movq	-1040(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -1048(%rbp)
	movq	-1032(%rbp), %rax
	movq	%rax, -1056(%rbp)
	movq	-1048(%rbp), %rsi
	movq	-1056(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-1032(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-1048(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -1064(%rbp)
	movq	-1064(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1072(%rbp)
	movq	-1072(%rbp), %rax
	cmpq	$1, %rax
	setne	-1080(%rbp)
	andq	$1, -1080(%rbp)
	cmpq	$0, -1080(%rbp)
	jne	_then6085
	jmp	_else6084
	.text
_then6141:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1088(%rbp)
	movq	-1088(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -1096(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1104(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1112(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1120(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1128(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1136(%rbp)
	movq	-1096(%rbp), %r9 
	movq	-1104(%rbp), %r8 
	movq	-1112(%rbp), %rcx
	movq	-1120(%rbp), %rdx
	movq	-1128(%rbp), %rsi
	movq	-1136(%rbp), %rdi
	callq	dfs
	jmp	_merge6139
	.text
_then6144:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1144(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1152(%rbp)
	movq	-1144(%rbp), %rax
	movq	%rax, -1160(%rbp)
	movq	-1152(%rbp), %rsi
	movq	-1160(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-1144(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-1152(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -1168(%rbp)
	movq	-1168(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1176(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1184(%rbp)
	movq	-1184(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -1192(%rbp)
	movq	-1176(%rbp), %rax
	movq	%rax, -1200(%rbp)
	movq	-1192(%rbp), %rsi
	movq	-1200(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-1176(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-1192(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -1208(%rbp)
	movq	$1, %rax
	movq	-1208(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1216(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1224(%rbp)
	movq	-1216(%rbp), %rax
	movq	%rax, -1232(%rbp)
	movq	-1224(%rbp), %rsi
	movq	-1232(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-1216(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-1224(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -1240(%rbp)
	movq	-1240(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1248(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1256(%rbp)
	movq	-1256(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -1264(%rbp)
	movq	-1248(%rbp), %rax
	movq	%rax, -1272(%rbp)
	movq	-1264(%rbp), %rsi
	movq	-1272(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-1248(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-1264(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -1280(%rbp)
	movq	-1280(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1288(%rbp)
	movq	-1288(%rbp), %rax
	cmpq	$1, %rax
	sete	-1296(%rbp)
	andq	$1, -1296(%rbp)
	cmpq	$0, -1296(%rbp)
	jne	_then6141
	jmp	_else6140
	.text
_then6147:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1304(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1312(%rbp)
	movq	-1304(%rbp), %rax
	movq	%rax, -1320(%rbp)
	movq	-1312(%rbp), %rsi
	movq	-1320(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-1304(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-1312(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -1328(%rbp)
	movq	-1328(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1336(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1344(%rbp)
	movq	-1344(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -1352(%rbp)
	movq	-1336(%rbp), %rax
	movq	%rax, -1360(%rbp)
	movq	-1352(%rbp), %rsi
	movq	-1360(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-1336(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-1352(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -1368(%rbp)
	movq	-1368(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1376(%rbp)
	movq	-1376(%rbp), %rax
	cmpq	$1, %rax
	setne	-1384(%rbp)
	andq	$1, -1384(%rbp)
	cmpq	$0, -1384(%rbp)
	jne	_then6144
	jmp	_else6143
	.text
	.globl	connected
connected:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$672, %rsp
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
	subq	$8, %rsp
	movq	%rsp, -56(%rbp)
	subq	$8, %rsp
	movq	%rsp, -64(%rbp)
	subq	$8, %rsp
	movq	%rsp, -72(%rbp)
	movq	%rdi, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%rsi, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%rdx, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	callq	oat_alloc_array
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -96(%rbp)
	subq	$8, %rsp
	movq	%rsp, -104(%rbp)
	movq	-80(%rbp), %rax
	movq	-104(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, -112(%rbp)
	movq	-96(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond5782
	.text
_body5781:
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	-128(%rbp), %rsi
	movq	-136(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-120(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-128(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -144(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rdi
	callq	oat_alloc_array
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -168(%rbp)
	subq	$8, %rsp
	movq	%rsp, -176(%rbp)
	movq	-152(%rbp), %rax
	movq	-176(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, -184(%rbp)
	movq	-168(%rbp), %rax
	movq	-184(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond5800
	.text
_body5799:
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -192(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -200(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, -208(%rbp)
	movq	-200(%rbp), %rsi
	movq	-208(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-192(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-200(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -216(%rbp)
	movq	$0, %rax
	movq	-216(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -232(%rbp)
	movq	-232(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond5800
	.text
_body5828:
	movq	$0, %rax
	movq	-72(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond5837
	.text
_body5836:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -240(%rbp)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -248(%rbp)
	movq	-240(%rbp), %rax
	movq	%rax, -256(%rbp)
	movq	-248(%rbp), %rsi
	movq	-256(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-240(%rbp), %rax
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
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -280(%rbp)
	movq	-272(%rbp), %rax
	movq	%rax, -288(%rbp)
	movq	-280(%rbp), %rsi
	movq	-288(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-272(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-280(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -296(%rbp)
	movq	-296(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -304(%rbp)
	movq	-304(%rbp), %rax
	cmpq	$0, %rax
	sete	-312(%rbp)
	andq	$1, -312(%rbp)
	cmpq	$0, -312(%rbp)
	jne	_then5888
	jmp	_else5887
	.text
_cond5782:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -320(%rbp)
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -328(%rbp)
	movq	-320(%rbp), %rax
	cmpq	-328(%rbp), %rax
	setl	-336(%rbp)
	andq	$1, -336(%rbp)
	cmpq	$0, -336(%rbp)
	jne	_body5781
	jmp	_post5780
	.text
_cond5800:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -344(%rbp)
	movq	-176(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -352(%rbp)
	movq	-344(%rbp), %rax
	cmpq	-352(%rbp), %rax
	setl	-360(%rbp)
	andq	$1, -360(%rbp)
	cmpq	$0, -360(%rbp)
	jne	_body5799
	jmp	_post5798
	.text
_cond5829:
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -368(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -376(%rbp)
	movq	-368(%rbp), %rax
	cmpq	-376(%rbp), %rax
	setl	-384(%rbp)
	andq	$1, -384(%rbp)
	cmpq	$0, -384(%rbp)
	jne	_body5828
	jmp	_post5827
	.text
_cond5837:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -392(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -400(%rbp)
	movq	-392(%rbp), %rax
	cmpq	-400(%rbp), %rax
	setl	-408(%rbp)
	andq	$1, -408(%rbp)
	cmpq	$0, -408(%rbp)
	jne	_body5836
	jmp	_post5835
	.text
_else5884:
	jmp	_merge5883
	.text
_else5887:
	jmp	_merge5886
	.text
_merge5883:
	jmp	_merge5886
	.text
_merge5886:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -416(%rbp)
	movq	-416(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -424(%rbp)
	movq	-424(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond5837
	.text
_post5780:
	movq	-96(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond5829
	.text
_post5798:
	movq	-168(%rbp), %rax
	movq	-144(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -432(%rbp)
	movq	-432(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -440(%rbp)
	movq	-440(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond5782
	.text
_post5827:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -448(%rbp)
	movq	-448(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_post5835:
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -456(%rbp)
	movq	-456(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -464(%rbp)
	movq	-464(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond5829
	.text
_then5885:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -472(%rbp)
	movq	-472(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -480(%rbp)
	movq	-480(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -488(%rbp)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -496(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -504(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -512(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -520(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -528(%rbp)
	movq	-488(%rbp), %r9 
	movq	-496(%rbp), %r8 
	movq	-504(%rbp), %rcx
	movq	-512(%rbp), %rdx
	movq	-520(%rbp), %rsi
	movq	-528(%rbp), %rdi
	callq	dfs
	jmp	_merge5883
	.text
_then5888:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -536(%rbp)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -544(%rbp)
	movq	-536(%rbp), %rax
	movq	%rax, -552(%rbp)
	movq	-544(%rbp), %rsi
	movq	-552(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-536(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-544(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -560(%rbp)
	movq	-560(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -568(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -576(%rbp)
	movq	-568(%rbp), %rax
	movq	%rax, -584(%rbp)
	movq	-576(%rbp), %rsi
	movq	-584(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-568(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-576(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -592(%rbp)
	movq	$1, %rax
	movq	-592(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -600(%rbp)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -608(%rbp)
	movq	-600(%rbp), %rax
	movq	%rax, -616(%rbp)
	movq	-608(%rbp), %rsi
	movq	-616(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-600(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-608(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -624(%rbp)
	movq	-624(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -632(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -640(%rbp)
	movq	-632(%rbp), %rax
	movq	%rax, -648(%rbp)
	movq	-640(%rbp), %rsi
	movq	-648(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-632(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-640(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -656(%rbp)
	movq	-656(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -664(%rbp)
	movq	-664(%rbp), %rax
	cmpq	$1, %rax
	sete	-672(%rbp)
	andq	$1, -672(%rbp)
	cmpq	$0, -672(%rbp)
	jne	_then5885
	jmp	_else5884
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$2024, %rsp
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
	subq	$8, %rsp
	movq	%rsp, -128(%rbp)
	subq	$8, %rsp
	movq	%rsp, -136(%rbp)
	subq	$8, %rsp
	movq	%rsp, -144(%rbp)
	subq	$8, %rsp
	movq	%rsp, -152(%rbp)
	subq	$8, %rsp
	movq	%rsp, -160(%rbp)
	subq	$8, %rsp
	movq	%rsp, -168(%rbp)
	subq	$8, %rsp
	movq	%rsp, -176(%rbp)
	movq	$4, %rdi
	callq	oat_alloc_array
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	$4, %rdi
	callq	oat_alloc_array
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rax
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -216(%rbp)
	movq	$1, %rax
	movq	-216(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-208(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, -224(%rbp)
	movq	$0, %rax
	movq	-224(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-208(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$16, %rax
	movq	%rax, -232(%rbp)
	movq	$1, %rax
	movq	-232(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-208(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$24, %rax
	movq	%rax, -240(%rbp)
	movq	$0, %rax
	movq	-240(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-192(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -248(%rbp)
	movq	-208(%rbp), %rax
	movq	-248(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$4, %rdi
	callq	oat_alloc_array
	movq	%rax, -256(%rbp)
	movq	-256(%rbp), %rax
	movq	%rax, -264(%rbp)
	movq	-264(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -272(%rbp)
	movq	$1, %rax
	movq	-272(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-264(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, -280(%rbp)
	movq	$1, %rax
	movq	-280(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-264(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$16, %rax
	movq	%rax, -288(%rbp)
	movq	$0, %rax
	movq	-288(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-264(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$24, %rax
	movq	%rax, -296(%rbp)
	movq	$1, %rax
	movq	-296(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-192(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, -304(%rbp)
	movq	-264(%rbp), %rax
	movq	-304(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$4, %rdi
	callq	oat_alloc_array
	movq	%rax, -312(%rbp)
	movq	-312(%rbp), %rax
	movq	%rax, -320(%rbp)
	movq	-320(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -328(%rbp)
	movq	$1, %rax
	movq	-328(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-320(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, -336(%rbp)
	movq	$0, %rax
	movq	-336(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-320(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$16, %rax
	movq	%rax, -344(%rbp)
	movq	$1, %rax
	movq	-344(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-320(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$24, %rax
	movq	%rax, -352(%rbp)
	movq	$1, %rax
	movq	-352(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-192(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$16, %rax
	movq	%rax, -360(%rbp)
	movq	-320(%rbp), %rax
	movq	-360(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$4, %rdi
	callq	oat_alloc_array
	movq	%rax, -368(%rbp)
	movq	-368(%rbp), %rax
	movq	%rax, -376(%rbp)
	movq	-376(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -384(%rbp)
	movq	$0, %rax
	movq	-384(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-376(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, -392(%rbp)
	movq	$1, %rax
	movq	-392(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-376(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$16, %rax
	movq	%rax, -400(%rbp)
	movq	$1, %rax
	movq	-400(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-376(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$24, %rax
	movq	%rax, -408(%rbp)
	movq	$0, %rax
	movq	-408(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-192(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$24, %rax
	movq	%rax, -416(%rbp)
	movq	-376(%rbp), %rax
	movq	-416(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-192(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$3, %rdi
	callq	oat_alloc_array
	movq	%rax, -424(%rbp)
	movq	-424(%rbp), %rax
	movq	%rax, -432(%rbp)
	movq	$5, %rdi
	callq	oat_alloc_array
	movq	%rax, -440(%rbp)
	movq	-440(%rbp), %rax
	movq	%rax, -448(%rbp)
	movq	-448(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -456(%rbp)
	movq	$0, %rax
	movq	-456(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-448(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, -464(%rbp)
	movq	$0, %rax
	movq	-464(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-448(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$16, %rax
	movq	%rax, -472(%rbp)
	movq	$1, %rax
	movq	-472(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-448(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$24, %rax
	movq	%rax, -480(%rbp)
	movq	$0, %rax
	movq	-480(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-448(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$32, %rax
	movq	%rax, -488(%rbp)
	movq	$1, %rax
	movq	-488(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-432(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -496(%rbp)
	movq	-448(%rbp), %rax
	movq	-496(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$5, %rdi
	callq	oat_alloc_array
	movq	%rax, -504(%rbp)
	movq	-504(%rbp), %rax
	movq	%rax, -512(%rbp)
	movq	-512(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -520(%rbp)
	movq	$0, %rax
	movq	-520(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-512(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, -528(%rbp)
	movq	$1, %rax
	movq	-528(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-512(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$16, %rax
	movq	%rax, -536(%rbp)
	movq	$1, %rax
	movq	-536(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-512(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$24, %rax
	movq	%rax, -544(%rbp)
	movq	$0, %rax
	movq	-544(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-512(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$32, %rax
	movq	%rax, -552(%rbp)
	movq	$1, %rax
	movq	-552(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-432(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, -560(%rbp)
	movq	-512(%rbp), %rax
	movq	-560(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$5, %rdi
	callq	oat_alloc_array
	movq	%rax, -568(%rbp)
	movq	-568(%rbp), %rax
	movq	%rax, -576(%rbp)
	movq	-576(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -584(%rbp)
	movq	$1, %rax
	movq	-584(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-576(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, -592(%rbp)
	movq	$1, %rax
	movq	-592(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-576(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$16, %rax
	movq	%rax, -600(%rbp)
	movq	$1, %rax
	movq	-600(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-576(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$24, %rax
	movq	%rax, -608(%rbp)
	movq	$1, %rax
	movq	-608(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-576(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$32, %rax
	movq	%rax, -616(%rbp)
	movq	$1, %rax
	movq	-616(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-432(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$16, %rax
	movq	%rax, -624(%rbp)
	movq	-576(%rbp), %rax
	movq	-624(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-432(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$3, %rdi
	callq	oat_alloc_array
	movq	%rax, -632(%rbp)
	movq	-632(%rbp), %rax
	movq	%rax, -640(%rbp)
	movq	$3, %rdi
	callq	oat_alloc_array
	movq	%rax, -648(%rbp)
	movq	-648(%rbp), %rax
	movq	%rax, -656(%rbp)
	movq	-656(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -664(%rbp)
	movq	$1, %rax
	movq	-664(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-656(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, -672(%rbp)
	movq	$0, %rax
	movq	-672(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-656(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$16, %rax
	movq	%rax, -680(%rbp)
	movq	$1, %rax
	movq	-680(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-640(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -688(%rbp)
	movq	-656(%rbp), %rax
	movq	-688(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$3, %rdi
	callq	oat_alloc_array
	movq	%rax, -696(%rbp)
	movq	-696(%rbp), %rax
	movq	%rax, -704(%rbp)
	movq	-704(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -712(%rbp)
	movq	$0, %rax
	movq	-712(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-704(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, -720(%rbp)
	movq	$1, %rax
	movq	-720(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-704(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$16, %rax
	movq	%rax, -728(%rbp)
	movq	$0, %rax
	movq	-728(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-640(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, -736(%rbp)
	movq	-704(%rbp), %rax
	movq	-736(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$3, %rdi
	callq	oat_alloc_array
	movq	%rax, -744(%rbp)
	movq	-744(%rbp), %rax
	movq	%rax, -752(%rbp)
	movq	-752(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -760(%rbp)
	movq	$1, %rax
	movq	-760(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-752(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, -768(%rbp)
	movq	$0, %rax
	movq	-768(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-752(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$16, %rax
	movq	%rax, -776(%rbp)
	movq	$1, %rax
	movq	-776(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-640(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$16, %rax
	movq	%rax, -784(%rbp)
	movq	-752(%rbp), %rax
	movq	-784(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-640(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	callq	four
	movq	%rax, -792(%rbp)
	movq	-792(%rbp), %rdi
	callq	oat_alloc_array
	movq	%rax, -800(%rbp)
	movq	-800(%rbp), %rax
	movq	%rax, -808(%rbp)
	subq	$8, %rsp
	movq	%rsp, -816(%rbp)
	movq	-792(%rbp), %rax
	movq	-816(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, -824(%rbp)
	movq	-808(%rbp), %rax
	movq	-824(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond5518
	.text
_body5517:
	movq	-824(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -832(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -840(%rbp)
	movq	-832(%rbp), %rax
	movq	%rax, -848(%rbp)
	movq	-840(%rbp), %rsi
	movq	-848(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-832(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-840(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -856(%rbp)
	movq	$2, %rdi
	callq	oat_alloc_array
	movq	%rax, -864(%rbp)
	movq	-864(%rbp), %rax
	movq	%rax, -872(%rbp)
	subq	$8, %rsp
	movq	%rsp, -880(%rbp)
	movq	$2, %rax
	movq	-880(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, -888(%rbp)
	movq	-872(%rbp), %rax
	movq	-888(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond5535
	.text
_body5534:
	movq	-888(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -896(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -904(%rbp)
	movq	-896(%rbp), %rax
	movq	%rax, -912(%rbp)
	movq	-904(%rbp), %rsi
	movq	-912(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-896(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-904(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -920(%rbp)
	leaq	actual_341_midterm_score(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -928(%rbp)
	movq	-928(%rbp), %rax
	movq	%rax, -936(%rbp)
	movq	$0, %rsi
	movq	-936(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-928(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -944(%rbp)
	movq	-944(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -952(%rbp)
	movq	-952(%rbp), %rax
	movq	-920(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -960(%rbp)
	movq	-960(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -968(%rbp)
	movq	-968(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond5535
	.text
_body5570:
	movq	-1584(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -976(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -984(%rbp)
	movq	-976(%rbp), %rax
	movq	%rax, -992(%rbp)
	movq	-984(%rbp), %rsi
	movq	-992(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-976(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-984(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -1000(%rbp)
	movq	$6, %rdi
	callq	oat_alloc_array
	movq	%rax, -1008(%rbp)
	movq	-1008(%rbp), %rax
	movq	%rax, -1016(%rbp)
	subq	$8, %rsp
	movq	%rsp, -1024(%rbp)
	movq	$6, %rax
	movq	-1024(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, -1032(%rbp)
	movq	-1016(%rbp), %rax
	movq	-1032(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond5588
	.text
_body5587:
	movq	-1032(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1040(%rbp)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1048(%rbp)
	movq	-1040(%rbp), %rax
	movq	%rax, -1056(%rbp)
	movq	-1048(%rbp), %rsi
	movq	-1056(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-1040(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-1048(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -1064(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1072(%rbp)
	movq	-1072(%rbp), %rax
	imulq	$0, %rax
	movq	%rax, -1080(%rbp)
	movq	-1080(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -1088(%rbp)
	movq	-1088(%rbp), %rax
	movq	-1064(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1096(%rbp)
	movq	-1096(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -1104(%rbp)
	movq	-1104(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond5588
	.text
_body5629:
	movq	-1672(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1112(%rbp)
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1120(%rbp)
	movq	-1112(%rbp), %rax
	movq	%rax, -1128(%rbp)
	movq	-1120(%rbp), %rsi
	movq	-1128(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-1112(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-1120(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -1136(%rbp)
	movq	$1, %rdi
	callq	oat_alloc_array
	movq	%rax, -1144(%rbp)
	movq	-1144(%rbp), %rax
	movq	%rax, -1152(%rbp)
	subq	$8, %rsp
	movq	%rsp, -1160(%rbp)
	movq	$1, %rax
	movq	-1160(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, -1168(%rbp)
	movq	-1152(%rbp), %rax
	movq	-1168(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-96(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond5647
	.text
_body5646:
	movq	-1168(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1176(%rbp)
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1184(%rbp)
	movq	-1176(%rbp), %rax
	movq	%rax, -1192(%rbp)
	movq	-1184(%rbp), %rsi
	movq	-1192(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-1176(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	-1184(%rbp), %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, -1200(%rbp)
	leaq	ideal_341_midterm_score(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -1208(%rbp)
	movq	-1208(%rbp), %rax
	movq	%rax, -1216(%rbp)
	movq	$0, %rsi
	movq	-1216(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-1208(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -1224(%rbp)
	movq	-1224(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1232(%rbp)
	leaq	kesha_to_fling(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -1240(%rbp)
	leaq	professor(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -1248(%rbp)
	movq	-1232(%rbp), %rdx
	movq	-1240(%rbp), %rsi
	movq	-1248(%rbp), %rdi
	callq	asian_brother_of_foo_named_fui
	movq	%rax, -1256(%rbp)
	movq	-1256(%rbp), %rax
	movq	%rax, -1264(%rbp)
	movq	$1, %rsi
	movq	-1264(%rbp), %rdi
	callq	oat_assert_array_length
	movq	-1256(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$8, %rax
	movq	%rax, -1272(%rbp)
	movq	-1272(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1280(%rbp)
	movq	-1280(%rbp), %rax
	movq	-1200(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1288(%rbp)
	movq	-1288(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -1296(%rbp)
	movq	-1296(%rbp), %rax
	movq	-96(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond5647
	.text
_cond5518:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1304(%rbp)
	movq	-816(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1312(%rbp)
	movq	-1304(%rbp), %rax
	cmpq	-1312(%rbp), %rax
	setl	-1320(%rbp)
	andq	$1, -1320(%rbp)
	cmpq	$0, -1320(%rbp)
	jne	_body5517
	jmp	_post5516
	.text
_cond5535:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1328(%rbp)
	movq	-880(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1336(%rbp)
	movq	-1328(%rbp), %rax
	cmpq	-1336(%rbp), %rax
	setl	-1344(%rbp)
	andq	$1, -1344(%rbp)
	cmpq	$0, -1344(%rbp)
	jne	_body5534
	jmp	_post5533
	.text
_cond5571:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1352(%rbp)
	movq	-1576(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1360(%rbp)
	movq	-1352(%rbp), %rax
	cmpq	-1360(%rbp), %rax
	setl	-1368(%rbp)
	andq	$1, -1368(%rbp)
	cmpq	$0, -1368(%rbp)
	jne	_body5570
	jmp	_post5569
	.text
_cond5588:
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1376(%rbp)
	movq	-1024(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1384(%rbp)
	movq	-1376(%rbp), %rax
	cmpq	-1384(%rbp), %rax
	setl	-1392(%rbp)
	andq	$1, -1392(%rbp)
	cmpq	$0, -1392(%rbp)
	jne	_body5587
	jmp	_post5586
	.text
_cond5630:
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1400(%rbp)
	movq	-1664(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1408(%rbp)
	movq	-1400(%rbp), %rax
	cmpq	-1408(%rbp), %rax
	setl	-1416(%rbp)
	andq	$1, -1416(%rbp)
	cmpq	$0, -1416(%rbp)
	jne	_body5629
	jmp	_post5628
	.text
_cond5647:
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1424(%rbp)
	movq	-1160(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1432(%rbp)
	movq	-1424(%rbp), %rax
	cmpq	-1432(%rbp), %rax
	setl	-1440(%rbp)
	andq	$1, -1440(%rbp)
	cmpq	$0, -1440(%rbp)
	jne	_body5646
	jmp	_post5645
	.text
_else5743:
	jmp	_merge5742
	.text
_merge5742:
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1448(%rbp)
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1456(%rbp)
	movq	-1448(%rbp), %rax
	addq	-1456(%rbp), %rax
	movq	%rax, -1464(%rbp)
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1472(%rbp)
	movq	-1464(%rbp), %rax
	addq	-1472(%rbp), %rax
	movq	%rax, -1480(%rbp)
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1488(%rbp)
	movq	-1480(%rbp), %rax
	addq	-1488(%rbp), %rax
	movq	%rax, -1496(%rbp)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1504(%rbp)
	movq	-1496(%rbp), %rax
	addq	-1504(%rbp), %rax
	movq	%rax, -1512(%rbp)
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1520(%rbp)
	movq	-1512(%rbp), %rax
	addq	-1520(%rbp), %rax
	movq	%rax, -1528(%rbp)
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1536(%rbp)
	movq	-1528(%rbp), %rax
	addq	-1536(%rbp), %rax
	movq	%rax, -1544(%rbp)
	movq	-1544(%rbp), %rax
	movq	-176(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-176(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1552(%rbp)
	movq	-1552(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_post5516:
	movq	-808(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$6, %rdi
	callq	oat_alloc_array
	movq	%rax, -1560(%rbp)
	movq	-1560(%rbp), %rax
	movq	%rax, -1568(%rbp)
	subq	$8, %rsp
	movq	%rsp, -1576(%rbp)
	movq	$6, %rax
	movq	-1576(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, -1584(%rbp)
	movq	-1568(%rbp), %rax
	movq	-1584(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond5571
	.text
_post5533:
	movq	-872(%rbp), %rax
	movq	-856(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1592(%rbp)
	movq	-1592(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -1600(%rbp)
	movq	-1600(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond5518
	.text
_post5569:
	movq	-1568(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$1, %rdi
	callq	oat_alloc_array
	movq	%rax, -1608(%rbp)
	movq	-1608(%rbp), %rax
	movq	%rax, -1616(%rbp)
	movq	$0, %rdi
	callq	oat_alloc_array
	movq	%rax, -1624(%rbp)
	movq	-1624(%rbp), %rax
	movq	%rax, -1632(%rbp)
	movq	-1616(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	addq	$0, %rax
	movq	%rax, -1640(%rbp)
	movq	-1632(%rbp), %rax
	movq	-1640(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-1616(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$1, %rdi
	callq	oat_alloc_array
	movq	%rax, -1648(%rbp)
	movq	-1648(%rbp), %rax
	movq	%rax, -1656(%rbp)
	subq	$8, %rsp
	movq	%rsp, -1664(%rbp)
	movq	$1, %rax
	movq	-1664(%rbp), %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, -1672(%rbp)
	movq	-1656(%rbp), %rax
	movq	-1672(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	-88(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond5630
	.text
_post5586:
	movq	-1016(%rbp), %rax
	movq	-1000(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1680(%rbp)
	movq	-1680(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -1688(%rbp)
	movq	-1688(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond5571
	.text
_post5628:
	movq	-1656(%rbp), %rax
	movq	-104(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1696(%rbp)
	movq	-1696(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1704(%rbp)
	movq	-1704(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1712(%rbp)
	movq	-1712(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1720(%rbp)
	movq	-1720(%rbp), %rax
	movq	-104(%rbp), %rcx
	movq	%rax, (%rcx)
	leaq	_str_arr5688(%rip), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, -1728(%rbp)
	movq	-1728(%rbp), %rdi
	callq	print_string
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1736(%rbp)
	movq	$4, %rdx
	movq	$4, %rsi
	movq	-1736(%rbp), %rdi
	callq	connected
	movq	%rax, -1744(%rbp)
	movq	-1744(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1752(%rbp)
	movq	$5, %rdx
	movq	$3, %rsi
	movq	-1752(%rbp), %rdi
	callq	connected
	movq	%rax, -1760(%rbp)
	movq	-1760(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1768(%rbp)
	movq	$3, %rdx
	movq	$3, %rsi
	movq	-1768(%rbp), %rdi
	callq	connected
	movq	%rax, -1776(%rbp)
	movq	-1776(%rbp), %rax
	movq	-136(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1784(%rbp)
	movq	$2, %rdx
	movq	$4, %rsi
	movq	-1784(%rbp), %rdi
	callq	connected
	movq	%rax, -1792(%rbp)
	movq	-1792(%rbp), %rax
	movq	-144(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1800(%rbp)
	movq	$6, %rdx
	movq	$6, %rsi
	movq	-1800(%rbp), %rdi
	callq	connected
	movq	%rax, -1808(%rbp)
	movq	-1808(%rbp), %rax
	movq	-152(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1816(%rbp)
	movq	$1, %rdx
	movq	$1, %rsi
	movq	-1816(%rbp), %rdi
	callq	connected
	movq	%rax, -1824(%rbp)
	movq	-1824(%rbp), %rax
	movq	-160(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1832(%rbp)
	movq	$0, %rdx
	movq	$0, %rsi
	movq	-1832(%rbp), %rdi
	callq	connected
	movq	%rax, -1840(%rbp)
	movq	-1840(%rbp), %rax
	movq	-168(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1848(%rbp)
	movq	-1848(%rbp), %rax
	cmpq	$3, %rax
	sete	-1856(%rbp)
	andq	$1, -1856(%rbp)
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1864(%rbp)
	movq	-1864(%rbp), %rax
	cmpq	$1, %rax
	sete	-1872(%rbp)
	andq	$1, -1872(%rbp)
	movq	-1856(%rbp), %rax
	andq	-1872(%rbp), %rax
	movq	%rax, -1880(%rbp)
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1888(%rbp)
	movq	-1888(%rbp), %rax
	cmpq	$5, %rax
	sete	-1896(%rbp)
	andq	$1, -1896(%rbp)
	movq	-1880(%rbp), %rax
	andq	-1896(%rbp), %rax
	movq	%rax, -1904(%rbp)
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1912(%rbp)
	movq	-1912(%rbp), %rax
	cmpq	$0, %rax
	sete	-1920(%rbp)
	andq	$1, -1920(%rbp)
	movq	-1904(%rbp), %rax
	andq	-1920(%rbp), %rax
	movq	%rax, -1928(%rbp)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1936(%rbp)
	movq	-1936(%rbp), %rax
	cmpq	$1, %rax
	sete	-1944(%rbp)
	andq	$1, -1944(%rbp)
	movq	-1928(%rbp), %rax
	andq	-1944(%rbp), %rax
	movq	%rax, -1952(%rbp)
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1960(%rbp)
	movq	-1960(%rbp), %rax
	cmpq	$1, %rax
	sete	-1968(%rbp)
	andq	$1, -1968(%rbp)
	movq	-1952(%rbp), %rax
	andq	-1968(%rbp), %rax
	movq	%rax, -1976(%rbp)
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1984(%rbp)
	movq	-1984(%rbp), %rax
	cmpq	$0, %rax
	sete	-1992(%rbp)
	andq	$1, -1992(%rbp)
	movq	-1976(%rbp), %rax
	andq	-1992(%rbp), %rax
	movq	%rax, -2000(%rbp)
	cmpq	$0, -2000(%rbp)
	jne	_then5744
	jmp	_else5743
	.text
_post5645:
	movq	-1152(%rbp), %rax
	movq	-1136(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -2008(%rbp)
	movq	-2008(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -2016(%rbp)
	movq	-2016(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	_cond5630
	.text
_then5744:
	leaq	_str_arr5739(%rip), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, -2024(%rbp)
	movq	-2024(%rbp), %rdi
	callq	print_string
	jmp	_merge5742