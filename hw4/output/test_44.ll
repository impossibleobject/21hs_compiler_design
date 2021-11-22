; generated from: oatprograms/lib4.oat
target triple = "x86_64-unknown-linux"
@str = global [6 x i8] c"hello\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2054 = alloca i64
  store i64 %argc, i64* %_argc2054
  %_argv2055 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2055
  %_arr2056 = alloca { i64, [0 x i64] }*
  %_s2059 = alloca i64
  %_i2060 = alloca i64
  %_id2057 = load i8*, i8** @str
  %_Call_retval2058 = call { i64, [0 x i64] }* @array_of_string(i8* %_id2057)
  store { i64, [0 x i64] }* %_Call_retval2058, { i64, [0 x i64] }** %_arr2056
  store i64 0, i64* %_s2059
  store i64 0, i64* %_i2060
  br label %_start2063
_start2063:
  %_id2062 = load i64, i64* %_i2060
  %_bop2061 = icmp slt i64 %_id2062, 5
  br i1 %_bop2061, label %_body2064, label %_end2065
_body2064:
  %_id2067 = load i64, i64* %_s2059
  %_id2068 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr2056
  %_id2069 = load i64, i64* %_i2060
  %_index_ptr2070 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2068, i32 0, i32 1, i64 %_id2069
  %_idx_tmp2071 = load i64, i64* %_index_ptr2070
  %_bop2066 = add i64 %_id2067, %_idx_tmp2071
  store i64 %_bop2066, i64* %_s2059
  %_id2073 = load i64, i64* %_i2060
  %_bop2072 = add i64 %_id2073, 1
  store i64 %_bop2072, i64* %_i2060
  br label %_start2063
_end2065:
  %_id2074 = load i64, i64* %_s2059
  call void @print_int(i64 %_id2074)
  %_id2076 = load i64, i64* %_s2059
  ret i64 %_id2076
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
