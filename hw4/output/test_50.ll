; generated from: oatprograms/xor_shift.oat
target triple = "x86_64-unknown-linux"
@_cstr_glb2954 = global [2 x i8] c"
\00"

define i64 @xor(i64 %x, i64 %y) {
  %_x2997 = alloca i64
  store i64 %x, i64* %_x2997
  %_y2998 = alloca i64
  store i64 %y, i64* %_y2998
  %_uop3000 = xor i64 -1, %_bop3001
  %_id3002 = load i64, i64* %_x2997
  %_id3003 = load i64, i64* %_y2998
  %_bop3001 = and i64 %_id3002, %_id3003
  %_id3005 = load i64, i64* %_x2997
  %_id3006 = load i64, i64* %_y2998
  %_bop3004 = or i64 %_id3005, %_id3006
  %_bop2999 = and i64 %_uop3000, %_bop3004
  ret i64 %_bop2999
}

define i64 @xor_shift_plus({ i64, [0 x i64] }* %s) {
  %_s2960 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %s, { i64, [0 x i64] }** %_s2960
  %_x2961 = alloca i64*
  %_y2964 = alloca i64*
  %_id2962 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s2960
  %_index_ptr2963 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2962, i32 0, i32 1, i32 0
  store i64* %_index_ptr2963, i64** %_x2961
  %_id2965 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s2960
  %_index_ptr2966 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2965, i32 0, i32 1, i32 1
  store i64* %_index_ptr2966, i64** %_y2964
  %_id2967 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s2960
  %_index_ptr2968 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2967, i32 0, i32 1, i32 0
  %_id2969 = load i64*, i64** %_y2964
  store i64* %_id2969, i64** %_index_ptr2968
  %_id2971 = load i64*, i64** %_x2961
  %_bop2972 = shl i64 %_2974, 23
  %_2974 = load i64, i64* %_id2973
  %_id2973 = load i64*, i64** %_x2961
  %_Call_retval2975 = call i64 @xor(i64* %_id2971, i64 %_bop2972)
  store i64* %_Call_retval2975, i64** %_x2961
  %_bop2978 = lshr i64 %_Call_retval2975, 17
  %_Call_retval2980 = call i64 @xor(i64 %_Call_retval2975, i64 %_bop2978)
  store i64 %_Call_retval2980, i64* @x
  %_Call_retval2987 = call i64 @xor(i64* %_id2983, i64 %_bop2984)
  %_id2985 = load i64*, i64** %_y2964
  %_2986 = load i64, i64* %_id2985
  %_bop2984 = lshr i64 %_2986, 26
  %_id2983 = load i64*, i64** %_y2964
  %_Call_retval2988 = call i64 @xor(i64 %_Call_retval2980, i64 %_Call_retval2987)
  store i64 %_Call_retval2988, i64* @x
  %_id2989 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s2960
  %_index_ptr2990 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2989, i32 0, i32 1, i32 1
  store i64 %_Call_retval2988, i64* %_index_ptr2990
  %_id2994 = load i64*, i64** %_y2964
  %_2995 = load i64, i64* %_id2994
  %_bop2992 = add i64 %_Call_retval2988, %_2995
  ret i64 %_bop2992
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2930 = alloca i64
  store i64 %argc, i64* %_argc2930
  %_argv2931 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2931
  %_seed2932 = alloca { i64, [0 x i64] }*
  %_i2935 = alloca i64
  %_raw_array2933 = call i64* @oat_alloc_array(i64 2)
  %_array2934 = bitcast i64* %_raw_array2933 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2934, { i64, [0 x i64] }** %_seed2932
  store i64 0, i64* %_i2935
  br label %_start2938
_start2938:
  %_id2937 = load i64, i64* %_i2935
  %_bop2936 = icmp slt i64 %_id2937, 2
  br i1 %_bop2936, label %_body2939, label %_end2940
_body2939:
  %_id2941 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_seed2932
  %_id2942 = load i64, i64* %_i2935
  %_index_ptr2943 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2941, i32 0, i32 1, i64 %_id2942
  %_id2946 = load i64, i64* %_i2935
  %_bop2945 = add i64 %_id2946, 1
  %_bop2944 = mul i64 100, %_bop2945
  store i64 %_bop2944, i64* %_index_ptr2943
  %_id2949 = load i64, i64* %_i2935
  %_bop2948 = add i64 %_id2949, 1
  store i64 %_bop2948, i64* %_i2935
  br label %_start2938
_end2940:
  %_Call_retval2951 = call i64 @xor_shift_plus({ i64, [0 x i64] }* %_id2950)
  %_id2950 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_seed2932
  call void @print_int(i64 %_Call_retval2951)
  %_cstr_loc2953 = getelementptr [2 x i8], [2 x i8]* @_cstr_glb2954, i32 0, i32 0
  call void @print_string(i8* %_cstr_loc2953)
  %_Call_retval2957 = call i64 @xor_shift_plus({ i64, [0 x i64] }* %_id2956)
  %_id2956 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_seed2932
  call void @print_int(i64 %_Call_retval2957)
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
