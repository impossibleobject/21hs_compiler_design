; generated from: hw5programs/compile_scall_fptr.oat
target triple = "x86_64-unknown-linux"
define void @inc_first({ i64, [0 x i64] }* %_x7085) {
  %_x7086 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_x7085, { i64, [0 x i64] }** %_x7086
  %_x7088 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x7086
  %_tmp7090 = bitcast { i64, [0 x i64] }* %_x7088 to i64*
  call void @oat_assert_array_length(i64* %_tmp7090, i64 0)
  %_index_ptr7091 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_x7088, i32 0, i32 1, i32 0
  %_x7092 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x7086
  %_tmp7094 = bitcast { i64, [0 x i64] }* %_x7092 to i64*
  call void @oat_assert_array_length(i64* %_tmp7094, i64 0)
  %_index_ptr7095 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_x7092, i32 0, i32 1, i32 0
  %_index7096 = load i64, i64* %_index_ptr7095
  %_bop7097 = add i64 %_index7096, 1
  store i64 %_bop7097, i64* %_index_ptr7091
  ret void
}

define i64 @program(i64 %_argc7065, { i64, [0 x i8*] }* %_argv7062) {
  %_x7076 = alloca { i64, [0 x i64] }*
  %_raw_array7068 = call i64* @oat_alloc_array(i64 3)
  %_array7069 = bitcast i64* %_raw_array7068 to { i64, [0 x i64] }*
  %_ind7070 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7069, i32 0, i32 1, i32 0
  store i64 3, i64* %_ind7070
  %_ind7072 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7069, i32 0, i32 1, i32 1
  store i64 4, i64* %_ind7072
  %_ind7074 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7069, i32 0, i32 1, i32 2
  store i64 5, i64* %_ind7074
  store { i64, [0 x i64] }* %_array7069, { i64, [0 x i64] }** %_x7076
  %_x7078 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x7076
  call void @inc_first({ i64, [0 x i64] }* %_x7078)
  %_x7080 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x7076
  %_tmp7082 = bitcast { i64, [0 x i64] }* %_x7080 to i64*
  call void @oat_assert_array_length(i64* %_tmp7082, i64 0)
  %_index_ptr7083 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_x7080, i32 0, i32 1, i32 0
  %_index7084 = load i64, i64* %_index_ptr7083
  ret i64 %_index7084
}


declare i64* @oat_malloc(i64)
declare i64* @oat_alloc_array(i64)
declare void @oat_assert_not_null(i8*)
declare void @oat_assert_array_length(i64*, i64)
declare { i64, [0 x i64] }* @array_of_string(i8*)
declare i8* @string_of_array({ i64, [0 x i64] }*)
declare i64 @length_of_string(i8*)
declare i8* @string_of_int(i64)
declare i8* @string_cat(i8*, i8*)
declare void @print_string(i8*)
declare void @print_int(i64)
declare void @print_bool(i1)
