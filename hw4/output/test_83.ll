; generated from: oatprograms/lib14.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %a = alloca { i64, [0 x i64] }*
  %_argc2109 = alloca i64
  store i64 %argc, i64* %_argc2109
  %_argv2110 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2110
  %_raw_array2111 = call i64* @oat_alloc_array(i64 10)
  %_array2112 = bitcast i64* %_raw_array2111 to { i64, [0 x i64] }*
  %_CArr_elem_92122 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2112, i32 0, i32 1, i32 9
  store i64 117, i64* %_CArr_elem_92122
  %_CArr_elem_82121 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2112, i32 0, i32 1, i32 8
  store i64 118, i64* %_CArr_elem_82121
  %_CArr_elem_72120 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2112, i32 0, i32 1, i32 7
  store i64 119, i64* %_CArr_elem_72120
  %_CArr_elem_62119 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2112, i32 0, i32 1, i32 6
  store i64 120, i64* %_CArr_elem_62119
  %_CArr_elem_52118 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2112, i32 0, i32 1, i32 5
  store i64 121, i64* %_CArr_elem_52118
  %_CArr_elem_42117 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2112, i32 0, i32 1, i32 4
  store i64 122, i64* %_CArr_elem_42117
  %_CArr_elem_32116 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2112, i32 0, i32 1, i32 3
  store i64 123, i64* %_CArr_elem_32116
  %_CArr_elem_22115 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2112, i32 0, i32 1, i32 2
  store i64 124, i64* %_CArr_elem_22115
  %_CArr_elem_12114 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2112, i32 0, i32 1, i32 1
  store i64 125, i64* %_CArr_elem_12114
  %_CArr_elem_02113 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2112, i32 0, i32 1, i32 0
  store i64 126, i64* %_CArr_elem_02113
  store { i64, [0 x i64] }* %_array2112, { i64, [0 x i64] }** %a
  %_Call_retval2124 = call i8* @string_of_array({ i64, [0 x i64] }* %_id2123)
  %_id2123 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %a
  call void @print_string(i8* %_Call_retval2124)
  ret i64 0
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
