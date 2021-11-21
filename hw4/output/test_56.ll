; generated from: oatprograms/lfsr.oat
target triple = "x86_64-unknown-linux"
@lfsr_iterations = global i64 5
@lfsr_length = global i64 4
@lfsr_init_values = global { i64, [4 x i1] } { i64 4, [4 x i1] [ i1 1, i1 0, i1 1, i1 0 ] }
@_7258 = global i1 1
@_7259 = global i1 0
@_7260 = global i1 1
@_7261 = global i1 0
@_str7235 = global [2 x i8] c"T\00"
@_str7239 = global [2 x i8] c"F\00"
@_str7188 = global [2 x i8] c" \00"

define i1 @xor(i1 %x, i1 %y) {
  %_x7242 = alloca i1
  store i1 %x, i1* %_x7242
  %_y7243 = alloca i1
  store i1 %y, i1* %_y7243
  %_7247 = load i1, i1* %_x7242
  %_7248 = icmp eq i1 0, %_7250
  %_7250 = load i1, i1* %_y7243
  %_7245 = and i1 %_7247, %_7248
  %_7252 = icmp eq i1 0, %_7254
  %_7254 = load i1, i1* %_x7242
  %_7256 = load i1, i1* %_y7243
  %_7251 = and i1 %_7252, %_7256
  %_7244 = or i1 %_7245, %_7251
  ret i1 %_7244
}

define i8* @string_of_bool(i1 %b) {
  %_b7228 = alloca i1
  store i1 %b, i1* %_b7228
  %_7230 = load i1, i1* %_b7228
  br i1 %_7230, label %_then7231, label %_else7232
_then7231:
  %_7236 = getelementptr [2 x i8], [2 x i8]* @_str7235, i32 0, i32 0
  %_7237 = load i8, i8* %_7236
  ret i8* %_7237
_else7232:
  %_7240 = getelementptr [2 x i8], [2 x i8]* @_str7239, i32 0, i32 0
  %_7241 = load i8, i8* %_7240
  ret i8* %_7241
}

define void @print_lfsr({ i64, [0 x i1] }* %lfsr_register, i64 %len) {
  %_lfsr_register7199 = alloca { i64, [0 x i1] }*
  store { i64, [0 x i1] }* %lfsr_register, { i64, [0 x i1] }** %_lfsr_register7199
  %_len7200 = alloca i64
  store i64 %len, i64* %_len7200
  %_i7201 = alloca i64
  store i64 0, i64* %_i7201
  br label %_start7208
_start7208:
  %_7205 = load i64, i64* %_i7201
  %_7207 = load i64, i64* %_len7200
  %_7203 = icmp slt i64 %_7205, %_7207
  br i1 %_7203, label %_body7209, label %_end7210
_body7209:
  %_retval7220 = call i8* @string_of_bool(i1* %_index_ptr7218)
  %_7215 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register7199
  %_7217 = load i64, i64* %_i7201
  %_index_ptr7218 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_7215, i32 0, i32 1, i64 %_7217
  call void @print_string(i8* %_retval7220)
  %_7226 = load i64, i64* %_i7201
  %_7224 = add i64 %_7226, 1
  store i64 %_7224, i64* %_i7201
  br label %_start7208
_end7210:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc7063 = alloca i64
  store i64 %argc, i64* %_argc7063
  %_argv7064 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv7064
  %_lfsr_register7065 = alloca { i64, [0 x i1] }*
  %_i7071 = alloca i64
  %_i7101 = alloca i64
  %_new_first7111 = alloca i1
  %_j7132 = alloca i64
  store { i64, [0 x i1] }* %_array7070, { i64, [0 x i1] }** %_lfsr_register7065
  %_raw_array7069 = call i64* @oat_alloc_array(i64 4)
  %_array7070 = bitcast i64* %_raw_array7069 to { i64, [0 x i1] }*
  store i64 0, i64* %_i7071
  br label %_start7078
_start7078:
  %_7075 = load i64, i64* %_i7071
  %_7073 = icmp slt i64 %_7075, 4
  br i1 %_7073, label %_body7079, label %_end7080
_body7079:
  %_7083 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register7065
  %_7085 = load i64, i64* %_i7071
  %_index_ptr7086 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_7083, i32 0, i32 1, i64 %_7085
  %_7090 = load { i64, [4 x i1] }, { i64, [4 x i1] }* @lfsr_init_values
  %_7092 = load i64, i64* %_i7071
  %_index_ptr7093 = getelementptr { i64, [4 x i1] }*, { i64, [4 x i1] }** %_7090, i32 0, i32 1, i64 %_7092
  store i1* %_index_ptr7093, i1** %_index_ptr7086
  %_7099 = load i64, i64* %_i7071
  %_7097 = add i64 %_7099, 1
  store i64 %_7097, i64* %_i7071
  br label %_start7078
_end7080:
  store i64 0, i64* %_i7101
  br label %_start7108
_start7108:
  %_7105 = load i64, i64* %_i7101
  %_7103 = icmp slt i64 %_7105, 5
  br i1 %_7103, label %_body7109, label %_end7110
_body7109:
  store i1 %_retval7131, i1* %_new_first7111
  %_index_ptr7120 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_7115, i32 0, i32 1, i64 %_7116
  %_7116 = sub i64 4, 1
  %_7115 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register7065
  %_index_ptr7129 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_7124, i32 0, i32 1, i64 %_7125
  %_7125 = sub i64 4, 2
  %_7124 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register7065
  %_retval7131 = call i1 @xor(i1* %_index_ptr7120, i1* %_index_ptr7129)
  store i64 %_7133, i64* %_j7132
  %_7133 = sub i64 4, 1
  br label %_start7141
_start7141:
  %_7139 = load i64, i64* %_j7132
  %_7137 = icmp sgt i64 %_7139, 0
  br i1 %_7137, label %_body7142, label %_end7143
_body7142:
  %_7146 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register7065
  %_7148 = load i64, i64* %_j7132
  %_index_ptr7149 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_7146, i32 0, i32 1, i64 %_7148
  %_7153 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register7065
  %_7156 = load i64, i64* %_j7132
  %_7154 = sub i64 %_7156, 1
  %_index_ptr7158 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_7153, i32 0, i32 1, i64 %_7154
  store i1* %_index_ptr7158, i1** %_index_ptr7149
  %_7164 = load i64, i64* %_j7132
  %_7162 = sub i64 %_7164, 1
  store i64 %_7162, i64* %_j7132
  br label %_start7141
_end7143:
  %_7168 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register7065
  %_index_ptr7170 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_7168, i32 0, i32 1, i32 0
  %_7173 = load i1, i1* %_new_first7111
  store i1 %_7173, i1* %_index_ptr7170
  %_7178 = load i64, i64* %_i7101
  %_7176 = add i64 %_7178, 1
  store i64 %_7176, i64* %_i7101
  br label %_start7108
_end7110:
  %_7182 = load { i64, [4 x i1] }, { i64, [4 x i1] }* @lfsr_init_values
  call void @print_lfsr({ i64, [4 x i1] }** %_7182, i64 4)
  %_7189 = getelementptr [2 x i8], [2 x i8]* @_str7188, i32 0, i32 0
  call void @print_string(i8* %_7189)
  %_7193 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register7065
  call void @print_lfsr({ i64, [0 x i1] }* %_7193, i64 4)
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
