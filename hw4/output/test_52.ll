; generated from: oatprograms/binary_search.oat
target triple = "x86_64-unknown-linux"
@_cstr_glb3205 = global [9 x i8] c"Correct!\00"

define i64 @euclid_division(i64 %numerator, i64 %denominator) {
  %_numerator3252 = alloca i64
  store i64 %numerator, i64* %_numerator3252
  %_denominator3253 = alloca i64
  store i64 %denominator, i64* %_denominator3253
  %_quotient3264 = alloca i64
  %_remainder3265 = alloca i64*
  %_id3255 = load i64*, i64** %_denominator3253
  %_bop3254 = icmp slt i64 %_id3255, 0
  br i1 %_bop3254, label %_then3256, label %_else3257
_then3256:
  %_id3260 = load i64*, i64** %_numerator3252
  %_uop3261 = sub i64* 0, %_id3262
  %_id3262 = load i64*, i64** %_denominator3253
  %_Call_retval3263 = call i64 @euclid_division(i64* %_id3260, i64* %_uop3261)
  %_uop3259 = sub i64 0, %_Call_retval3263
  ret i64 %_uop3259
_else3257:
  br label %_end3258
_end3258:
  store i64 0, i64* %_quotient3264
  %_id3266 = load i64*, i64** %_numerator3252
  store i64* %_id3266, i64** %_remainder3265
  %_id3268 = load i64*, i64** %_numerator3252
  %_bop3267 = icmp slt i64 %_id3268, 0
  br i1 %_bop3267, label %_then3269, label %_else3270
_then3269:
  %_id3273 = load i64*, i64** %_numerator3252
  %_uop3272 = sub i64* 0, %_id3273
  store i64* %_uop3272, i64** %_remainder3265
  br label %_start3277
_start3277:
  %_id3275 = load i64*, i64** %_remainder3265
  %_id3276 = load i64*, i64** %_denominator3253
  %_bop3274 = icmp sge i64 %_id3275, %_id3276
  br i1 %_bop3274, label %_body3278, label %_end3279
_body3278:
  %_id3281 = load i64, i64* %_quotient3264
  %_bop3280 = add i64 %_id3281, 1
  store i64 %_bop3280, i64* %_quotient3264
  %_id3283 = load i64*, i64** %_remainder3265
  %_id3284 = load i64*, i64** %_denominator3253
  %_bop3282 = sub i64 %_id3283, %_id3284
  store i64 %_bop3282, i64* %_remainder3265
  br label %_start3277
_end3279:
  %_id3286 = load i64*, i64** %_remainder3265
  %_bop3285 = icmp eq i64 %_id3286, 0
  br i1 %_bop3285, label %_then3287, label %_else3288
_then3287:
  %_id3291 = load i64, i64* %_quotient3264
  %_uop3290 = sub i64 0, %_id3291
  ret i64 %_uop3290
_else3288:
  %_id3294 = load i64, i64* %_quotient3264
  %_uop3293 = sub i64 0, %_id3294
  %_bop3292 = sub i64 %_uop3293, 1
  ret i64 %_bop3292
_end3289:
  br label %_end3271
_else3270:
  br label %_end3271
_end3271:
  br label %_start3298
_start3298:
  %_id3296 = load i64*, i64** %_remainder3265
  %_id3297 = load i64*, i64** %_denominator3253
  %_bop3295 = icmp sge i64 %_id3296, %_id3297
  br i1 %_bop3295, label %_body3299, label %_end3300
_body3299:
  %_id3302 = load i64, i64* %_quotient3264
  %_bop3301 = add i64 %_id3302, 1
  store i64 %_bop3301, i64* %_quotient3264
  %_id3304 = load i64*, i64** %_remainder3265
  %_id3305 = load i64*, i64** %_denominator3253
  %_bop3303 = sub i64 %_id3304, %_id3305
  store i64 %_bop3303, i64* %_remainder3265
  br label %_start3298
_end3300:
  %_id3306 = load i64, i64* %_quotient3264
  ret i64 %_id3306
}

