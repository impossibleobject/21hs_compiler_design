; generated from: oatprograms/easyrun10.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_x124 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_ans143 = alloca i64
  %_i144 = alloca i64
  %_argc122 = alloca i64
  store i64 %argc, i64* %_argc122
  %_argv123 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv123
  %_raw_array125 = call i64* @oat_alloc_array(i64 4)
  %_array126 = bitcast i64* %_raw_array125 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array136 = call i64* @oat_alloc_array(i64 1)
  %_array137 = bitcast i64* %_raw_array136 to { i64, [0 x i64] }*
  %_CArr_elem_0138 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array137, i32 0, i32 1, i32 0
  store i64 4, i64* %_CArr_elem_0138
  %_CArr_elem_3142 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array126, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array137, { i64, [0 x i64] }** %_CArr_elem_3142
  %_raw_array133 = call i64* @oat_alloc_array(i64 1)
  %_array134 = bitcast i64* %_raw_array133 to { i64, [0 x i64] }*
  %_CArr_elem_0135 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array134, i32 0, i32 1, i32 0
  store i64 3, i64* %_CArr_elem_0135
  %_CArr_elem_2141 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array126, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array134, { i64, [0 x i64] }** %_CArr_elem_2141
  %_raw_array130 = call i64* @oat_alloc_array(i64 1)
  %_array131 = bitcast i64* %_raw_array130 to { i64, [0 x i64] }*
  %_CArr_elem_0132 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array131, i32 0, i32 1, i32 0
  store i64 2, i64* %_CArr_elem_0132
  %_CArr_elem_1140 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array126, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array131, { i64, [0 x i64] }** %_CArr_elem_1140
  %_raw_array127 = call i64* @oat_alloc_array(i64 1)
  %_array128 = bitcast i64* %_raw_array127 to { i64, [0 x i64] }*
  %_CArr_elem_0129 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array128, i32 0, i32 1, i32 0
  store i64 1, i64* %_CArr_elem_0129
  %_CArr_elem_0139 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array126, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array128, { i64, [0 x i64] }** %_CArr_elem_0139
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array126, { i64, [0 x { i64, [0 x i64] }*] }** %_x124
  store i64 0, i64* %_ans143
  store i64 0, i64* %_i144
  br label %_start147
_start147:
  %_id146 = load i64, i64* %_i144
  %_bop145 = icmp slt i64 %_id146, 4
  br i1 %_bop145, label %_body148, label %_end149
_body148:
  %_id151 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_x124
  %_id152 = load i64, i64* %_i144
  %_index_ptr153 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id151, i32 0, i32 1, i64 %_id152
  %_idx_tmp154 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr153
  %_index_ptr155 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_idx_tmp154, i32 0, i32 1, i32 0
  %_idx_tmp157 = load i64, i64* %_index_ptr155
  %_id156 = load i64, i64* %_ans143
  %_bop150 = sub i64 %_idx_tmp157, %_id156
  store i64 %_bop150, i64* %_ans143
  %_id159 = load i64, i64* %_i144
  %_bop158 = add i64 %_id159, 1
  store i64 %_bop158, i64* %_i144
  br label %_start147
_end149:
  %_uop163 = xor i64 5, -1
  %_bop162 = and i64 5, %_uop163
  %_bop161 = or i64 %_bop162, 0
  %_bop160 = icmp ne i64 %_bop161, 0
  br i1 %_bop160, label %_then164, label %_else165
_then164:
  %_id167 = load i64, i64* %_ans143
  ret i64 %_id167
_else165:
  %_id169 = load i64, i64* %_ans143
  %_uop168 = sub i64 0, %_id169
  ret i64 %_uop168
_end166:
  %_id170 = load i64, i64* %_ans143
  ret i64 %_id170
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
