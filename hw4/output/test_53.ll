; generated from: oatprograms/xor_shift.oat
target triple = "x86_64-unknown-linux"
@_str6063 = global [2 x i8] c"
\00"

define i64 @xor(i64 %x, i64 %y) {
  %_x6148 = alloca i64
  store i64 %x, i64* %_x6148
  %_y6149 = alloca i64
  store i64 %y, i64* %_y6149
  %_6151 = xor i64 -1, %_6152
  %_6154 = load i64, i64* %_x6148
  %_6156 = load i64, i64* %_y6149
  %_6152 = and i64 %_6154, %_6156
  %_6159 = load i64, i64* %_x6148
  %_6161 = load i64, i64* %_y6149
  %_6157 = or i64 %_6159, %_6161
  %_6150 = and i64 %_6151, %_6157
  ret i64 %_6150
}

define i64 @xor_shift_plus({ i64, [0 x i64] }* %s) {
  %_s6074 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %s, { i64, [0 x i64] }** %_s6074
  %_x6075 = alloca i64*
  %_y6082 = alloca i64*
  store i64* %_index_ptr6080, i64** %_x6075
  %_6078 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s6074
  %_index_ptr6080 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_6078, i32 0, i32 1, i32 0
  store i64* %_index_ptr6087, i64** %_y6082
  %_6085 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s6074
  %_index_ptr6087 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_6085, i32 0, i32 1, i32 1
  %_6091 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s6074
  %_index_ptr6093 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_6091, i32 0, i32 1, i32 0
  %_6096 = load i64*, i64** %_y6082
  store i64* %_6096, i64** %_index_ptr6093
  %_6101 = load i64*, i64** %_x6075
  %_6102 = shl i64 %_6106, 23
  %_6106 = load i64, i64* %_6104
  %_6104 = load i64*, i64** %_x6075
  %_retval6107 = call i64 @xor(i64* %_6101, i64 %_6102)
  store i64* %_retval6107, i64** %_x6075
  %_6113 = lshr i64 %_retval6107, 17
  %_retval6117 = call i64 @xor(i64 %_retval6107, i64 %_6113)
  store i64 %_retval6117, i64* @x
  %_retval6131 = call i64 @xor(i64* %_6125, i64 %_6126)
  %_6128 = load i64*, i64** %_y6082
  %_6130 = load i64, i64* %_6128
  %_6126 = lshr i64 %_6130, 26
  %_6125 = load i64*, i64** %_y6082
  %_retval6132 = call i64 @xor(i64 %_retval6117, i64 %_retval6131)
  store i64 %_retval6132, i64* @x
  %_6135 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s6074
  %_index_ptr6137 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_6135, i32 0, i32 1, i32 1
  store i64 %_retval6132, i64* %_index_ptr6137
  %_6145 = load i64*, i64** %_y6082
  %_6146 = load i64, i64* %_6145
  %_6141 = add i64 %_retval6132, %_6146
  ret i64 %_6141
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc6020 = alloca i64
  store i64 %argc, i64* %_argc6020
  %_argv6021 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv6021
  %_seed6022 = alloca { i64, [0 x i64] }*
  %_i6027 = alloca i64
  store { i64, [0 x i64] }* %_array6026, { i64, [0 x i64] }** %_seed6022
  %_raw_array6025 = call i64* @oat_alloc_array(i64 2)
  %_array6026 = bitcast i64* %_raw_array6025 to { i64, [0 x i64] }*
  store i64 0, i64* %_i6027
  br label %_start6033
_start6033:
  %_6031 = load i64, i64* %_i6027
  %_6029 = icmp slt i64 %_6031, 2
  br i1 %_6029, label %_body6034, label %_end6035
_body6034:
  %_6038 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_seed6022
  %_6040 = load i64, i64* %_i6027
  %_index_ptr6041 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_6038, i32 0, i32 1, i64 %_6040
  %_6047 = load i64, i64* %_i6027
  %_6045 = add i64 %_6047, 1
  %_6043 = mul i64 100, %_6045
  store i64 %_6043, i64* %_index_ptr6041
  %_6053 = load i64, i64* %_i6027
  %_6051 = add i64 %_6053, 1
  store i64 %_6051, i64* %_i6027
  br label %_start6033
_end6035:
  %_retval6059 = call i64 @xor_shift_plus({ i64, [0 x i64] }* %_6058)
  %_6058 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_seed6022
  call void @print_int(i64 %_retval6059)
  %_6064 = getelementptr [2 x i8], [2 x i8]* @_str6063, i32 0, i32 0
  call void @print_string(i8* %_6064)
  %_retval6070 = call i64 @xor_shift_plus({ i64, [0 x i64] }* %_6069)
  %_6069 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_seed6022
  call void @print_int(i64 %_retval6070)
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
