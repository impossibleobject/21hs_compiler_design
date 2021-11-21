; generated from: oatprograms/fibo.oat
target triple = "x86_64-unknown-linux"
define i64 @fibR(i64 %n) {
  %_n3281 = alloca i64
  store i64 %n, i64* %_n3281
  %_id3283 = load i64, i64* %_n3281
  %_bop3282 = icmp eq i64 %_id3283, 0
  br i1 %_bop3282, label %_then3284, label %_else3285
_then3284:
  ret i64 0
_else3285:
  br label %_end3286
_end3286:
  %_id3289 = load i64, i64* %_n3281
  %_bop3288 = icmp eq i64 %_id3289, 1
  br i1 %_bop3288, label %_then3290, label %_else3291
_then3290:
  ret i64 1
_else3291:
  br label %_end3292
_end3292:
  %_bop3295 = sub i64 %_id3296, 1
  %_id3296 = load i64, i64* %_n3281
  %_Call_retval3297 = call i64 @fibR(i64 %_bop3295)
  %_bop3298 = sub i64 %_id3299, 2
  %_id3299 = load i64, i64* %_n3281
  %_Call_retval3300 = call i64 @fibR(i64 %_bop3298)
  %_bop3294 = add i64 %_Call_retval3297, %_Call_retval3300
  ret i64 %_bop3294
}

define i64 @fibI(i64 %n) {
  %_n3243 = alloca i64
  store i64 %n, i64* %_n3243
  %_a3244 = alloca i64
  %_b3245 = alloca i64
  %_old3266 = alloca i64
  store i64 0, i64* %_a3244
  store i64 1, i64* %_b3245
  %_id3247 = load i64, i64* %_n3243
  %_bop3246 = icmp eq i64 %_id3247, 0
  br i1 %_bop3246, label %_then3248, label %_else3249
_then3248:
  %_id3251 = load i64, i64* %_a3244
  ret i64 %_id3251
_else3249:
  br label %_end3250
_end3250:
  %_id3254 = load i64, i64* %_n3243
  %_bop3253 = icmp eq i64 %_id3254, 1
  br i1 %_bop3253, label %_then3255, label %_else3256
_then3255:
  %_id3258 = load i64, i64* %_b3245
  ret i64 %_id3258
_else3256:
  br label %_end3257
_end3257:
  br label %_start3263
_start3263:
  %_id3262 = load i64, i64* %_n3243
  %_bop3261 = sub i64 %_id3262, 2
  %_bop3260 = icmp sgt i64 %_bop3261, 0
  br i1 %_bop3260, label %_body3264, label %_end3265
_body3264:
  %_id3267 = load i64, i64* %_b3245
  store i64 %_id3267, i64* %_old3266
  %_id3270 = load i64, i64* %_b3245
  %_id3271 = load i64, i64* %_a3244
  %_bop3269 = add i64 %_id3270, %_id3271
  store i64 %_bop3269, i64* %_b3245
  %_id3273 = load i64, i64* %_old3266
  store i64 %_id3273, i64* %_a3244
  %_id3276 = load i64, i64* %_n3243
  %_bop3275 = sub i64 %_id3276, 1
  store i64 %_bop3275, i64* %_n3243
  br label %_start3263
_end3265:
  %_id3278 = load i64, i64* %_a3244
  %_id3279 = load i64, i64* %_b3245
  %_bop3277 = add i64 %_id3278, %_id3279
  ret i64 %_bop3277
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3229 = alloca i64
  store i64 %argc, i64* %_argc3229
  %_argv3230 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3230
  %_val3231 = alloca i64
  store i64 1, i64* %_val3231
  %_Call_retval3234 = call i64 @fibR(i64 12)
  %_bop3233 = icmp eq i64 %_Call_retval3234, 144
  %_Call_retval3236 = call i64 @fibI(i64 12)
  %_bop3235 = icmp eq i64 %_Call_retval3236, 144
  %_bop3232 = and i1 %_bop3233, %_bop3235
  br i1 %_bop3232, label %_then3237, label %_else3238
_then3237:
  store i64 0, i64* %_val3231
  br label %_end3239
_else3238:
  br label %_end3239
_end3239:
  %_id3241 = load i64, i64* %_val3231
  ret i64 %_id3241
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
