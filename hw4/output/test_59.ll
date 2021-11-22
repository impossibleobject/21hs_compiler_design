; generated from: oatprograms/gcd.oat
target triple = "x86_64-unknown-linux"
define i64 @gcd(i64 %a, i64 %b) {
  %_a4192 = alloca i64
  store i64 %a, i64* %_a4192
  %_b4193 = alloca i64
  store i64 %b, i64* %_b4193
  %_t4199 = alloca i64*
  br label %_start4196
_start4196:
  %_id4195 = load i64*, i64** %_b4193
  %_bop4194 = icmp ne i64 %_id4195, 0
  br i1 %_bop4194, label %_body4197, label %_end4198
_body4197:
  %_id4200 = load i64*, i64** %_b4193
  store i64* %_id4200, i64** %_t4199
  %_id4201 = load i64*, i64** %_a4192
  %_id4202 = load i64*, i64** %_b4193
  %_Call_retval4203 = call i64 @mod(i64* %_id4201, i64* %_id4202)
  store i64 %_Call_retval4203, i64* %_b4193
  %_id4204 = load i64*, i64** %_t4199
  store i64* %_id4204, i64** %_a4192
  br label %_start4196
_end4198:
  %_id4205 = load i64*, i64** %_a4192
  ret i64 %_id4205
}

define i64 @mod(i64 %a, i64 %b) {
  %_a4177 = alloca i64
  store i64 %a, i64* %_a4177
  %_b4178 = alloca i64
  store i64 %b, i64* %_b4178
  %_t4179 = alloca i64*
  %_id4180 = load i64*, i64** %_a4177
  store i64* %_id4180, i64** %_t4179
  br label %_start4185
_start4185:
  %_id4183 = load i64*, i64** %_t4179
  %_id4184 = load i64*, i64** %_b4178
  %_bop4182 = sub i64 %_id4183, %_id4184
  %_bop4181 = icmp sge i64 %_bop4182, 0
  br i1 %_bop4181, label %_body4186, label %_end4187
_body4186:
  %_id4189 = load i64*, i64** %_t4179
  %_id4190 = load i64*, i64** %_b4178
  %_bop4188 = sub i64 %_id4189, %_id4190
  store i64 %_bop4188, i64* %_t4179
  br label %_start4185
_end4187:
  %_id4191 = load i64*, i64** %_t4179
  ret i64 %_id4191
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc4170 = alloca i64
  store i64 %argc, i64* %_argc4170
  %_argv4171 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4171
  %_a4172 = alloca i64
  %_b4173 = alloca i64
  store i64 64, i64* %_a4172
  store i64 48, i64* %_b4173
  %_id4174 = load i64, i64* %_a4172
  %_id4175 = load i64, i64* %_b4173
  %_Call_retval4176 = call i64 @gcd(i64 %_id4174, i64 %_id4175)
  ret i64 %_Call_retval4176
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
