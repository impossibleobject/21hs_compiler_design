; generated from: oatprograms/lib9.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %i = alloca i64
  %_argc2063 = alloca i64
  store i64 %argc, i64* %_argc2063
  %_argv2064 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2064
  store i64 1, i64* %i
  br label %_start2068
_start2068:
  %_id2066 = load i64, i64* %i
  %_id2067 = load i64, i64* %_argc2063
  %_bop2065 = icmp slt i64 %_id2066, %_id2067
  br i1 %_bop2065, label %_body2069, label %_end2070
_body2069:
  %_idx_tmp2074 = load i8*, i8** %_index_ptr2073
  %_index_ptr2073 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_id2071, i32 0, i32 1, i64 %_id2072
  %_id2072 = load i64, i64* %i
  %_id2071 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_argv2064
  call void @print_string(i8* %_idx_tmp2074)
  %_id2077 = load i64, i64* %i
  %_bop2076 = add i64 %_id2077, 1
  store i64 %_bop2076, i64* %i
  br label %_start2068
_end2070:
  %_id2078 = load i64, i64* %_argc2063
  ret i64 %_id2078
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
