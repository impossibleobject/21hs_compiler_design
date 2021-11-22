; generated from: oatprograms/lib4.oat
target triple = "x86_64-unknown-linux"
@str = global [6 x i8] c"hello\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2067 = alloca i64
  store i64 %argc, i64* %_argc2067
  %_argv2068 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2068
  %_arr2069 = alloca { i64, [0 x i64] }*
  %_s2072 = alloca i64
  %_i2073 = alloca i64
  %_id2070 = load [6 x i8], [6 x i8]* @str
  %_Call_retval2071 = call { i64, [0 x i64] }* @array_of_string([6 x i8] %_id2070)
  store { i64, [0 x i64] }* %_Call_retval2071, { i64, [0 x i64] }** %_arr2069
  store i64 0, i64* %_s2072
  store i64 0, i64* %_i2073
  br label %_start2076
_start2076:
  %_id2075 = load i64, i64* %_i2073
  %_bop2074 = icmp slt i64 %_id2075, 5
  br i1 %_bop2074, label %_body2077, label %_end2078
_body2077:
  %_id2080 = load i64, i64* %_s2072
  %_id2081 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr2069
  %_id2082 = load i64, i64* %_i2073
  %_index_ptr2083 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2081, i32 0, i32 1, i64 %_id2082
  %_idx_tmp2084 = load i64, i64* %_index_ptr2083
  %_bop2079 = add i64 %_id2080, %_idx_tmp2084
  store i64 %_bop2079, i64* %_s2072
  %_id2086 = load i64, i64* %_i2073
  %_bop2085 = add i64 %_id2086, 1
  store i64 %_bop2085, i64* %_i2073
  br label %_start2076
_end2078:
  %_id2087 = load i64, i64* %_s2072
  call void @print_int(i64 %_id2087)
  %_id2089 = load i64, i64* %_s2072
  ret i64 %_id2089
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
