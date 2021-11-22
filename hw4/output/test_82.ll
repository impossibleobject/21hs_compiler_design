; generated from: oatprograms/lib11.oat
target triple = "x86_64-unknown-linux"
@_cstr_glb2082 = global [11 x i8] c"1234967890\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %arr = alloca { i64, [0 x i64] }*
  %sum = alloca i64
  %i = alloca i64
  %i = alloca i64
  %_argc2079 = alloca i64
  store i64 %argc, i64* %_argc2079
  %_argv2080 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2080
  %_cstr_loc2081 = getelementptr [11 x i8], [11 x i8]* @_cstr_glb2082, i32 0, i32 0
  %_Call_retval2083 = call { i64, [0 x i64] }* @array_of_string(i8* %_cstr_loc2081)
  store { i64, [0 x i64] }* %_Call_retval2083, { i64, [0 x i64] }** %arr
  store i64 0, i64* %sum
  store i64 0, i64* %i
  br label %_start2086
_start2086:
  %_id2085 = load i64, i64* %i
  %_bop2084 = icmp slt i64 %_id2085, 10
  br i1 %_bop2084, label %_body2087, label %_end2088
_body2087:
  %_id2089 = load i64, i64* %i
  %_id2090 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %arr
  %_id2091 = load i64, i64* %i
  %_index_ptr2092 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2090, i32 0, i32 1, i64 %_id2091
  store i64 %_id2089, i64* %_index_ptr2092
  %_id2094 = load i64, i64* %i
  %_bop2093 = add i64 %_id2094, 1
  store i64 %_bop2093, i64* %i
  br label %_start2086
_end2088:
  store i64 0, i64* %i
  br label %_start2097
_start2097:
  %_id2096 = load i64, i64* %i
  %_bop2095 = icmp slt i64 %_id2096, 10
  br i1 %_bop2095, label %_body2098, label %_end2099
_body2098:
  %_id2101 = load i64, i64* %sum
  %_id2102 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %arr
  %_id2103 = load i64, i64* %i
  %_index_ptr2104 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2102, i32 0, i32 1, i64 %_id2103
  %_idx_tmp2105 = load i64, i64* %_index_ptr2104
  %_bop2100 = add i64 %_id2101, %_idx_tmp2105
  store i64 %_bop2100, i64* %sum
  %_id2107 = load i64, i64* %i
  %_bop2106 = add i64 %_id2107, 1
  store i64 %_bop2106, i64* %i
  br label %_start2097
_end2099:
  %_id2108 = load i64, i64* %sum
  ret i64 %_id2108
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
