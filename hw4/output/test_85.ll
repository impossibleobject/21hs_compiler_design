; generated from: oatprograms/fac.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %i) {
  %r = alloca i64
  %_i2163 = alloca i64
  store i64 %i, i64* %_i2163
  store i64 0, i64* %r
  %_id2165 = load i64, i64* %_i2163
  %_bop2164 = icmp eq i64 %_id2165, 0
  br i1 %_bop2164, label %_then2166, label %_else2167
_then2166:
  store i64 1, i64* %r
  br label %_end2168
_else2167:
  %_id2170 = load i64, i64* %_i2163
  %_bop2171 = sub i64 %_id2172, 1
  %_id2172 = load i64, i64* %_i2163
  %_Call_retval2173 = call i64 @f(i64 %_bop2171)
  %_bop2169 = mul i64 %_id2170, %_Call_retval2173
  store i64 %_bop2169, i64* %r
  br label %_end2168
_end2168:
  %_id2174 = load i64, i64* %r
  ret i64 %_id2174
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2160 = alloca i64
  store i64 %argc, i64* %_argc2160
  %_argv2161 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2161
  %_Call_retval2162 = call i64 @f(i64 5)
  ret i64 %_Call_retval2162
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
