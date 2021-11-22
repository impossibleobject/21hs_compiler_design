; generated from: oatprograms/easyrun10.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %x = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %ans = alloca i64
  %i = alloca i64
  %_argc113 = alloca i64
  store i64 %argc, i64* %_argc113
  %_argv114 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv114
  %_raw_array115 = call i64* @oat_alloc_array(i64 4)
  %_array116 = bitcast i64* %_raw_array115 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array126 = call i64* @oat_alloc_array(i64 1)
  %_array127 = bitcast i64* %_raw_array126 to { i64, [0 x i64] }*
  %_CArr_elem_0128 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array127, i32 0, i32 1, i32 0
  store i64 4, i64* %_CArr_elem_0128
  %_CArr_elem_3132 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array116, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array127, { i64, [0 x i64] }** %_CArr_elem_3132
  %_raw_array123 = call i64* @oat_alloc_array(i64 1)
  %_array124 = bitcast i64* %_raw_array123 to { i64, [0 x i64] }*
  %_CArr_elem_0125 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array124, i32 0, i32 1, i32 0
  store i64 3, i64* %_CArr_elem_0125
  %_CArr_elem_2131 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array116, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array124, { i64, [0 x i64] }** %_CArr_elem_2131
  %_raw_array120 = call i64* @oat_alloc_array(i64 1)
  %_array121 = bitcast i64* %_raw_array120 to { i64, [0 x i64] }*
  %_CArr_elem_0122 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array121, i32 0, i32 1, i32 0
  store i64 2, i64* %_CArr_elem_0122
  %_CArr_elem_1130 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array116, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array121, { i64, [0 x i64] }** %_CArr_elem_1130
  %_raw_array117 = call i64* @oat_alloc_array(i64 1)
  %_array118 = bitcast i64* %_raw_array117 to { i64, [0 x i64] }*
  %_CArr_elem_0119 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array118, i32 0, i32 1, i32 0
  store i64 1, i64* %_CArr_elem_0119
  %_CArr_elem_0129 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array116, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array118, { i64, [0 x i64] }** %_CArr_elem_0129
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array116, { i64, [0 x { i64, [0 x i64] }*] }** %x
  store i64 0, i64* %ans
  store i64 0, i64* %i
  br label %_start135
_start135:
  %_id134 = load i64, i64* %i
  %_bop133 = icmp slt i64 %_id134, 4
  br i1 %_bop133, label %_body136, label %_end137
_body136:
  %_id139 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %x
  %_id140 = load i64, i64* %i
  %_index_ptr141 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id139, i32 0, i32 1, i64 %_id140
  %_idx_tmp142 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr141
  %_index_ptr143 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_idx_tmp142, i32 0, i32 1, i32 0
  %_idx_tmp145 = load i64, i64* %_index_ptr143
  %_id144 = load i64, i64* %ans
  %_bop138 = sub i64 %_idx_tmp145, %_id144
  store i64 %_bop138, i64* %ans
  %_id147 = load i64, i64* %i
  %_bop146 = add i64 %_id147, 1
  store i64 %_bop146, i64* %i
  br label %_start135
_end137:
  %_uop151 = xor i64 5, -1
  %_bop150 = and i64 5, %_uop151
  %_bop149 = or i64 %_bop150, 0
  %_bop148 = icmp ne i64 %_bop149, 0
  br i1 %_bop148, label %_then152, label %_else153
_then152:
  %_id155 = load i64, i64* %ans
  ret i64 %_id155
_else153:
  %_id157 = load i64, i64* %ans
  %_uop156 = sub i64 0, %_id157
  ret i64 %_uop156
_end154:
  %_id158 = load i64, i64* %ans
  ret i64 %_id158
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
