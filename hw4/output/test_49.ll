; generated from: oatprograms/lib15.oat
target triple = "x86_64-unknown-linux"
define i8* @sub(i8* %str, i64 %start, i64 %len) {
  %_str4022 = alloca i8*
  store i8* %str, i8** %_str4022
  %_start4023 = alloca i64
  store i64 %start, i64* %_start4023
  %_len4024 = alloca i64
  store i64 %len, i64* %_len4024
  %_arr4025 = alloca { i64, [0 x i64] }*
  %_r4030 = alloca { i64, [0 x i64] }*
  %_i4036 = alloca i64
  store { i64, [0 x i64] }* %_retval4029, { i64, [0 x i64] }** %_arr4025
  %_4028 = load i8*, i8** %_str4022
  %_retval4029 = call { i64, [0 x i64] }* @array_of_string(i8* %_4028)
  store { i64, [0 x i64] }* %_array4035, { i64, [0 x i64] }** %_r4030
  %_4033 = load i64, i64* %_len4024
  %_raw_array4034 = call i64* @oat_alloc_array(i64 %_4033)
  %_array4035 = bitcast i64* %_raw_array4034 to { i64, [0 x i64] }*
  store i64 0, i64* %_i4036
  br label %_start4043
_start4043:
  %_4040 = load i64, i64* %_i4036
  %_4042 = load i64, i64* %_len4024
  %_4038 = icmp slt i64 %_4040, %_4042
  br i1 %_4038, label %_body4044, label %_end4045
_body4044:
  %_4048 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_r4030
  %_4050 = load i64, i64* %_i4036
  %_index_ptr4051 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4048, i32 0, i32 1, i64 %_4050
  %_4055 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4025
  %_4058 = load i64, i64* %_i4036
  %_4060 = load i64, i64* %_start4023
  %_4056 = add i64 %_4058, %_4060
  %_index_ptr4061 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4055, i32 0, i32 1, i64 %_4056
  store i64* %_index_ptr4061, i64** %_index_ptr4051
  %_4067 = load i64, i64* %_i4036
  %_4065 = add i64 %_4067, 1
  store i64 %_4065, i64* %_i4036
  br label %_start4043
_end4045:
  %_4071 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_r4030
  %_retval4072 = call i8* @string_of_array({ i64, [0 x i64] }* %_4071)
  %_4073 = load i8, i8* %_retval4072
  ret i8* %_4073
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc4006 = alloca i64
  store i64 %argc, i64* %_argc4006
  %_argv4007 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4007
  %_retval4018 = call i8* @sub(i8** %_index_ptr4014, i64 3, i64 5)
  %_4012 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_argv4007
  %_index_ptr4014 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_4012, i32 0, i32 1, i32 1
  call void @print_string(i8* %_retval4018)
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
