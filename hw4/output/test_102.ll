; generated from: oatprograms/gcd.oat
target triple = "x86_64-unknown-linux"
define i64 @gcd(i64 %a, i64 %b) {
  %_t4180 = alloca i64
  %_a4173 = alloca i64
  store i64 %a, i64* %_a4173
  %_b4174 = alloca i64
  store i64 %b, i64* %_b4174
  br label %_start4177
_start4177:
  %_id4176 = load i64, i64* %_b4174
  %_bop4175 = icmp ne i64 %_id4176, 0
  br i1 %_bop4175, label %_body4178, label %_end4179
_body4178:
  %_id4181 = load i64, i64* %_b4174
  store i64 %_id4181, i64* %_t4180
  %_id4183 = load i64, i64* %_b4174
  %_id4182 = load i64, i64* %_a4173
  %_Call_retval4184 = call i64 @mod(i64 %_id4182, i64 %_id4183)
  store i64 %_Call_retval4184, i64* %_b4174
  %_id4185 = load i64, i64* %_t4180
  store i64 %_id4185, i64* %_a4173
  br label %_start4177
_end4179:
  %_id4186 = load i64, i64* %_a4173
  ret i64 %_id4186
}

define i64 @mod(i64 %a, i64 %b) {
  %_t4160 = alloca i64
  %_a4158 = alloca i64
  store i64 %a, i64* %_a4158
  %_b4159 = alloca i64
  store i64 %b, i64* %_b4159
  %_id4161 = load i64, i64* %_a4158
  store i64 %_id4161, i64* %_t4160
  br label %_start4166
_start4166:
  %_id4164 = load i64, i64* %_t4160
  %_id4165 = load i64, i64* %_b4159
  %_bop4163 = sub i64 %_id4164, %_id4165
  %_bop4162 = icmp sge i64 %_bop4163, 0
  br i1 %_bop4162, label %_body4167, label %_end4168
_body4167:
  %_id4170 = load i64, i64* %_t4160
  %_id4171 = load i64, i64* %_b4159
  %_bop4169 = sub i64 %_id4170, %_id4171
  store i64 %_bop4169, i64* %_t4160
  br label %_start4166
_end4168:
  %_id4172 = load i64, i64* %_t4160
  ret i64 %_id4172
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_a4153 = alloca i64
  %_b4154 = alloca i64
  %_argc4151 = alloca i64
  store i64 %argc, i64* %_argc4151
  %_argv4152 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4152
  store i64 64, i64* %_a4153
  store i64 48, i64* %_b4154
  %_id4156 = load i64, i64* %_b4154
  %_id4155 = load i64, i64* %_a4153
  %_Call_retval4157 = call i64 @gcd(i64 %_id4155, i64 %_id4156)
  ret i64 %_Call_retval4157
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
