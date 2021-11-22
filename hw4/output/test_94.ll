; generated from: oatprograms/sieve.oat
target triple = "x86_64-unknown-linux"
define i64 @sieve(i64 %n) {
  %arr = alloca { i64, [0 x i1] }*
  %i = alloca i64
  %i = alloca i64
  %j = alloca i64
  %count = alloca i64
  %i = alloca i64
  %_n3204 = alloca i64
  store i64 %n, i64* %_n3204
  %_id3205 = load i64, i64* %_n3204
  %_raw_array3206 = call i64* @oat_alloc_array(i64 %_id3205)
  %_array3207 = bitcast i64* %_raw_array3206 to { i64, [0 x i1] }*
  store { i64, [0 x i1] }* %_array3207, { i64, [0 x i1] }** %arr
  store i64 0, i64* %i
  br label %_start3211
_start3211:
  %_id3209 = load i64, i64* %i
  %_id3210 = load i64, i64* %_n3204
  %_bop3208 = icmp slt i64 %_id3209, %_id3210
  br i1 %_bop3208, label %_body3212, label %_end3213
_body3212:
  %_id3214 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %arr
  %_id3215 = load i64, i64* %i
  %_index_ptr3216 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id3214, i32 0, i32 1, i64 %_id3215
  store i1 1, i1* %_index_ptr3216
  %_id3218 = load i64, i64* %i
  %_bop3217 = add i64 %_id3218, 1
  store i64 %_bop3217, i64* %i
  br label %_start3211
_end3213:
  %_id3219 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %arr
  %_index_ptr3220 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id3219, i32 0, i32 1, i32 0
  store i1 0, i1* %_index_ptr3220
  %_id3221 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %arr
  %_index_ptr3222 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id3221, i32 0, i32 1, i32 1
  store i1 0, i1* %_index_ptr3222
  store i64 0, i64* %i
  br label %_start3226
_start3226:
  %_id3224 = load i64, i64* %i
  %_id3225 = load i64, i64* %_n3204
  %_bop3223 = icmp slt i64 %_id3224, %_id3225
  br i1 %_bop3223, label %_body3227, label %_end3228
_body3227:
  %_id3229 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %arr
  %_id3230 = load i64, i64* %i
  %_index_ptr3231 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id3229, i32 0, i32 1, i64 %_id3230
  %_idx_tmp3232 = load i1, i1* %_index_ptr3231
  br i1 %_idx_tmp3232, label %_then3233, label %_else3234
_then3233:
  %_id3237 = load i64, i64* %i
  %_bop3236 = mul i64 %_id3237, 2
  store i64 %_bop3236, i64* %j
  br label %_start3241
_start3241:
  %_id3239 = load i64, i64* %j
  %_id3240 = load i64, i64* %_n3204
  %_bop3238 = icmp slt i64 %_id3239, %_id3240
  br i1 %_bop3238, label %_body3242, label %_end3243
_body3242:
  %_id3244 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %arr
  %_id3245 = load i64, i64* %j
  %_index_ptr3246 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id3244, i32 0, i32 1, i64 %_id3245
  store i1 0, i1* %_index_ptr3246
  %_id3248 = load i64, i64* %j
  %_id3249 = load i64, i64* %i
  %_bop3247 = add i64 %_id3248, %_id3249
  store i64 %_bop3247, i64* %j
  br label %_start3241
_end3243:
  br label %_end3235
_else3234:
  br label %_end3235
_end3235:
  %_id3251 = load i64, i64* %i
  %_bop3250 = add i64 %_id3251, 1
  store i64 %_bop3250, i64* %i
  br label %_start3226
_end3228:
  store i64 0, i64* %count
  store i64 0, i64* %i
  br label %_start3255
_start3255:
  %_id3253 = load i64, i64* %i
  %_id3254 = load i64, i64* %_n3204
  %_bop3252 = icmp slt i64 %_id3253, %_id3254
  br i1 %_bop3252, label %_body3256, label %_end3257
_body3256:
  %_id3258 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %arr
  %_id3259 = load i64, i64* %i
  %_index_ptr3260 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id3258, i32 0, i32 1, i64 %_id3259
  %_idx_tmp3261 = load i1, i1* %_index_ptr3260
  br i1 %_idx_tmp3261, label %_then3262, label %_else3263
_then3262:
  %_id3266 = load i64, i64* %count
  %_bop3265 = add i64 %_id3266, 1
  store i64 %_bop3265, i64* %count
  br label %_end3264
_else3263:
  br label %_end3264
_end3264:
  %_id3268 = load i64, i64* %i
  %_bop3267 = add i64 %_id3268, 1
  store i64 %_bop3267, i64* %i
  br label %_start3255
_end3257:
  %_id3269 = load i64, i64* %count
  ret i64 %_id3269
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %n = alloca i64
  %_argc3200 = alloca i64
  store i64 %argc, i64* %_argc3200
  %_argv3201 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3201
  store i64 100, i64* %n
  %_id3202 = load i64, i64* %n
  %_Call_retval3203 = call i64 @sieve(i64 %_id3202)
  ret i64 %_Call_retval3203
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
