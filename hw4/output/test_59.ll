; generated from: oatprograms/lcs.oat
target triple = "x86_64-unknown-linux"
@buf = global { i64, [1 x i64] } { i64 1, [1 x i64] [ i64 0 ] }
@_8320 = global i64 0
@_str_tmp8190 = global [1 x i8] c"\00"
@_str_tmp8152 = global [7 x i8] c"TOMATO\00"
@_str_tmp8156 = global [8 x i8] c"ORATING\00"

define i8* @lcs(i64 %i, i64 %j, i8* %a, i8* %b) {
  %_i8169 = alloca i64
  store i64 %i, i64* %_i8169
  %_j8170 = alloca i64
  store i64 %j, i64* %_j8170
  %_a8171 = alloca i8*
  store i8* %a, i8** %_a8171
  %_b8172 = alloca i8*
  store i8* %b, i8** %_b8172
  %_a_chars8192 = alloca { i64, [0 x i64] }*
  %_b_chars8197 = alloca { i64, [0 x i64] }*
  %_last_char_a8202 = alloca i64*
  %_last_char_b8209 = alloca i64*
  %_prev_lcs8227 = alloca i8*
  %_next_char8255 = alloca i8*
  %_left_lcs8267 = alloca i8*
  %_right_lcs8281 = alloca i8*
  %_left_len8295 = alloca i64
  %_right_len8300 = alloca i64
  %_id8178 = load i64, i64* %_i8169
  %_bop8176 = icmp slt i64 %_id8178, 0
  %_id8183 = load i64, i64* %_j8170
  %_bop8181 = icmp slt i64 %_id8183, 0
  %_bop8174 = or i1 %_bop8176, %_bop8181
  br i1 %_bop8174, label %_then8185, label %_else8186
_then8185:
  %_cstr8189 = getelementptr [1 x i8], [1 x i8]* @_str_tmp8190, i32 0, i32 0
  %_8191 = load i8, i8* %_cstr8189
  ret i8* %_8191
_else8186:
  br label %_end8187
_end8187:
  store { i64, [0 x i64] }* %_Call_retval8196, { i64, [0 x i64] }** %_a_chars8192
  %_id8195 = load i8*, i8** %_a8171
  %_Call_retval8196 = call { i64, [0 x i64] }* @array_of_string(i8* %_id8195)
  store { i64, [0 x i64] }* %_Call_retval8201, { i64, [0 x i64] }** %_b_chars8197
  %_id8200 = load i8*, i8** %_b8172
  %_Call_retval8201 = call { i64, [0 x i64] }* @array_of_string(i8* %_id8200)
  store i64* %_index_ptr8208, i64** %_last_char_a8202
  %_id8205 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a_chars8192
  %_id8207 = load i64, i64* %_i8169
  %_index_ptr8208 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id8205, i32 0, i32 1, i64 %_id8207
  store i64* %_index_ptr8215, i64** %_last_char_b8209
  %_id8212 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b_chars8197
  %_id8214 = load i64, i64* %_j8170
  %_index_ptr8215 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id8212, i32 0, i32 1, i64 %_id8214
  %_id8219 = load i64*, i64** %_last_char_a8202
  %_8222 = load i64, i64* %_id8219
  %_id8221 = load i64*, i64** %_last_char_b8209
  %_8223 = load i64, i64* %_id8221
  %_bop8217 = icmp eq i64 %_8222, %_8223
  br i1 %_bop8217, label %_then8224, label %_else8225
_then8224:
  store i8* %_Call_retval8243, i8** %_prev_lcs8227
  %_bop8230 = sub i64 %_id8232, 1
  %_id8232 = load i64, i64* %_i8169
  %_bop8235 = sub i64 %_id8237, 1
  %_id8237 = load i64, i64* %_j8170
  %_id8240 = load i8*, i8** %_a8171
  %_id8242 = load i8*, i8** %_b8172
  %_Call_retval8243 = call i8* @lcs(i64 %_bop8230, i64 %_bop8235, i8* %_id8240, i8* %_id8242)
  %_id8246 = load { i64, [1 x i64] }, { i64, [1 x i64] }* @buf
  %_index_ptr8248 = getelementptr { i64, [1 x i64] }*, { i64, [1 x i64] }** %_id8246, i32 0, i32 1, i32 0
  %_id8251 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a_chars8192
  %_id8253 = load i64, i64* %_i8169
  %_index_ptr8254 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id8251, i32 0, i32 1, i64 %_id8253
  store i64* %_index_ptr8254, i64** %_index_ptr8248
  store i8* %_Call_retval8259, i8** %_next_char8255
  %_id8258 = load { i64, [1 x i64] }, { i64, [1 x i64] }* @buf
  %_Call_retval8259 = call i8* @string_of_array({ i64, [1 x i64] }** %_id8258)
  %_id8262 = load i8*, i8** %_prev_lcs8227
  %_id8264 = load i8*, i8** %_next_char8255
  %_Call_retval8265 = call i8* @string_cat(i8* %_id8262, i8* %_id8264)
  %_8266 = load i8, i8* %_Call_retval8265
  ret i8* %_8266
_else8225:
  br label %_end8226
_end8226:
  store i8* %_Call_retval8280, i8** %_left_lcs8267
  %_id8270 = load i64, i64* %_i8169
  %_bop8272 = sub i64 %_id8274, 1
  %_id8274 = load i64, i64* %_j8170
  %_id8277 = load i8*, i8** %_a8171
  %_id8279 = load i8*, i8** %_b8172
  %_Call_retval8280 = call i8* @lcs(i64 %_id8270, i64 %_bop8272, i8* %_id8277, i8* %_id8279)
  store i8* %_Call_retval8294, i8** %_right_lcs8281
  %_bop8284 = sub i64 %_id8286, 1
  %_id8286 = load i64, i64* %_i8169
  %_id8289 = load i64, i64* %_j8170
  %_id8291 = load i8*, i8** %_a8171
  %_id8293 = load i8*, i8** %_b8172
  %_Call_retval8294 = call i8* @lcs(i64 %_bop8284, i64 %_id8289, i8* %_id8291, i8* %_id8293)
  store i64 %_Call_retval8299, i64* %_left_len8295
  %_id8298 = load i8*, i8** %_left_lcs8267
  %_Call_retval8299 = call i64 @length_of_string(i8* %_id8298)
  store i64 %_Call_retval8304, i64* %_right_len8300
  %_id8303 = load i8*, i8** %_right_lcs8281
  %_Call_retval8304 = call i64 @length_of_string(i8* %_id8303)
  %_id8308 = load i64, i64* %_left_len8295
  %_id8310 = load i64, i64* %_right_len8300
  %_bop8306 = icmp slt i64 %_id8308, %_id8310
  br i1 %_bop8306, label %_then8311, label %_else8312
_then8311:
  %_id8315 = load i8*, i8** %_right_lcs8281
  %_8316 = load i8, i8* %_id8315
  ret i8* %_8316
_else8312:
  %_id8318 = load i8*, i8** %_left_lcs8267
  %_8319 = load i8, i8* %_id8318
  ret i8* %_8319
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc8147 = alloca i64
  store i64 %argc, i64* %_argc8147
  %_argv8148 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv8148
  %_tomato8149 = alloca i8*
  %_orating8153 = alloca i8*
  store i8* %_cstr8151, i8** %_tomato8149
  %_cstr8151 = getelementptr [7 x i8], [7 x i8]* @_str_tmp8152, i32 0, i32 0
  store i8* %_cstr8155, i8** %_orating8153
  %_cstr8155 = getelementptr [8 x i8], [8 x i8]* @_str_tmp8156, i32 0, i32 0
  %_Call_retval8165 = call i8* @lcs(i64 5, i64 6, i8* %_id8162, i8* %_id8164)
  %_id8164 = load i8*, i8** %_orating8153
  %_id8162 = load i8*, i8** %_tomato8149
  call void @print_string(i8* %_Call_retval8165)
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