define i1 @binary_search({ i64, [0 x i64] }* %input, i64 %key, i64 %min, i64 %max) {
  %_input3207 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %input, { i64, [0 x i64] }** %_input3207
  %_key3208 = alloca i64
  store i64 %key, i64* %_key3208
  %_min3209 = alloca i64
  store i64 %min, i64* %_min3209
  %_max3210 = alloca i64
  store i64 %max, i64* %_max3210
  %_midpt3217 = alloca i64
  %_id3212 = load i64*, i64** %_max3210
  %_id3213 = load i64*, i64** %_min3209
  %_bop3211 = icmp slt i64 %_id3212, %_id3213
  br i1 %_bop3211, label %_then3214, label %_else3215
_then3214:
  ret i1 0
_else3215:
  br label %_end3216
_end3216:
  %_bop3218 = add i64 %_id3219, %_id3220
  %_id3220 = load i64*, i64** %_min3209
  %_id3219 = load i64*, i64** %_max3210
  %_Call_retval3221 = call i64 @euclid_division(i64 %_bop3218, i64 2)
  store i64 %_Call_retval3221, i64* %_midpt3217
  %_id3223 = load { i64, [0 x i64] }**, { i64, [0 x i64] }*** %_input3207
  %_id3224 = load i64, i64* %_midpt3217
  %_index_ptr3225 = getelementptr { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id3223, i32 0, i32 0, i32 1, i64 %_id3224
  %_idx_tmp3227 = load i64, i64* %_index_ptr3225
  %_id3226 = load i64*, i64** %_key3208
  %_bop3222 = icmp sgt i64 %_idx_tmp3227, %_id3226
  br i1 %_bop3222, label %_then3228, label %_else3229
_then3228:
  %_id3231 = load { i64, [0 x i64] }**, { i64, [0 x i64] }*** %_input3207
  %_id3232 = load i64*, i64** %_key3208
  %_id3233 = load i64*, i64** %_min3209
  %_bop3234 = sub i64 %_id3235, 1
  %_id3235 = load i64, i64* %_midpt3217
  %_Call_retval3236 = call i1 @binary_search({ i64, [0 x i64] }** %_id3231, i64* %_id3232, i64* %_id3233, i64 %_bop3234)
  ret i1 %_Call_retval3236
_else3229:
  br label %_end3230
_end3230:
  %_id3238 = load { i64, [0 x i64] }**, { i64, [0 x i64] }*** %_input3207
  %_id3239 = load i64, i64* %_midpt3217
  %_index_ptr3240 = getelementptr { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id3238, i32 0, i32 0, i32 1, i64 %_id3239
  %_idx_tmp3242 = load i64, i64* %_index_ptr3240
  %_id3241 = load i64*, i64** %_key3208
  %_bop3237 = icmp slt i64 %_idx_tmp3242, %_id3241
  br i1 %_bop3237, label %_then3243, label %_else3244
_then3243:
  %_id3246 = load { i64, [0 x i64] }**, { i64, [0 x i64] }*** %_input3207
  %_id3247 = load i64*, i64** %_key3208
  %_bop3248 = add i64 %_id3249, 1
  %_id3249 = load i64, i64* %_midpt3217
  %_id3250 = load i64*, i64** %_max3210
  %_Call_retval3251 = call i1 @binary_search({ i64, [0 x i64] }** %_id3246, i64* %_id3247, i64 %_bop3248, i64* %_id3250)
  ret i1 %_Call_retval3251
_else3244:
  ret i1 1
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3168 = alloca i64
  store i64 %argc, i64* %_argc3168
  %_argv3169 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3169
  %_test_array3170 = alloca { i64, [0 x i64] }*
  %_i3173 = alloca i64
  %_even3187 = alloca i1
  %_odd3190 = alloca i1
  %_raw_array3171 = call i64* @oat_alloc_array(i64 100)
  %_array3172 = bitcast i64* %_raw_array3171 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3172, { i64, [0 x i64] }** %_test_array3170
  store i64 0, i64* %_i3173
  br label %_start3176
_start3176:
  %_id3175 = load i64, i64* %_i3173
  %_bop3174 = icmp slt i64 %_id3175, 100
  br i1 %_bop3174, label %_body3177, label %_end3178
_body3177:
  %_id3181 = load i64, i64* %_i3173
  %_bop3180 = mul i64 2, %_id3181
  %_bop3179 = add i64 %_bop3180, 1
  %_id3182 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_test_array3170
  %_id3183 = load i64, i64* %_i3173
  %_index_ptr3184 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3182, i32 0, i32 1, i64 %_id3183
  store i64 %_bop3179, i64* %_index_ptr3184
  %_id3186 = load i64, i64* %_i3173
  %_bop3185 = add i64 %_id3186, 1
  store i64 %_bop3185, i64* %_i3173
  br label %_start3176
_end3178:
  %_id3188 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_test_array3170
  %_Call_retval3189 = call i1 @binary_search({ i64, [0 x i64] }* %_id3188, i64 80, i64 0, i64 99)
  store i1 %_Call_retval3189, i1* %_even3187
  %_id3191 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_test_array3170
  %_Call_retval3192 = call i1 @binary_search({ i64, [0 x i64] }* %_id3191, i64 81, i64 0, i64 99)
  store i1 %_Call_retval3192, i1* %_odd3190
  %_id3196 = load i1, i1* %_even3187
  %_id3197 = load i1, i1* %_odd3190
  %_bop3195 = and i1 %_id3196, %_id3197
  %_uop3194 = icmp eq i1 0, %_bop3195
  %_id3199 = load i1, i1* %_even3187
  %_id3200 = load i1, i1* %_odd3190
  %_bop3198 = or i1 %_id3199, %_id3200
  %_bop3193 = and i1 %_uop3194, %_bop3198
  br i1 %_bop3193, label %_then3201, label %_else3202
_then3201:
  %_cstr_loc3204 = getelementptr [9 x i8], [9 x i8]* @_cstr_glb3205, i32 0, i32 0
  call void @print_string(i8* %_cstr_loc3204)
  br label %_end3203
_else3202:
  br label %_end3203
_end3203:
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
