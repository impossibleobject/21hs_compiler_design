; generated from: oatprograms/gcd.oat
target triple = "x86_64-unknown-linux"
define i64 @gcd(i64 %a, i64 %b) {
  %_t4177 = alloca i64
  %_a4170 = alloca i64
  store i64 %a, i64* %_a4170
  %_b4171 = alloca i64
  store i64 %b, i64* %_b4171
  br label %_start4174
_start4174:
  %_id4173 = load i64, i64* %_b4171
  %_bop4172 = icmp ne i64 %_id4173, 0
  br i1 %_bop4172, label %_body4175, label %_end4176
_body4175:
  %_id4178 = load i64, i64* %_b4171
  store i64 %_id4178, i64* %_t4177
  %_id4179 = load i64, i64* %_a4170
  %_id4180 = load i64, i64* %_b4171
  %_Call_retval4181 = call i64 @mod(i64 %_id4179, i64 %_id4180)
  store i64 %_Call_retval4181, i64* %_b4171
  %_id4182 = load i64, i64* %_t4177
  store i64 %_id4182, i64* %_a4170
  br label %_start4174
_end4176:
  %_id4183 = load i64, i64* %_a4170
  ret i64 %_id4183
}

define i64 @mod(i64 %a, i64 %b) {
  %_t4157 = alloca i64
  %_a4155 = alloca i64
  store i64 %a, i64* %_a4155
  %_b4156 = alloca i64
  store i64 %b, i64* %_b4156
  %_id4158 = load i64, i64* %_a4155
  store i64 %_id4158, i64* %_t4157
  br label %_start4163
_start4163:
  %_id4161 = load i64, i64* %_t4157
  %_id4162 = load i64, i64* %_b4156
  %_bop4160 = sub i64 %_id4161, %_id4162
  %_bop4159 = icmp sge i64 %_bop4160, 0
  br i1 %_bop4159, label %_body4164, label %_end4165
_body4164:
  %_id4167 = load i64, i64* %_t4157
  %_id4168 = load i64, i64* %_b4156
  %_bop4166 = sub i64 %_id4167, %_id4168
  store i64 %_bop4166, i64* %_t4157
  br label %_start4163
_end4165:
  %_id4169 = load i64, i64* %_t4157
  ret i64 %_id4169
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_a4150 = alloca i64
  %_b4151 = alloca i64
  %_argc4148 = alloca i64
  store i64 %argc, i64* %_argc4148
  %_argv4149 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4149
  store i64 64, i64* %_a4150
  store i64 48, i64* %_b4151
  %_id4152 = load i64, i64* %_a4150
  %_id4153 = load i64, i64* %_b4151
  %_Call_retval4154 = call i64 @gcd(i64 %_id4152, i64 %_id4153)
  ret i64 %_Call_retval4154
}


declare i64* @oat_alloc_array(i64)
declare { i64, [0 x i64] }* @array_of_string(i8*)
declare i8* @string_of_array({ i64, [0 x i64] }*)
declare i64 @length_of_string(i8*)
declare i8* @string_of_int(i64)
declare i8* @string_cat(i8*, i8*)
declare void @print_string(i8*)
declare void @print_int(i64)
declare void @print_bool(i1)
